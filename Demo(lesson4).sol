//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    //Struct
    struct Payment {
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    struct Balance {
        uint totalPayments;
        mapping(uint => Payment) payments;
        
    }

    mapping(address => Balance) public balances;

    function getPayment(address _addr, uint _index) public view returns(Payment memory) {
       return balances[_addr].payments[_index];
    }

    function pay(string memory message) public payable {
        balances[msg.sender].totalPayments++;

        uint paymentNum = balances[msg.sender].totalPayments++;


        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        balances[msg.sender].payments[paymentNum] = newPayment;
    }
    
    
    // Byte
    // bytes32 public myVar = "Hello Bytes32";
    // bytes public myDynVar = "Hello Dynamic";



    // function demo() public view returns (bytes1) {
    //     return myDynVar[0];
    }

    
    // // Array
    // uint[] public items;
    // uint public len;
    // function demo() public {
    //     items.push(4);
    //     items.push(5);
    //     len = items.length;
    // }

    // function sampleMemory() public view returns (uint[] memory) {
    //    uint[] memory tempArray = new uint[](10);
    //    tempArray[0] = 1;
    //    tempArray[2] = 100;
    //    return tempArray;
    // }
    
    // Enum
    // enum Status {Paid, Delievered, Received}
    // Status public currentStatus;

    // function pay() public {
    //     currentStatus = Status.Paid;   
    // }

    // function Delievered() public {
    //     currentStatus = Status.Delievered;   
    // }

    // function Received() public {
    //     currentStatus = Status.Received;   
    // }
