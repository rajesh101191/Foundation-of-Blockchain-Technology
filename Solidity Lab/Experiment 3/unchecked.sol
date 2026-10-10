//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract Uncheck {
    uint256 public Uint;
 
    function decrementUintUnchecked() public {
        unchecked {
            Uint--;
        }
    }
 
    function decrementUint() public {
        Uint--;
    }
}