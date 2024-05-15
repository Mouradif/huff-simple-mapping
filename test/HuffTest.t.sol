// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "foundry-huff/HuffDeployer.sol";
import "./BaseTest.sol";
import "../src/IMapping.sol";

contract HuffTest is BaseTest {
    function setUp() public {
        target = IMapping(HuffDeployer.deploy("Mapping"));
    }
}
