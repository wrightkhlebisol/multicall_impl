// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract TestMultiCall {
    function func1() external view returns (uint256, uint256) {
        return (1, block.timestamp);
    }

    function func2() external view returns (uint256, uint256) {
        return (2, block.timestamp);
    }

    function getFunc1Data() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.func1.selector);
    }

    function getFunc2Data() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.func2.selector);
    }
}
