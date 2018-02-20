pragma solidity ^0.4.10;

/*
 * @title A Simple Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Owned {
    function Owned() public { owner = msg.sender; }
    address owner;
}

contract Mortal is Owned {
	function kill() public {
		selfdestruct(owner);
	}
}

contract User is Owned, Mortal {
	string public UserName;
	function User(string _name) public {
		UserName = _name;
	}
}
