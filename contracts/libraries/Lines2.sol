// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

pragma abicoder v2;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
/// @title Accessory SVG generator
library Lines2 {


     /// @dev Accessory N°1 => Classic
    function fortune_21() public pure returns (string[2] memory) {
        return ["Art ", "is utility"];
    }

    /// @dev Accessory N°1 => Classic
    function fortune_22() public pure returns (string[2] memory) {
        return ["The flippening", "is coming"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_23() public pure returns (string[2] memory) {
        return ["wen lambo?", "soon"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_24() public pure returns (string[2] memory) {
        return ["I see Airdrops ", "in your future"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_25() public pure returns (string[2] memory) {
        return ["You are ", "gonna make it"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_26() public pure returns (string[2] memory) {
        return ["Buy more", "NFTs"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_27() public pure returns (string[2] memory) {
        return ["Give Alpha ", "Get Alpha "] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_28() public pure returns (string[2] memory) {
        return ["The future is ", "multi-chain"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_29() public pure returns (string[2] memory) {
        return ["Recognize yourself", " in others."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_30() public pure returns (string[2] memory) {
        return ["Trust the wait", "Enjoy not knowing."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_31() public pure returns (string[2] memory) {
        return ["It is not your job", "to fix people."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_32() public pure returns (string[2] memory) {
        return ["Make people ", "see you."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_33() public pure returns (string[2] memory) {
        return ["Tap into", "your magic."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_34() public pure returns (string[2] memory) {
        return ["Everything that is", "was first a dream."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_35() public pure returns (string[2] memory) {
        return ["Keep your next", "move quiet."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_36() public pure returns (string[2] memory) {
        return ["Take no for", "an answer."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_37() public pure returns (string[2] memory) {
        return ["To be found - ", "stop hiding."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_38() public pure returns (string[2] memory) {
        return ["Enter unknown", "territory."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_39() public pure returns (string[2] memory) {
        return ["A winner does not", "quit on themselves"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_40() public pure returns (string[2] memory) {
        return ["The silence", "speaks volumes."] ;
    }


    function getFortuneLines(uint rand) public pure returns (string[2] memory ) {
        if (rand == 21) {
            return fortune_21();
        } else if (rand == 22) {
            return fortune_22();
        } else if (rand == 23) {
            return fortune_23();
        } else if (rand == 24) {
            return fortune_24();
        } else if (rand == 25) {
            return fortune_25();
        } else if (rand == 26) {
            return fortune_26();
        } else if (rand == 27) {
            return fortune_27();
        } else if (rand == 28) {
            return fortune_28();
        } else if (rand == 29) {
            return fortune_29();
        } else if (rand == 30) {
            return fortune_30();
        } else if (rand == 31) {
            return fortune_31();
        } else if (rand == 32) {
            return fortune_32();
        } else if (rand == 33) {
            return fortune_33();
        } else if (rand == 34) {
            return fortune_34();
        } else if (rand == 35) {
            return fortune_35();
        } else if (rand == 36) {
            return fortune_36();
        } else if (rand == 37) {
            return fortune_37();
        } else if (rand == 38) {
            return fortune_38();
        } else if (rand == 39) {
            return fortune_39();
        } else if (rand == 40) {
            return fortune_40();
        } else {
            return fortune_21();
        } 

    }
}