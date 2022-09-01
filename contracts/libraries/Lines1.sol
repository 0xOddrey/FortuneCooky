// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

pragma abicoder v2;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
/// @title Accessory SVG generator
library Lines1 {


     /// @dev Ethereum is going to 20k
    function fortune_1() public pure returns (string[2] memory) {
        return ["Ethereum is going", "to 20k"];
    }

    /// @dev Accessory N°1 => Classic
    function fortune_2() public pure returns (string[2] memory) {
        return ["Your road to glory will be", "rocky - but fullfilling"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_3() public pure returns (string[2] memory) {
        return ["Patience is your ally", "Do not worry!"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_4() public pure returns (string[2] memory) {
        return ["Do not worry about money", "best things are in ETH"] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_5() public pure returns (string[2] memory) {
        return ["Do not pursue happiness", "- create it."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_6() public pure returns (string[2] memory) {
        return ["All things are difficult", "before they are easy."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_7() public pure returns (string[2] memory) {
        return ["Fear is interest paid on a", "debt you may not owe."] ;
    }

    /// @dev Accessory N°1 => Classic
    function fortune_8() public pure returns (string[2] memory) {
        return ["to get the fruit - one", "must climb the tree."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_9() public pure returns (string[2] memory) {
        return ["Big journeys begin", "with a single step. "] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_10() public pure returns (string[2] memory) {
        return ["CPG Club", "to the Moon!"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_11() public pure returns (string[2] memory) {
        return ["Salt and sugar", "look the same."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_12() public pure returns (string[2] memory) {
        return ["Little by little - ", "one travels far"] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_13() public pure returns (string[2] memory) {
        return ["Not all those", "who wander are lost."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_14() public pure returns (string[2] memory) {
        return ["You are your", "best thing."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_15() public pure returns (string[2] memory) {
        return ["Stay hungry.", "Stay foolish."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_16() public pure returns (string[2] memory) {
        return ["Try and fail - ", "but never fail to try."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_17() public pure returns (string[2] memory) {
        return ["Say yes - ", "then figure it out."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_18() public pure returns (string[2] memory) {
        return ["Embrace a ", "new narrative."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_19() public pure returns (string[2] memory) {
        return ["Get lost in", "the right direction."] ;
    }
    /// @dev Accessory N°1 => Classic
    function fortune_20() public pure returns (string[2] memory) {
        return ["Stop saying yes to things", "you do not want to do."] ;
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