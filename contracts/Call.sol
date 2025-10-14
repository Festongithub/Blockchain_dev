// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Reciever{
    event Recieved(address caller, uint256 amount, string message);

    fallback() external payable {
        emit Recieved(msg.sender, msg.value, "fallback was called");
     }

    function foo(string memory _message, uint256 _x)public payable  returns(uint256){
        emit  Recieved(msg.sender, msg.value, _message);
        return  _x + 1;
    }
}

contract Caller{
    event Response(bool sucess, bytes data);

    function testCallFoo(address payable  _addr)public  payable{
       (bool success, bytes memory data) = _addr.call{
        value: msg.value,
        gas: 5000
       }(abi.encodeWithSignature("foo(string, uint256)", "call foo", 123)); 

       emit  Response(sucess, data);
    }

    function testCallDoesNotExist(address payable  _addr)public payable {
        (bool sucess, bytes memory data) = _addr.call{value: msg.value}(abi.encodeWithSignature("doesNotExist"));

        emit  Response(success, data);
    }
}