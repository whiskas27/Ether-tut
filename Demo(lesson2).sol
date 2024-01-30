// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    uint8 public myVal = 254;

    function inc() public {
        myVal = myVal + 1
    }

    // function demo() public {
    //     minimum = type(uint8).max;

    // }
}
    //unsigned integers
//     uint public muUint = 42;

//     function demo(uint _inputUint) public {
//         uint localUint = 42;
//         // 2 ** 256
//         uint8 public mySmallUint = 2;
//         // 2 ** 8 = 256
//         // 0 ---> (256-1)
//     }
//     //signed integers
//     -5
//     //signed integers
//     int public muInt = -42;
//     int8 public mySmallInt = -1;
//     // 2 ** 7 = 128
//     // -128 -> (128-1)
// }
// //     bool public myBool = true; // state

// //     function myFunc(bool _inputBool) public {
// //         bool  localBool = false; //local
// //         localBool && _inputBool
// //         localBool || _inputBool
//         localBool == _inputBool
//         localBool != _inputBool
//         !localBool
//         if(_inputBool)
//     }
// }