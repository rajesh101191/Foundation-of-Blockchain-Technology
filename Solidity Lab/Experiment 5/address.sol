//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract Address {
 
    address public someAddress;
 
    function setAddress(address _Address) public {
        Address = _Address;
    }
 
    function getAddressBalance() public view returns(uint) {
        return Address.balance;
    }
 
}