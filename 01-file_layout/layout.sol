//versiona pragma
pragma solidity ^0.4.10;

/*
 * @title A Simple Layout Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

//import section
//import ""; sol extension
// filename.sol
import "filename";

// begin the contract
/// @title This is the layout of the solidity code
contract ContractName {
    // This is a single-line comment.

    /*
    This is a
    multi-line comment.
    */

    // State Variables
    address public stateVariable1;
    uint public stateVariable2;
    uint private stateVariable3;
    string public constant HOST_ID = 0x1234;

    // Events
    event LogEvent1(address param1, uint param2);
    event LogEvent2(address param1);
    event LogEvent3();

    // Function Modifiers
    modifier onlyIfOwnerModifier() {
        if (msg.sender != owner) {
            throw;
        }
        _;
    }

    modifier onlyIfMortalModifier() {
        if (msg.sender != mortal) {
            throw;
        }
        _;
    }

    // Struct, arrays or Enum if any here
    enum enum1 { val1, val2, val3 }
    struct struct1 {
        uint weight;
        uint height;
        address location;
    }
    mapping (address => uint) balances;


    // Define consutruct here
    function ContractName(uint initialCoins) {
       // Initialize state variables here
    }

    /// @dev Comment for developers
    /// @param parameters details
    /// @return return variable details
    function function1(address param1, uint param2) {
       //body of function here
       //
       //
    }

    /// @dev Comment for developers
    /// @param parameters details
    /// @return return variable details
    function function2(address param1, uint param2) {
       //body of function here
       //
       //
    }

    //default function
    function() {
        throw;
    }

}
