
 // SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
contract Counter {
    uint public count;
    string public message;

    event CountUpdated(uint newCount, address updatedBy);
    event MessageUpdated(string newMessage, address updatedBy);

    constructor() {
        count = 0;
        message = "Hello Blockchain";
    }

    // Transaction 1, 2, 3: Increment the counter
    function increment() public {
        count = count + 1;
        emit CountUpdated(count, msg.sender);
    }

    // Another state-changing transaction
    function setMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(_message, msg.sender);
    }
}
