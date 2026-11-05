pragma solidity 0.8.21;  

contract HelloWorld {
    string private helloMessage = "Hello world";

    function getHelloMessage() public view returns (string memory) {
        return helloMessage;
    }
}
