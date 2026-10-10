//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.34;
 
contract ExampleBoolean {
 
    bool public Bool;
 
    function setNewBool(bool _Bool) public {
        Bool = _Bool;
    }
 
}