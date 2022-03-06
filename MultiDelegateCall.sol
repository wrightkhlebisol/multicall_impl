// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MultiDelegateCall {
    function multiDelegateCall(bytes[] calldata data)
        external
        payable
        returns (bytes[] memory results)
    {
        results = new bytes[](data.length);
        for (uint256 i; i < data.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(
                data[i]
            );
            require(success, "delegate call failed");
            results[i] = result;
        }
    }
}
