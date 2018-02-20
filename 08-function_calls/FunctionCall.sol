pragma solidity ^0.4.10;

/*
 * @title Function Call Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Miner{
	//The modifier payable has to be used for info, 
	// because otherwise, we would not be able to 
	// send Ether to it in the call m.info.value(10).gas(800)().
	function info() public payable returns (uint ret) { return 42; }
}

contract FunctionCall {

	// Define consutruct here
	function FunctionCall(uint param1) public {
	   // Initialize state variables here
	}

	Miner m;
	function setMiner(address addr) public { m = Miner(addr); }
	//function setMiner(Miner _m) { m = _m; } is also correct

	function callMinerInfo() public { m.info.value(10).gas(800)(); }

	//function can also be called as json object as parameters
	function someFunction(uint key, uint value) public {
		// Do something
	}

	function demoFunction() public {
        // named arguments
        someFunction({value: 2, key: 3});
    }

    //variable names are optional in parameters & in returns
    function someFunction2(uint key, uint) public pure returns (uint){ 
    	// Do something
    	return key;
    }	
}
