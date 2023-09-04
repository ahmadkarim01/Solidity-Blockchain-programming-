// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PersonContract {
    struct PersonInfo {
        string name;
        string city;
        uint Cnic;
    }
PersonInfo public p1;

event Update (
    PersonInfo oldValue,
    PersonInfo newValue,
    uint256 timestamp,
    uint256 blockNumber
    );
function setPersonInfo() public {
    PersonInfo memory oldValue = p1;

    emit Update(oldValue, p1, block.timestamp, block.number);
    }

}
