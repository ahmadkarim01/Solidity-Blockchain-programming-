// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract NoPrime {
    uint public num;
    
    event PrimeChecker(string, uint);

    function setter (uint _inputNum) public{}
    
    function check(uint number) public  {

        if (PrimeNo(number))
            emit PrimeChecker("The Number is Prime", number);

        else 
        emit PrimeChecker("The Number is not Prime", number);
    }

    function PrimeNo(uint num) public pure returns(bool){

        if(num == 0 || num ==1){
            return false;
        }

        for(uint i = 2; i <= num/2; i++){

        }
        if(num == 0 || num == 2)
        return true;

    }
}
