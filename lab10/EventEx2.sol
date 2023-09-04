// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ZeroAddressContract {
    address public owner;
    
    event ZeroAddressInputted(string message);

    constructor(address _initialOwner) {
        require(_initialOwner != address(0), "Initial owner cannot be a zero address");
        owner = _initialOwner;
    }

    function setOwner(address _newOwner) public {
        require(_newOwner != address(0), "New owner cannot be a zero address");
        owner = _newOwner;
    }
}
