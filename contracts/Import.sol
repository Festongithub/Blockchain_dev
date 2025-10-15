// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;
import "contracts/Foo.sol";

import{Unauthorized, add as func , Point} from "contracts/Foo.sol";

contract Import{
    Foo public foo  = new Foo();

    function getFooName()public view returns (string memory){
        return foo.name();
    }
}