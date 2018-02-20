pragma solidity ^0.4.10;

/*
 * @title Fallback Function
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Test {
    // This function is called for all messages sent to
    // this contract (there is no other function).
    // Sending Ether to this contract will cause an exception,
    // because the fallback function does not have the "payable"
    // modifier.
    function() public { x = 1; }
    uint x;
}


// This contract keeps all Ether sent to it with no way to get it back.
contract Sink {
    function() public payable { }
}

// This is a minimal example of a contract that can receive and give back Ether
contract Piggybank {

    function() public payable { } 

    function transfer(address etherreceiver, uint256 amount) public {
        if(!etherreceiver.send(amount)){
           throw;
        }    
    }
}

contract Caller {
    function callTest(Test test) public {
        test.call(0xabcdef01); // hash does not exist
        // results in test.x becoming == 1.

        // The following call will fail, reject the
        // Ether and return false:
        test.send(2 ether);
    }
}
