pragma solidity ^0.4.18;

import "./FixedSupplyToken.sol";

/*
 * @title Assignment Solution
 * @author Adly Abdullah
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract MyICO {
	using SafeMath for uint;
	
	FixedSupplyToken token;
	address owner;
	
	function MyICO () public {
		token = new FixedSupplyToken(); // initialize token
		owner = msg.sender;
	}
	
	function() payable public {
		
 	}
}
