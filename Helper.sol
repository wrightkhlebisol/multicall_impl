// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Helper2 {
    function getFunc1Data(uint256 x, uint256 y)
        external
        pure
        returns (bytes memory)
    {
        return abi.encodeWithSignature("func1(uint,uint)", x, y);
    }

    function getFunc2Data() external pure returns (bytes memory) {
        return abi.encodeWithSignature("func2()");
    }
}
