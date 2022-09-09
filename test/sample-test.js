const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("FortuneCooky", function () {
  let owner;
  let _to;
  let _to2;
  let mockMinter;

  beforeEach(async function () {
    [
      owner,
        _to,
        _to2,
      ] = await ethers.getSigners();
      const line1 = await ethers.getContractFactory("Lines1")
      const line2 = await ethers.getContractFactory("Lines2")
      const line3 = await ethers.getContractFactory("Lines3")
      const line4 = await ethers.getContractFactory("Lines4")
      const line1D = await line1.deploy();
      const line2D = await line2.deploy();
      const line3D = await line3.deploy();
      const line4D = await line4.deploy();
      const Builder = await ethers.getContractFactory("CookyDescriptor", {
        libraries: {
          Lines1: line1D.address,
          Lines2: line2D.address,
          Lines3: line3D.address,
          Lines4: line4D.address
        },});
      mockBuilder = await Builder.deploy();
      console.log(mockBuilder.address);
      const Minter = await ethers.getContractFactory("FortuneCooky");
      mockMinter = await Minter.deploy(owner.address, mockBuilder.address);
  });


  it("SUCCESS - Owner Mint", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(_to.address, 10);
    expect(await mockMinter.balanceOf(_to.address)).to.equal(10);
  });

  it("FAILURE - Owner Mint", async function () {
    await expect(mockMinter.connect(_to).ownerMintTransfer(_to.address, 10)).to.be.revertedWith("Ownable: caller is not the owner'");
  });

  it("SUCCESS - Payable Mint Choose Your Price", async function () {
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000"});
    tx = await minted.wait()
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.balanceOf(_to.address)).to.equal(1);
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    expect(await mockMinter.getCurrentPriceAvg()).to.equal(ethers.BigNumber.from("100000000000")); // 100000000000 divided by 1
  });

  it("SUCCESS - Payable Mint Choose Your Price | Zero Price", async function () {
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "0"});
    tx = await minted.wait()
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.balanceOf(_to.address)).to.equal(1);
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("0")); // 100000000000 divided by 200
    expect(await mockMinter.getCurrentPriceAvg()).to.equal(ethers.BigNumber.from("0")); // 100000000000 divided by 1
  });

  it("SUCCESS - Payable Mint Set Price", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 199);
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000"});
    tx = await minted.wait()
    let tester = await mockMinter.getPrice();
    console.log("Get Price", tester)
    let tester1 = await mockMinter.getCurrentPriceAvg();
    console.log("Get AVg Price", tester1)
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    expect(await mockMinter.getCurrentPriceAvg()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    await mockMinter.connect(_to).mint(_to.address, { value: "500000000"});

  });

  it("SUCCESS - Payable Mint Set Price | Zero Price", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 199);
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "0"});
    tx = await minted.wait()
    let tester = await mockMinter.getPrice();
    console.log("Get Price", tester)
    let tester1 = await mockMinter.getCurrentPriceAvg();
    console.log("Get AVg Price", tester1)
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("0")); // 100000000000 divided by 200
    expect(await mockMinter.getCurrentPriceAvg()).to.equal(ethers.BigNumber.from("0")); // 100000000000 divided by 200
    await mockMinter.connect(_to).mint(_to.address, { value: "0"});

  });

  it("FAILURE - Payable Mint Set Price | Insufficient funds", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 199);
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000"});
    tx = await minted.wait()
    let tester = await mockMinter.getPrice();
    console.log("Get Price", tester)
    let tester1 = await mockMinter.getCurrentPriceAvg();
    console.log("Get AVg Price", tester1)
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    expect(await mockMinter.getCurrentPriceAvg()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    await mockMinter.connect(_to).mint(_to.address, { value: "500000000"});
    await expect(mockMinter.connect(_to).mint(_to.address, { value: "400000000"})).to.be.revertedWith("Insufficient funds");
  });

  it("SUCCESS - Payable Mint Set Price | Max limit 1111", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 199);
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000"});
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 500);
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 300);
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 109);
    tx = await minted.wait()
    let tester = await mockMinter.getPrice();
    console.log("Get Price", tester)
    let tester1 = await mockMinter.getCurrentPriceAvg();
    console.log("Get AVg Price", tester1)
    console.log("TokenId", tx.events[0].args.tokenId)
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    await mockMinter.connect(_to).mint(_to.address, { value: "500000000"});
    await expect(mockMinter.connect(_to).mint(_to.address, { value: "500000000"})).not.to.be.reverted;
  });

  it("FAILURE - Payable Mint Set Price | Max limit 1112", async function () {
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 199);
    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000"});
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 500);
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 300);
    await mockMinter.connect(owner).ownerMintTransfer(owner.address, 110);
    tx = await minted.wait()
    let tester = await mockMinter.getPrice();
    console.log("Get Price", tester)
    let tester1 = await mockMinter.getCurrentPriceAvg();
    console.log("Get AVg Price", tester1)
    console.log(tx.events[0].args.tokenId)
    expect(await mockMinter.getPrice()).to.equal(ethers.BigNumber.from("500000000")); // 100000000000 divided by 200
    await mockMinter.connect(_to).mint(_to.address, { value: "500000000"});
    await expect(mockMinter.connect(_to).mint(_to.address, { value: "500000000"})).to.be.revertedWith("Max limit");
  });

  it("SUCCESS - Payable Mint", async function () {

    let minted = await mockMinter.connect(_to).mint(_to.address, { value: "100000000000000000"});
    tx = await minted.wait()
    console.log("Token Id", tx.events[0].args.tokenId)
    let testTime = await mockMinter.getNextGenDate();

    let tester = await mockMinter.tokenURI(1);

    await ethers.provider.send("evm_mine", [1663446131]);
    let tester4 = await mockMinter.tokenURI(1);



  });

});





