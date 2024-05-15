interface IMapping {
	function addAmount(address, uint256) external;
	function getAmount(address) external returns (uint256);
}