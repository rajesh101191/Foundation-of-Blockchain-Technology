//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract CompareStrings {
 
    string public String = "Hello World";
 
    function setString(string memory _String) public {
        String = _String;
    }
 
    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(String)) == keccak256(abi.encodePacked(_String));
    }
 
}