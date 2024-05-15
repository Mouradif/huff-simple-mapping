// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

contract Mapping {
    mapping(address => uint256) private amountMap;

    function setAmount(address addr, uint256 amt) external {
        amountMap[addr] = amt;
    }

    function getAmount(address addr) external view returns(uint256) {
        return amountMap[addr];
    }
}