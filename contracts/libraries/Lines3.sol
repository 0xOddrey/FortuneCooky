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
library Lines3 {



    function fortune_41() public pure returns (string[2] memory) {
        return ["to get the fruit - one", " must climb the tree"];
    }


    function fortune_42() public pure returns (string[2] memory) {
        return ["Embrace a", " new narrative"] ;
    }


    function fortune_43() public pure returns (string[2] memory) {
        return ["Buy more", " NFTs"] ;
    }


    function fortune_44() public pure returns (string[2] memory) {
        return ["Guilt serves", " no purpose"] ;
    }


    function fortune_45() public pure returns (string[2] memory) {
        return ["The truth is", " not confusing"] ;
    }



    function fortune_46() public pure returns (string[2] memory) {
        return ["Little by little -", " one travels far"] ;
    }


    function fortune_47() public pure returns (string[2] memory) {
        return ["Consistency creates", " Opportunities"] ;
    }



    function fortune_48() public pure returns (string[2] memory) {
        return ["Take nothing", " personally"] ;
    }


    function fortune_49() public pure returns (string[2] memory) {
        return ["Do the thing that", " scares you most"] ;
    }


    function fortune_50() public pure returns (string[2] memory) {
        return ["Make people", " see you"] ;
    }


    function fortune_51() public pure returns (string[2] memory) {
        return ["Self-acceptance", " Self-improvement"] ;
    }


    function fortune_52() public pure returns (string[2] memory) {
        return ["Real Gs move in", " silence - like Lasagna"] ;
    }


    function fortune_53() public pure returns (string[2] memory) {
        return ["This week - try", " something new"] ;
    }


    function fortune_54() public pure returns (string[2] memory) {
        return ["wen lambo?", " soon"] ;
    }


    function fortune_55() public pure returns (string[2] memory) {
        return ["The quiet", " speaks volumes"] ;
    }


    function fortune_56() public pure returns (string[2] memory) {
        return ["Stay hungry" , " Stay foolish"] ;
    }


    function fortune_57() public pure returns (string[2] memory) {
        return ["Stay Hustling", " Stay Humble"] ;
    }


    function fortune_58() public pure returns (string[2] memory) {
        return ["Give light", " Stay lit"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_59() public pure returns (string[2] memory) {
        return ["To be found -", " stop hiding"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_60() public pure returns (string[2] memory) {
        return ["Do first - ", " Talk second"] ;
    }


    function getFortuneLines(uint rand) public pure returns (string[2] memory ) {
        if (rand == 41) {
            return fortune_41();
        } else if (rand == 42) {
            return fortune_42();
        } else if (rand == 43) {
            return fortune_43();
        } else if (rand == 44) {
            return fortune_44();
        } else if (rand == 45) {
            return fortune_45();
        } else if (rand == 46) {
            return fortune_46();
        } else if (rand == 47) {
            return fortune_47();
        } else if (rand == 48) {
            return fortune_48();
        } else if (rand == 49) {
            return fortune_49();
        } else if (rand == 50) {
            return fortune_50();
        } else if (rand == 51) {
            return fortune_51();
        } else if (rand == 52) {
            return fortune_52();
        } else if (rand == 53) {
            return fortune_53();
        } else if (rand == 54) {
            return fortune_54();
        } else if (rand == 55) {
            return fortune_55();
        } else if (rand == 56) {
            return fortune_56();
        } else if (rand == 57) {
            return fortune_57();
        } else if (rand == 58) {
            return fortune_58();
        } else if (rand == 59) {
            return fortune_59();
        } else if (rand == 60) {
            return fortune_60();
        } else {
            return fortune_41();
        } 

    }
}