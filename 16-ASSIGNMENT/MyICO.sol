pragma solidity ^0.4.18;

import "./FixedSupplyToken.sol";

contract MyICO {
	using SafeMath for uint;
	
	FixedSupplyToken token;
	address owner;
	uint price = 1 ether;
	bool paused = false;
	
	event Log (address sender, uint value);
	
	modifier onlyOwner () {
		require(msg.sender == owner); // throw error if not owner
		_;
	}
	
	function MyICO () public {
		token = new FixedSupplyToken(); // initialize token
		owner = msg.sender;
	}
	
	function getEther () public onlyOwner {
		msg.sender.transfer(this.balance);
	}
	
	function setPrice (uint newPriceInWei) public onlyOwner {
		price = newPriceInWei;
	}
	
	function pause () public onlyOwner {
		paused = true;
	}
	
	function resume () public onlyOwner {
		paused = false;
	}
	
	function getTokenAddress () public view returns (address) {
		return address(token);
	}
	
	function() payable public { // send tokens to people when they send ETH
		if (!paused) {
			token.transfer(msg.sender, msg.value / price);
			Log(msg.sender, msg.value);
		}
 	}
}
