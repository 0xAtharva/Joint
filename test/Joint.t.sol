// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import "src/Joint.sol";

contract JointTest is Test {
    Joint public j;

    function setUp() public {
        j = new Joint("Joint-V1","J1");
    }

    function test_ready() public {
        assertEq(j.name(), "Joint-V1");
    }

    function test_tokenURI() public {
        assertEq(j.tokenURI(12), "base/12");
    }

}
