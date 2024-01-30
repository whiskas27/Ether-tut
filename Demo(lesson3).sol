// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    string public myStr = "test"; // storage

    function demo() public {
        string memory myTempStr = "temp";
        myStr = "new value";
    }
}