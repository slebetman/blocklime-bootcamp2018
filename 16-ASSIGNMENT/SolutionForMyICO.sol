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
	uint price = 1 ether;
	bool paused = false;

	function MyICO () public {
		token = new FixedSupplyToken(); // initialize token
		owner = msg.sender;
		
		/* A note on contract ownership:
		 * -----------------------------
		 * The entity that deploys a contract will have it's address as msg.sender.
		 * This means that if you deploy this contract your wallet address will be
		 * set as msg.sender which means that the owner variable will be you.
		 * However, notice that this contract is what creates the FixedSupplyToken
		 * object (new FixedSupplyToken()). This means that THE OWNER OF THE "token"
		 * OBJECT IS THIS CONTRACT, not you.
		 * This is what allows this contract to call functions that are restricted
		 * to owner.
		 */
	}

	// ======================================== Logger to log purchases	
	event Log (address sender, uint value);
	
	// ======================================== Modifier to restrict access to certain functions
	modifier onlyOwner () {
		require(msg.sender == owner); // throw error if not owner
		_;
	}
	
	// ======================================== Allow owner to withdraw ether raised
	function getEther () public onlyOwner {
		msg.sender.transfer(this.balance);
	}
	
	// ======================================== Allow owner to set token price
	function setPrice (uint newPriceInWei) public onlyOwner {
		price = newPriceInWei;
	}
	
	// ======================================== Pause and resume functionality
	function pause () public onlyOwner {
		paused = true;
	}
	
	function resume () public onlyOwner {
		paused = false;
	}

	// ======================================== Utility function to find token contract	
	function getTokenAddress () public view returns (address) {
		return address(token);
	}
	
	// ======================================== Fallback function to allow people to buy token
	function() payable public { // send tokens to people when they send ETH
		if (!paused) {
			token.transfer(msg.sender, msg.value / price);
			Log(msg.sender, msg.value);
		}
 	}
}
