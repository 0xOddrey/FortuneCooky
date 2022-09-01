// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


import "./libraries/Base64.sol";
import "./interfaces/ICookyDescriptor.sol";

contract FortuneCooky is ERC721URIStorage,  Ownable {

    using SafeMath for uint256;
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    uint256 public constant MAX_TOKENS = 5000;
    uint256 public constant MAX_MINT = 10;
    uint256 private launchDate;


    address private transferWallet;

    uint256 public TOTAL_PAID;

    ICookyDescriptor iCookyContract;


    mapping(uint256 => uint) public tSeeds;

    event NewFortuneCooky(uint256 indexed id);

    event NewFortune(uint256 indexed id);


    constructor(
        address _transferWallet, 
        address _buildCooky
    ) ERC721("FortuneCooky", "COOKY") {
        transferWallet = _transferWallet;
        launchDate = block.timestamp;
        iCookyContract = ICookyDescriptor(_buildCooky);
    }


    function totalSupply() external view returns (uint256) {
        return _tokenIdCounter.current();
    }


    function getContractSeed() public view returns (uint256) {
        uint256 difference = block.timestamp - launchDate;
        return (difference/604800) + 1;
    }

    function getTokenSeed(uint256 tokenId) public view returns(uint256) {
        return tSeeds[tokenId];
    }

    function generateSeed(address _to, uint256 tokenId) internal {

        uint256 seed = uint256(keccak256(abi.encodePacked('NANUPANDA_LABS', _to, blockhash(block.number - 1), block.timestamp, Strings.toString(tokenId))));
        uint scaled = seed % 999;
        if( 100 > scaled ){
            tSeeds[tokenId] = scaled + 100; 
        } else {
            tSeeds[tokenId] = scaled;
        }
       
    }

    function getPrice() public view returns (uint256) {
        return TOTAL_PAID/200;
    }

    function getCurrentPriceAvg() external view returns (uint256) {
        return TOTAL_PAID/_tokenIdCounter.current();
    }

    function mint(address _to, uint256 _count) external payable  {
        require(_count > 0, "Mint count should be greater than zero");
        require(_count <= MAX_MINT, "Exceeds max items");
        require(_tokenIdCounter.current() + _count <= MAX_TOKENS, "Max limit");
        if (_tokenIdCounter.current() < 201) {
           TOTAL_PAID += msg.value;
        } else {
            require(msg.value >= getPrice() * _count, "Insufficient funds");
        }
        for (uint256 i = 0; i < _count; i++) {
            _mintOneItem(_to);
        }
    }

    function ownerMintTransfer(address _to, uint256 _count) public  onlyOwner {
        require(_count > 0, "Mint count should be greater than zero");
        require(_count <= MAX_MINT, "Exceeds max items");
        require(_tokenIdCounter.current() + _count <= MAX_TOKENS, "Max limit");
 
        for (uint256 i = 0; i < _count; i++) {
            _mintOneItem(_to);
        }
    }

    function _mintOneItem(address _to) private {
        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        generateSeed(_to, tokenId);
        _mint(_to, tokenId);
    }


    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_exists(tokenId), 'Cooky: URI query for nonexistent token');
        return iCookyContract._buildFortuneCooky(tokenId, getTokenSeed(tokenId), getContractSeed());
    }

    function getFortuneLines(uint256 tokenId) public view returns (string[2] memory) {
        require(_exists(tokenId), 'Cooky: URI query for nonexistent token');
        return iCookyContract._getFortune(tokenId, getTokenSeed(tokenId), getContractSeed());
    }

    function withdrawAll() public payable onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0);
        _withdraw(transferWallet, balance);
    }

    function _withdraw(address _address, uint256 _amount) private {
        (bool success, ) = _address.call{ value: _amount }("");
        require(success, "Transfer failed.");
    }



}