// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract Event {
//     // Event declaration
//     // Up to 3 parameters can be indexed.
//     // Indexed parameters help you filter the logs by the indexed parameter
//     event Log(address indexed sender, string msg);
//     event AnotherLog();

//     function test() public {
//         emit Log(msg.sender, "Hello Web3.0");
//         emit Log(msg.sender, "It's all about Decentralization");
//         emit AnotherLog();
//     }
// }




// my event

contract Event {
    // Existing events
    event Log(address indexed sender, string msg);
    event AnotherLog();

    // New event
    event MyInfo(string name, address contractAddress, string department);

    function test() public {
        emit Log(msg.sender, "Hello Web3.0");
        emit Log(msg.sender, "It's all about Decentralization");
        emit AnotherLog();
    }

    // Function to emit MyInforamation
    function emitMyInfo() public {
        string memory Name = "Ahmad Karim";
        string memory Department = "Computer Science";

        emit MyInfo(Name, address(this), Department);
    }
}


