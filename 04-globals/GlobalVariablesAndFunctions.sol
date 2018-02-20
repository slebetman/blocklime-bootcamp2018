pragma solidity ^0.4.10;

/*
 * @title Global Variables & Functions Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */
 
contract GlobalVariablesAndFunctions {

    function test() public {
        // msg represent the current message received by the contracts
        msg.sender; // address of sender
        msg.value;  // amount of ether provided to this contract in wei
        msg.data;   // bytes, complete call data
        msg.gas;    // remaining gas
        msg.sig;    // return the first four bytes of the call data

		// ___________________________________________________________________________
    
        // similarly tx represent the current transaction
        tx.origin;   // address of sender of the transaction
        tx.gasprice; // gas price of the transaction

		// ___________________________________________________________________________
    
        // block represent the information about the current Block
        now;                // current time (approximately), alias for 
		                    // block.timestamp (uses Unix time)
							
        block.number;       // current block number
        block.difficulty;   // current block difficulty
        block.blockhash(1); // returns bytes32, only works for most 
		                    // recent 256 blocks
							
        block.gaslimit;     //return Gas limit
        block.coinbase;     // return current block miner’s address

		// ___________________________________________________________________________
    
        // Mathematical and Cryptographic Functions
        assert(1 == 1);      // throws if the condition is not met.
        addmod(1, 1, 1);     // compute (x + y) % k where the addition is 
		                     // performed with arbitrary precision and does 
		                     //not wrap around at 2**256.
							 
        mulmod(1, 1, 1);     // compute (x * y) % k where the multiplication is 
		                     // performed with arbitrary precision and does 
		                     // not wrap around at 2**256.
							 
        keccak256("hello");  // compute the Ethereum-SHA-3 (Keccak-256) hash of 
		                     // the (tightly packed) arguments
							 
        sha3("hello");       // alias to keccak256()
        sha256("hello");     // compute the SHA-256 hash of the 
		                     // (tightly packed) arguments
							 
        ripemd160("hello");  // compute RIPEMD-160 hash of the (tightly packed) 
		                     // arguments
							 
        revert();            // abort execution and revert state changes
        // sha3("ab", "c") == sha3("abc") == sha3(0x616263) == sha3(6382179) = sha3(97, 98, 99)
		
		ecrecover("1234567890", RIPEMD-160, "1234567890", "1234567890"); 
		                     // recover the address associated with the public key 
		                     // from elliptic curve signature or return zero on 
		                     // error

		// ___________________________________________________________________________    
	
        // Address Related
        <address>.balance (uint256); // balance of the Address in Wei
        <address>.send(uint256 amount) returns (bool); //send given amount of Wei to Address, returns false on failure
        <address>.transfer(uint256 amount); // send given amount of Wei to Address, throws on failure
 
		// ___________________________________________________________________________   
	
        // Contracts Related
        this; // (current contract’s type) the current contract, explicitly convertible to Address
        selfdestruct(address recipient); // destroy the current contract, sending its funds to the given Address
    }
}
