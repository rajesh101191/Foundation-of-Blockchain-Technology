//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract SetStrings {
 
    string public String = "Hello World";
 
    function setString(string memory _String) public {
        String = _String;
    }
 
}
