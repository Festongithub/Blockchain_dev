// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;
import "contracts/enumDeclaration.sol";

contract Enum{    
    Status public status;

    function get() public view returns(Status){
        return  status;
    }
    function set(Status _status)public{
        status = _status;       
    }

    function cancel()public {
        status = Status.Canceled;
    }

    function reset() public{
        delete status;
    }
}