
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array{
    // Initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 4, 5, 6];

    uint256[10] public numbers;

    function get(uint256 i)public  view returns(uint256){
        return arr[i];
    }

    function getArr() public  view returns(uint256[] memory){
        return arr;
    }

    function push(uint256 i)public{
        arr.push(i);
    }

    function remove(uint256 index)public{
        delete  arr[index];
    }

    function getLength()public view returns(uint256){
        return  arr.length;
    }

    function examples() external pure{
        // uint256[] memory a = new uint256[](5);

        uint256[][] memory b = new uint256[][](2);
        for(uint256 i = 0; i < b.length; i++){
            b[i] = new uint256[](3);
        }

        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;
    }

}