pragma solidity ^0.4.10;

/*
 * @title A Simple Value Type Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Example {
	// INTEGERS (NUMBERS)
	// ==================

    // uint is mostly used for currency value or amount as there is not float or double here
    // it can also be used for storing Unix timestamp
    uint x;

    // int of 256 bits, it cannot be changed after instantiation
    int constant VARIABLE_1 = 8;

    // same effect as line above, here the 256 is explicit
    int256 constant VARIABLE_2 = 8;

    // A hexadecimal value stored in a constant with 'constant', compiler replaces each occurrence with actual value
    uint constant VERSION_ID = 0x123A1;
	
	// private variable, can only be accessed by functions inside this contract
	uint private secret;

    // For int and uint, size can be explicitly set in steps of 8 up to 256 e.g., int8, int16, int24
    uint8 b;
    int64 c;
    uint248 e;

    // Type casting
    int f = int(b);

    // boolean variable
    // or can also be declared by 'var b = true;' for inferred typing
    bool g = true;

    // Addresses - holds 20 byte/160 bit Ethereum addresses
    address owner;

	// Note: THERE IS NO FLOATING POINT!!
	// (there actually is but currently you can't use it)

	// ___________________________________________________________________________
	//
	// ARRAYS
	// ======
	
	// Below is a static array whose length is 5 fixed
	int[5] topFiveScores;

	// dynamic array whose length can be changed at any time
	int[] scores;

	// adding a new element using push function returns new length of the array
	uint newLength = scores.push(100);

	// Bytes -- fixed length arrays
	// ----------------------------

    // Bytes available from 1 to 32
    // byte is same as bytes1
    byte h;
    bytes2 i;
    bytes32 j;

    // Dynamically sized bytes
    // A special array, same as byte[] array (but packed tightly)
    bytes m;

    // same as bytes, but does not allow length or index access (for now)
    // below string is stored in UTF8, note double quotes, not single
    string name = "Harpreet";

	// ___________________________________________________________________________
	//
	// MAPPINGS
	// ========	

    // mapping(_KeyType => _ValueType)
    mapping (bytes32 => uint) public balances;
	
	// Mapping keys can be any type EXCEPT for
	// - a mapping,
	// - a dynamically sized array,
	// - a contract,
	// - an enum and
	// - a struct
	// since strings are dynamically sized you CANNOT use strings as map keys
	// but you can use byesN (bytes1 to bytes32).


	// ___________________________________________________________________________
	//
    // ENUMS
	// =====
    // often used for state machine
    enum State { Created, Locked, Inactive }

    // Declare variable from enum
    State public state;

    function initState() private {
        // Set the state
        state = State.Created;
    }

    // enums can be explicitly converted to ints
    // below Locked will return 1
    uint createdState = uint(State.Locked);


	// ___________________________________________________________________________
	//
	// Type inferrence
	
	function test() public pure {
		// If initialising a variable in a declaration types can be deduced (like Go and C#)
		var aaa = true; // boolean
		var bbb = 10; // uint8
		var ccc = 1000; // uint16
		var ddd = 90000; // uint24
		
		bbb = 999; // GENERATES ERROR because 999 cannot fit inside 8 bits
		
		// DON'T use "var" with integer literals
		
		var n = name;
	}	
}
