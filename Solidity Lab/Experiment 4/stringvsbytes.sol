//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract Strings {
 
    string public String = "Hello World";
    bytes public Bytes = "Hello World";
 
    function setString(string memory _String) public {
        String = _String;
    }
 
    function compareTwoStrings(string memory _String) public view returns(bool) {
        return keccak256(abi.encodePacked(String)) == keccak256(abi.encodePacked(_String));
    }
 
    function getBytesLength() public view returns(uint) {
        return Bytes.length;
    }
 
}