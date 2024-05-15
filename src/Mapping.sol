// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "./IMapping.sol";

contract Mapping is IMapping {
    mapping(address => uint256) private amountMap;

    function addAmount(address addr, uint256 amt) external {
        amountMap[addr] += amt;
    }

    function getAmount(address addr) external view returns(uint256) {
        return amountMap[addr];
    }
}