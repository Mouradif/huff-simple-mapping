// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "forge-std/Test.sol";
import "forge-std/interfaces/IERC20.sol";
import "foundry-huff/HuffDeployer.sol";
import "../src/Mapping.sol";
import "../src/IMapping.sol";

contract BaseTest is Test {
    IMapping public huffTarget;
    IMapping public solidityTarget;

    function setUp() public {
        huffTarget = IMapping(HuffDeployer.deploy("Mapping.huff"));
        solidityTarget = IMapping(new Mapping());
    }
}
