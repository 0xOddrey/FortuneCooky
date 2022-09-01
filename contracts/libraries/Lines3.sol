// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

pragma abicoder v2;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
/// @title Accessory SVG generator
library Lines3 {


     /// @dev Accessory N°1 => Classic
    function fortune_41() public pure returns (string[2] memory) {
        return ["Jealousy is just love and", "hate at the same time."];
    }

    /// @dev Accessory N°1 => Classic
    function fortune_42() public pure returns (string[2] memory) {
        return ["If it makes you nervous-", "you are doing it right."] ;
    }


    function fortune_43() public pure returns (string[2] memory) {
        return ["Life without dreaming is", " a life without meaning"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_44() public pure returns (string[2] memory) {
        return ["Nobody is built like you", "you design yourself"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_45() public pure returns (string[2] memory) {
        return ["Real Gs move in silence ", "like lasagna."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_46() public pure returns (string[2] memory) {
        return ["Do not make a wish.", "Make a decision."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_47() public pure returns (string[2] memory) {
        return ["Do the thing that", "scares you most."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_48() public pure returns (string[2] memory) {
        return ["Be less moved by", "the opinion of others."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_49() public pure returns (string[2] memory) {
        return ["Take nothing", "personally."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_50() public pure returns (string[2] memory) {
        return ["Win your mind.", "Win your life."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_51() public pure returns (string[2] memory) {
        return ["Do not take ", "the bait."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_52() public pure returns (string[2] memory) {
        return ["Stay gracious, the best ", "revenge is yo papers"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_53() public pure returns (string[2] memory) {
        return ["The truth is", "not confusing."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_54() public pure returns (string[2] memory) {
        return ["Guilt serves", "no purpose."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_55() public pure returns (string[2] memory) {
        return ["Be better at ", "being wrong."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_56() public pure returns (string[2] memory) {
        return ["Get your" , "hopes up."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_57() public pure returns (string[2] memory) {
        return ["You do not need to", "figure it out right now."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_58() public pure returns (string[2] memory) {
        return ["Go outside ", "and play."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_59() public pure returns (string[2] memory) {
        return ["Do first -", "Talk second."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_60() public pure returns (string[2] memory) {
        return ["You know", "what to do."] ;
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