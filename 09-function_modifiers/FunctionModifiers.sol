pragma solidity ^0.4.10;

/*
 * @title Function Modifiers
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract FunctionModifiers {

	address public creator;
    // Define consutruct here
    function FunctionModifiers() public {
       // Initialize state variables here
       creator = msg.sender;
    }

    modifier onlyCreator() {
        if (msg.sender != creator) throw;
        _;
    }

    function kill() onlyCreator public { 
    	selfdestruct(creator);
    }

}
