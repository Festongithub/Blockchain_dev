// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionModifiers{

    // Modifiers are code that can be run before  and/or after function call 

    address public owner ;
    uint256 public x;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwners(){
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier validAddress(address _addr){
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner)public onlyOwners validAddress(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i)public noReentrancy
    {
        x -= 1;
        if(i > 1)
        {
            decrement(i -1);
        }
    }
}

contract Event{
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello EVM");
        emit  AnotherLog();

    }

}