// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TestMultiDelegateCall is MultiDelegateCall {
    event Log(address caller, string func, uint256 i);

    function func1(uint256 x, uint256 y) external {
        emit Log(msg.sender, "func1", x + y);
    }

    function func2() external returns (uint256) {
        emit Log(msg.sender, "func2", 2);
        return 111;
    }
}
