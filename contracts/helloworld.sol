// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.26 and less than 0.9.0
pragma solidity ^0.8.26;

contract HelloWorld {

    string public TEXT = "Build in Rust";
    string public greet = "Hello World!";
    string public  message = "Rust and solidity";

    uint256 public  maxInt = 255;
    uint256 public  minInt = 0;

    bool public  boo = true;
    bool public  boo2 = false;

    address public immutable myAddr;
    uint256 public  immutable myUnit;

    constructor(uint256 _myUnit){
        myAddr = msg.sender;
        _myUnit = _myUnit;
    }

}
