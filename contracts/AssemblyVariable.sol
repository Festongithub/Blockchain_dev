// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract AssemblyVariable{
    function yul_let()public  pure returns(uint256 z){
        assembly{
            if lt(z, 10) {
                z:= 99
            }
        }
    }

    function yul_switch(uint256 x) public pure returns(uint256 z){
        assembly{
            switch x
            case 1 {z := 10}
            case 2 {z := 20}
            default  { z := 0}
        }
    }

    function yul_for_loop()public pure returns (uint256 z){
        assembly{
            for{let i := 0} lt(i, 10){i := add(i, 1)}{z := add(z, 1)}
        }
    }

    function yul_while_loop()public  pure returns (uint256 z){
        assembly{
            let i := 0
            for{} lt(i, 5){}{
                i := add(i, 1)
                z := add(z, 1)
            }
        }
    }
}