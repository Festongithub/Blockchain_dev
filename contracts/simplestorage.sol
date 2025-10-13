// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.26;

contract  simplestorage {

    uint256 public num;
    function set(uint256 _num) public {
        num = _num + _num;
    }

    function get() public view returns (uint256) {
        return num;
    }

    function foo(uint256 x) public  pure returns (uint256){
        if(x < 20){
            return 0;
        }else if (x < 10){
            return  x * 10;
        }else {
            return 2;
        }
    }

    function ternary(uint256 _x)public pure returns (uint256){
        return  _x < 10 ? 1 : 2;
    }
    
}