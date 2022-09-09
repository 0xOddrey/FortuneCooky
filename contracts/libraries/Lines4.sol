// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

/*********************************  
                 %%#%                                    %(#%                  
               %%(((%#((%(                            @%(((#(((%%%              
            %##((((((%%((((%%              @@@@@@@@@@@@@@@@%(((((%#%%           
         %%%%(((((((((%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%(((((((((%%%%        
      %%%%%((((((((((((%@@@@@ FORTUNE COOKY NFT @@@@@@@@@%(((((((((((((%%#%     
    %%%(((((((((((((((((%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%(((((((((((((((((((((& 
 (((((########((((((((((##@@@@@@#                  #(((%((((((((##############((
 ((((((((((((#####(((((((%%(%                      %#(%((((((####(((((((((((#   
           ((((((########(%%                         %(((((((((((((  
*********************************/


pragma abicoder v2;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
/// @title Accessory SVG generator
library Lines4 {



    function fortune_61() public pure returns (string[2] memory) {
        return ["Enter unknown", " territory"];
    }


    function fortune_62() public pure returns (string[2] memory) {
        return ["Do not take", " the bait"] ;
    }


    function fortune_63() public pure returns (string[2] memory) {
        return ["Be less moved by", " the opinion of others"] ;
    }



    function fortune_64() public pure returns (string[2] memory) {
        return ["Get lost in", " the right direction"] ;
    }



    function fortune_65() public pure returns (string[2] memory) {
        return ["Say yes -", " then figure it out"] ;
    }


    function fortune_66() public pure returns (string[2] memory) {
        return ["Ethereum is going", " to 20k"] ;
    }



    function fortune_67() public pure returns (string[2] memory) {
        return ["There is always", " a next level"] ;
    }


    function fortune_68() public pure returns (string[2] memory) {
        return ["It is time", " to Build"] ;
    }


    function fortune_69() public pure returns (string[2] memory) {
        return ["It is not your job", " to fix people"] ;
    }


    function fortune_70() public pure returns (string[2] memory) {
        return ["CPG Club", " to the Moon"] ;
    }


    function fortune_71() public pure returns (string[2] memory) {
        return ["Give Grace", " to Yourself"] ;
    }


    function fortune_72() public pure returns (string[2] memory) {
        return ["Everything that is ", " was first a dream"] ;
    }


    function fortune_73() public pure returns (string[2] memory) {
        return ["You know", " what to do"] ;
    }


    function fortune_74() public pure returns (string[2] memory) {
        return ["Not all those", " who wander are lost."] ;
    }


    function fortune_75() public pure returns (string[2] memory) {
        return ["Win your mind", " Win your life"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_76() public pure returns (string[2] memory) {
        return ["Big journeys begin" , " with a single step"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_77() public pure returns (string[2] memory) {
        return ["They can win with", " you or wacth you win"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_78() public pure returns (string[2] memory) {
        return ["Tap into", " your magic"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_79() public pure returns (string[2] memory) {
        return ["Make each day", " your masterpiece"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_80() public pure returns (string[2] memory) {
        return ["Strengthen", " yourself"] ;
    }



    function getFortuneLines(uint rand) public pure returns (string[2] memory ) {
        if (rand == 61) {
            return fortune_61();
        } else if (rand == 62) {
            return fortune_62();
        } else if (rand == 63) {
            return fortune_63();
        } else if (rand == 64) {
            return fortune_64();
        } else if (rand == 65) {
            return fortune_65();
        } else if (rand == 66) {
            return fortune_66();
        } else if (rand == 67) {
            return fortune_67();
        } else if (rand == 68) {
            return fortune_68();
        } else if (rand == 69) {
            return fortune_69();
        } else if (rand == 70) {
            return fortune_70();
        } else if (rand == 71) {
            return fortune_71();
        } else if (rand == 72) {
            return fortune_72();
        } else if (rand == 73) {
            return fortune_73();
        } else if (rand == 74) {
            return fortune_74();
        } else if (rand == 75) {
            return fortune_75();
        } else if (rand == 76) {
            return fortune_76();
        } else if (rand == 77) {
            return fortune_77();
        } else if (rand == 78) {
            return fortune_78();
        } else if (rand == 79) {
            return fortune_79();
        } else if (rand == 80) {
            return fortune_80();
        } else {
            return fortune_61();
        } 
    }
}