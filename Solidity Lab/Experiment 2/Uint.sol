//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract Uint {
    uint256 public Uint; //0 - (2^256)-1
 
    uint8 public Uint8 = 250;
 
    uint8 public Uint8_EXP = 2**4; //=16, exponentiation is done with **
 
    int public Int = -10; //-2^255 to 2^255 - 1
 
    function setMyUint(uint _Uint) public {
        Uint = _Uint;
    }
 
    function decrementUint() public {
        Uint--;
    }
 
    function incrementUint8() public {
        Uint8++;
    }
 
    function incrementInt() public {
        Int++;
    }
}