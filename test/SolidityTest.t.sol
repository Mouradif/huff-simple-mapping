// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "../src/Mapping.sol";
import "../src/IMapping.sol";
import "./BaseTest.sol";

contract SolidityTest is BaseTest {
    function setUp() public {
        target = IMapping(new Mapping());
    }
}
