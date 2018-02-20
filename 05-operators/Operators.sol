pragma solidity ^0.4.10;

/*
 * @title Operators Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Operators {    
	bool isMortal = true;
	bool hasWriteAccess = true;
	
	function test() public {
		int a;
		bool check;
		
		// ARITHMETIC OPERATORS
		
		a = 10;
		// +, -, unary -, unary +, *, /, % (remainder), ** (exponentiation)
		a = 2**3; // b = 8
		
		// a++ and a-- are equivalent to a += 1 / a -= 1 
		// but the expression itself still has the previous value of a. 
		// In contrast, --a and ++a have the same effect on a but return the value after the change.
		a = a++; // a = 10
		a = ++a; // a = 11
		
		// a += e is equivalent to a = a + e. 
		// The operators -=, *=, /=, %=, a |=, &= and ^= are defined accordingly. 
		a += 5; // a = 11+5 = 16
		
		// __________________________________________________________________________
		// LOGICAL OPERATORS
		//
		// ! (logical negation)
		// && (logical conjunction, “and”)
		// || (logical disjunction, “or”)
		// == (equality)
		// != (inequality)
		
		bool isOwner;
		isOwner = isMortal && hasWriteAccess;
		isOwner = true && false; // false
		isOwner = true || false; // true
		isOwner = !false; // true
		check = (1 ether == 1000 finney); // true
		check = (1 ether != 2000 finney); // true
		
		// __________________________________________________________________________
		// BITWISE OPERATORS    
		//
		// & Bitwise AND 
		// | Bitwise OR 
		// ^ Bitwise exclusive OR 
		// ~ Bbitwise negation
		// >> Bitwise right shift
		// << Bitwise left shift
		
		a = 0x02 | 0x01; // orValue = 0x03
		a = 0x01 << 2; // shiftValue = 4
	}
}
