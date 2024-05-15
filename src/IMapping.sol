// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IMapping {
	function addAmount(address, uint256) external;
	function getAmount(address) external view returns (uint256);
}