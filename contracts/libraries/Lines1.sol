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
library Lines1 {



    function fortune_1() public pure returns (string[2] memory) {
        return ["Nobody can take the", " first step for you"];
    }


    function fortune_2() public pure returns (string[2] memory) {
        return ["Recognize yourself", " in others"] ;
    }


    function fortune_3() public pure returns (string[2] memory) {
        return ["You are worth", " a fortune"] ;
    }


    function fortune_4() public pure returns (string[2] memory) {
        return ["You will find", " a new love"] ;
    }


    function fortune_5() public pure returns (string[2] memory) {
        return ["Take NO for", " an answer"] ;
    }


    function fortune_6() public pure returns (string[2] memory) {
        return ["Go outside", " and play"] ;
    }


    function fortune_7() public pure returns (string[2] memory) {
        return ["Grab your seat", " at the Table"] ;
    }


    function fortune_8() public pure returns (string[2] memory) {
        return ["Do not let yourself", " be rugged"] ;
    }


    function fortune_9() public pure returns (string[2] memory) {
        return ["Be better at", " being wrong"] ;
    }


    function fortune_10() public pure returns (string[2] memory) {
        return ["You are your", " best thing"] ;
    }


    function fortune_11() public pure returns (string[2] memory) {
        return ["This week is a", " big week for you"] ;
    }


    function fortune_12() public pure returns (string[2] memory) {
        return ["Old ways do not", " bring new results"] ;
    }


    function fortune_13() public pure returns (string[2] memory) {
        return ["Try and fail - ", " but never fail to try"] ;
    }


    function fortune_14() public pure returns (string[2] memory) {
        return ["You will find your", " calling this week"] ;
    }


    function fortune_15() public pure returns (string[2] memory) {
        return ["Follow what", " calls you"] ;
    }


    function fortune_16() public pure returns (string[2] memory) {
        return ["Accept the", "closed door"] ;
    }


    function fortune_17() public pure returns (string[2] memory) {
        return ["It is about", " Community - Baby"] ;
    }


    function fortune_18() public pure returns (string[2] memory) {
        return ["Do one thing", " WELL"] ;
    }


    function fortune_19() public pure returns (string[2] memory) {
        return ["Patience is your ally", " Do not worry"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_20() public pure returns (string[2] memory) {
        return ["You are", " EARLY"] ;
    }


    function getFortuneLines(uint rand) public pure returns (string[2] memory ) {
        if (rand == 1) {
            return fortune_1();
        } else if (rand == 2) {
            return fortune_2();
        } else if (rand == 3) {
            return fortune_3();
        } else if (rand == 4) {
            return fortune_4();
        } else if (rand == 5) {
            return fortune_5();
        } else if (rand == 6) {
            return fortune_6();
        } else if (rand == 7) {
            return fortune_7();
        } else if (rand == 8) {
            return fortune_8();
        } else if (rand == 9) {
            return fortune_9();
        } else if (rand == 10) {
            return fortune_10();
        } else if (rand == 11) {
            return fortune_11();
        } else if (rand == 12) {
            return fortune_12();
        } else if (rand == 13) {
            return fortune_13();
        } else if (rand == 14) {
            return fortune_14();
        } else if (rand == 15) {
            return fortune_15();
        } else if (rand == 16) {
            return fortune_16();
        } else if (rand == 17) {
            return fortune_17();
        } else if (rand == 18) {
            return fortune_18();
        } else if (rand == 19) {
            return fortune_19();
        } else if (rand == 20) {
            return fortune_20();
        } else {
            return fortune_1();
        } 

    }
}