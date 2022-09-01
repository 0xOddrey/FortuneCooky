// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

pragma abicoder v2;
import "@openzeppelin/contracts/utils/Strings.sol";
import "./interfaces/ICookyDescriptor.sol";
import "./libraries/Base64.sol";
import  "./libraries/Lines1.sol";
import  "./libraries/Lines2.sol";
import  "./libraries/Lines3.sol";

contract CookyDescriptor is ICookyDescriptor {


    uint public constant MAX = uint(0) - uint(1); // using underflow to generate the maximum possible value
    uint public constant SCALE = 999;
    uint public constant SCALIFIER = MAX / SCALE;
    uint public constant OFFSET = 100; 

    string[] one = ["#f3eccb", "#ffd399", "#accce4", "#b4bcd7", "#cbaf2e", "#f98e00", "#3d86bc", "#5668a2", "#c6c3c2", "#b5b0af"];
    string[] two = ["#f3eccb", "#ffd399", "#accce4", "#b4bcd7", "#cbaf2e", "#f98e00", "#3d86bc", "#5668a2", "#c6c3c2", "#b5b0af"];
    string[] three = ["#f3eccb", "#ffd399", "#accce4", "#b4bcd7", "#cbaf2e", "#f98e00", "#3d86bc", "#5668a2", "#c6c3c2", "#b5b0af"];


    function _getfortuneText(
        string memory line1,
        string memory line2
    ) internal pure returns (string memory)
        {
        return
            (
                string(
                abi.encodePacked( 
                    "<text x='48%' y='50%' transform='rotate(-3)' dominant-baseline='middle' text-anchor='middle'>",
                    line1,
                    "</text><text x='48%' y='54%' transform='rotate(-3)' dominant-baseline='middle' text-anchor='middle'>",
                    line2,
                    "</text>"
                    )));
        }
    
    function _getCookyImage() 
        internal pure returns (string memory)
        {
        return
            (
                string(
                abi.encodePacked(
                "<path fill='url(#a)' d='M0 0h400v400H0z'/><path d='M382.128 235.826s25.013-2.859 6.023-22.615c0 0-41.259-34.113-70.283-54.26-12.356-8.576-13.342-12.57-16.836-14.666l.085.254s-.04-1.378-1.814 14.167c-2.315 20.273-10.532 37.442-20.938 64.213-6.133 15.777-13.103 29.622-13.103 29.622s-.772 2.257 1.605 3.158c2.377.9 6.882.097 6.882.097s70.512-6.359 110.516-20.446' fill='#de8726' fill-rule='evenodd' stroke='#de8726' stroke-width='.644' vectornator:layerName='Cookie R.'/><g fill-rule='evenodd' stroke-width='.644' vectornator:layerName='Right FC'><path d='M266.44 255.807s33.056-18.237 37.676-21.078c9.174-5.638 19.531-16.478 38.651-17.825 13.983-.985 44.565 7.293 50.759 12.408 0 0 2.824 2.849-9.154 6.71-11.98 3.861-34.717 8.704-50.085 11.879-18.54 3.829-43.825 6.781-57.265 7.815-9.661.744-10.62.055-10.62.055' fill='#f7b558' opacity='.68' stroke='#f7b558'/><path d='M319.204 239.838c-19.135 7.778-24.635 1.104-24.635 1.104-16.418-35.717 15.994-86.931 15.994-86.931-2.261-1.914-9.556-10.336-9.556-10.336s-1.581 22.292-9.203 42.353c-6.836 17.991-12.117 35.737-25.535 64.901 0 0-3.4 4.215 1.7 5.484 0 0 41.539-3.259 71.35-9.302 29.565-5.992 46.905-12.215 46.905-12.215 15.357-3.86 6.425-16.165 6.425-16.165-9.02 13.333-22.936 11.023-22.936 11.023-32.961-1.482-50.489 10.099-50.489 10.099' fill='#ab6d40' opacity='.531' stroke='#ab6d40'/></g><path d='M386.101 211.403s-14.984 1.742-39.09-17.116c-12.193-9.538-39.474-31.943-46.182-50.896 0 0-1.886-1.654 6.485 6.78 7.291 7.347 24.717 18.251 35.85 27.065a18620.264 18620.264 0 0 1 42.913 34.108' fill='#faebce' fill-rule='evenodd' opacity='.506' stroke='#faebce' stroke-width='.644' vectornator:layerName='Off white fc'/><g vectornator:layerName='Rim right fc' fill-rule='evenodd' stroke-width='.644'><path d='M298.062 142.812c-.682.125-1.509.445-2.468 1.063 0 0-32.336 26.948-36.406 30.219-.188.15-26.813 27.192 6.593 81.477.029-.107 17.62-40.374 25.946-66.53 8.408-26.415 9.211-45.26 9.211-45.26s-.829-1.341-2.876-.969Z' fill='#f7b558' opacity='.826' stroke='#f7b558'/><path d='M256.43 184.071c5.271-7.807 40.218-37.012 40.218-37.012s-1.126 23.833-11.042 44.838c-10.343 21.907-20.652 54.328-20.652 54.328s-8.312-15.266-11.044-28.486c-2.731-13.22-2.047-27.376 2.539-33.719' fill='#b4784c' opacity='.715' stroke='#b4784c'/></g><g fill-rule='evenodd' stroke='#bc5b08' stroke-width='.644' vectornator:layerName='Details R'><path d='M323.98 167.011s-1.046 5.245-6.805 6.172m12.337-.56s1.628 2.82-1.74 5.211m31.15 17.516s1.941 4.204-5.309 8.16m11.296-4.286s.266 4.645-4.539 6.287m7.928-3.315s2.004 4.872-2.485 8.355m-70.149 25.378s5.785-1.055 5.718 5.062' fill='none'/><path d='M332.212 193.476c0-.443.293-.803.653-.803.361 0 .653.36.653.803 0 .443-.292.803-.653.803-.36 0-.653-.36-.653-.803Zm18.298-3.917c0-.592.275-1.072.614-1.072.34 0 .614.48.614 1.072 0 .591-.274 1.071-.614 1.071-.339 0-.614-.48-.614-1.071Zm-11.608-7.582c0-.684.312-1.238.698-1.238.386 0 .698.554.698 1.238 0 .683-.312 1.237-.698 1.237-.386 0-.698-.554-.698-1.237Zm-20.436-.655c0-.932.399-1.687.891-1.687s.891.755.891 1.687c0 .931-.399 1.686-.891 1.686s-.891-.755-.891-1.686Zm-35.552 59.567c0-1.376.442-2.492.988-2.492.545 0 .987 1.116.987 2.492 0 1.377-.442 2.492-.987 2.492-.546 0-.988-1.115-.988-2.492Zm-23.718.687c0-1.003.46-1.816 1.028-1.816.567 0 1.027.813 1.027 1.816 0 1.003-.46 1.816-1.027 1.816-.568 0-1.028-.813-1.028-1.816Zm16.874-19.568c0-.756.086-1.369.192-1.369.106 0 .192.613.192 1.369 0 .757-.086 1.37-.192 1.37-.106 0-.192-.613-.192-1.37Z' fill='#bc5b08' opacity='.531'/></g><path d='m12.429 217.947-2.509 2.165c-18.46 18.892 7.285 21.462 7.285 21.462 22.686 5.712 65.734 11.547 83.25 13.459 32.513 3.551 32.51-.839 32.51-.839l.077-.413-37.046-108.294-.196-.223s-2.25-1.595-9.135 7.131l1.514-1.967L9.92 220.112' fill='#de8726' fill-rule='evenodd' stroke='#de8726' stroke-width='.644' vectornator:layerName='Cookie L.'/><g fill-rule='evenodd' stroke-width='.644' vectornator:layerName='Left FC'><path d='M71.94 228.983c-26.76-13.619-46.83-1.532-46.83-1.532s36.906 5.843 57.326 25.522c0 0 27.691 4.813 40.669 3.664 12.539-1.111 11.012-2.56 11.012-2.56s-35.51-6.46-62.301-25.114' fill='#f7b558' opacity='.715' stroke='#f7b558'/><path d='M88.397 253.699C27.53 207.016 3.307 234.779 4.26 235.3c.247.135-.423 3.795 14.809 7.346 22.428 5.23 69.567 11.077 69.567 11.077' fill='#ab6d40' opacity='.525' stroke='#b4784c'/></g><path d='M10.875 219.115c46.283-4.05 82.296-73.54 82.296-73.54h.048l-82.335 73.562' fill='#faebce' fill-rule='evenodd' opacity='.506' stroke='#faebce' stroke-width='.644' vectornator:layerName='Off white fc L'/><g fill-rule='evenodd' stroke-width='.644' vectornator:layerName='L fc rim'><path d='m109.472 154.876-.095-.203c-30.528-26.886-9.19 11.063-9.19 11.063s8.98 17.205 16.29 45.039c4.805 18.292 6.522 20.25 7.421 26.857 0 0 8.831 42.109 19.128-5.306l6.744-40.533c.576-14.647-40.458-36.907-40.458-36.907' fill='#f7b558' opacity='.833' stroke='#f7b558'/><path d='M146.775 188.408s-2.747 25.776-7.144 38.782c-4.595 13.588-5.408 19.351-5.408 19.351s-5.929-20.513-13.443-45.851c-7.263-24.491-20.877-50.395-20.877-50.395s9.95 7.739 23.886 18.939c10.669 8.574 22.986 19.174 22.986 19.174Z' fill='#b4784c' opacity='.715' stroke='#b4784c'/></g><g fill-rule='evenodd' stroke='#bc5b08' stroke-width='.644' vectornator:layerName='Details L.'><path d='M110.403 225.516s8.596 6.886.752 15.576m-35.508-59.234s-.113-7.794-10.448-6.653M41.55 211.248s-3.18-5.113-9.851-5.398m-6.215 15.171s-2.024-4.918-7.835-4.346m87.96 12.1s3.789.496 1.709 4.934' fill='none'/><path d='M102.276 248.056c0-.753.556-1.363 1.243-1.363s1.244.61 1.244 1.363c0 .754-.557 1.364-1.244 1.364-.687 0-1.243-.61-1.243-1.364Zm-47.934-63.463c0-1.066.499-1.93 1.115-1.93s1.115.864 1.115 1.93c0 1.066-.5 1.93-1.115 1.93-.616 0-1.115-.864-1.115-1.93Zm-9.889 8.701c0-1.175.33-2.128.736-2.128.407 0 .736.953.736 2.128 0 1.175-.33 2.127-.736 2.127-.407 0-.736-.952-.736-2.127Zm51.052 37.708c0-1.092.396-1.977.885-1.977s.885.885.885 1.977-.396 1.977-.885 1.977-.885-.885-.885-1.977Zm-4.404 13.719c0-1.15.299-2.082.667-2.082.368 0 .666.932.666 2.082s-.298 2.082-.666 2.082c-.368 0-.667-.932-.667-2.082ZM25.81 230.038c0-.946.318-1.713.711-1.713.393 0 .71.767.71 1.713 0 .946-.317 1.713-.71 1.713-.393 0-.711-.767-.711-1.713Zm90.313 14.734c0-.965.375-1.747.838-1.747.462 0 .838.782.838 1.747 0 .965-.376 1.747-.838 1.747-.463 0-.838-.782-.838-1.747Zm6.932-77.907c0-.314.724-.568 1.616-.568.892 0 1.615.254 1.615.568 0 .314-.723.568-1.615.568s-1.616-.254-1.616-.568Zm-6.828 33.629c0-1.158.13-2.098.289-2.098.16 0 .29.94.29 2.098 0 1.159-.13 2.098-.29 2.098-.159 0-.289-.939-.289-2.098Zm8.531 26.177c0-.638.163-1.154.363-1.154.201 0 .363.516.363 1.154 0 .637-.162 1.153-.363 1.153-.2 0-.363-.516-.363-1.153Zm-26.104-71.305c0-.388.097-.703.216-.703s.215.315.215.703c0 .389-.096.704-.215.704-.12 0-.216-.315-.216-.704Zm-27.432 73.642c0-.958.47-1.734 1.05-1.734.58 0 1.05.776 1.05 1.734 0 .957-.47 1.734-1.05 1.734-.58 0-1.05-.777-1.05-1.734Z' fill='#bc5b08' opacity='.601'/></g><path d='M292.273 173.396c-13.549-5.062-176.697 11.953-176.697 11.953l13.071 42.176c12.402-3.605 147.732-13.556 147.732-13.556s7.668-17.093 11.405-26.884c3.738-9.792 4.552-13.567 4.552-13.567' fill='#fff' fill-rule='evenodd' stroke='#f3f1f9' stroke-width='.644' vectornator:layerName='FC Paper'/>")));
        }

    function _getBackground(
        string memory color1,
        string memory color2,
        string memory color3
    ) internal pure returns (string memory)
        {
        return
            (
                string(
                abi.encodePacked(
                    "<radialGradient id='a' cx='200' cy='-100' r='290.025' gradientTransform='matrix(1 0 0 -1 0 76)' gradientUnits='userSpaceOnUse'><stop offset='.2' style='stop-color:",
                    color1,
                    "'><animate attributeName='offset' dur='50s' values='0.01;0.4;0.01' repeatCount='indefinite'/></stop><stop offset='.8' style='stop-color:",
                    color2,
                    "'><animate attributeName='offset' dur='50s' values='0.30;0.8;0.30' repeatCount='indefinite'/></stop><stop offset='1' style='stop-color:",
                    color3,
                    "'><animate attributeName='offset' dur='50s' values='0.68;1;0.68' repeatCount='indefinite'/></stop></radialGradient>"
                    )));
        }

 
    function _getFortune(uint256 tokenId, uint256 tseed, uint256 cseed) public override pure returns(string[2] memory) {
        uint256 randy = tseed ** cseed;
        uint256 seed = uint256(keccak256(abi.encodePacked('NANUPANDA_LABS', Strings.toString(randy), Strings.toString(tseed), Strings.toString(cseed), Strings.toString(tokenId))));
        uint scaled = seed % 60;
        if (scaled >= 41) {
            return Lines3.getFortuneLines(scaled);
        } else if (scaled >= 21) {
            return Lines2.getFortuneLines(scaled);
        } else {
            return Lines1.getFortuneLines(scaled);
        }
        
    }    


    function _buildFortuneCooky(uint256 tokenId, uint256 tseed, uint256 cseed) public view override returns (string memory) {
        uint256 iOne = tseed % 10;
        uint256 iTwo = tseed % 100 / 10;
        uint256 iThree = tseed % 1000 / 100;
        string[2] memory lines = _getFortune(tokenId, tseed, cseed);
        string memory textLines = _getfortuneText(lines[0], lines[1]);
        string memory description = string(abi.encodePacked(lines[0], " ", lines[1]));
        string memory cooky = _getCookyImage();
        string memory background = _getBackground(one[iOne], two[iTwo], three[iThree]);
        string memory finalSvg = string(abi.encodePacked("<svg stroke-miterlimit='10' style='fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round' viewBox='0 0 400 400' xml:space='preserve' xmlns='http://www.w3.org/2000/svg' xmlns:vectornator='http://vectornator.io'>", background, cooky, textLines, "</svg>"));
        string memory json = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(
                        '{"name": "Fortune Cooky #',
                        Strings.toString(tokenId),
                        '", "description": "',
                        description,
                        '", "attributes": [{"display_type": "date", "trait_type": "Fortune Date", "value": "',
                        Strings.toString(block.timestamp),
                        '"}], "image": "data:image/svg+xml;base64,',
                        Base64.encode(bytes(finalSvg)),
                        '"}'
                    )
                )
            )
        );

        return string(
            abi.encodePacked("data:application/json;base64,", json)
        );
    }  

}