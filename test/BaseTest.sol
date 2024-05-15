// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "forge-std/Test.sol";
import "../src/IMapping.sol";

abstract contract BaseTest is Test {
    IMapping public target;

    function testRevertFallback() public {
        vm.expectRevert();
        address(target).call{ value: 0 }("");
    }

    function testRevertReceive() public {
        vm.expectRevert();
        address(target).call{ value: 1 }("");
    }

    function testRevertAddWithPay() public {
        vm.expectRevert();
        address(target).call{ value: 1 }(abi.encodeCall(IMapping.addAmount, (address(0x42), 50)));
    }

    function testGetInitialState() public {
        uint256 currentState = target.getAmount(address(0x42));
        assertEq(currentState, 0);
    }

    function testAddAmount() public {
        target.addAmount(address(0x42), 50);
        uint256 currentState = target.getAmount(address(0x42));
        assertEq(currentState, 50);
    }

    function testOverflow() public {
        target.addAmount(address(0x42), type(uint256).max);

        vm.expectRevert();
        target.addAmount(address(0x42), 1);
    }
}
