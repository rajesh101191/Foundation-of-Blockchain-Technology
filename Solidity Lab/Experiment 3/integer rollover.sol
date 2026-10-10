//SPDX-License-Identifier: MIT
 
pragma solidity 0.7.0;
 
contract WrapAround {
    
    uint8 public Uint8 = 250; 
 
    function decrement() public {
        Uint8--;
    }
 
    function increment() public {
        Uint8++;
    }
}