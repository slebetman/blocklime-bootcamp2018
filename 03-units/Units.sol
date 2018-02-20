pragma solidity ^0.4.10;

/*
 * @title A Units & Global Variables Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Units {

    function test() public {
		// ETHER UNITS
		// ===========
        // Ether Units are available as a global variables
        // wei, finney, szabo & ether are variable themself
        // variable can not be named as the wei, finney, szabo or ether
		
        bool isEqual = (2 ether == 2000 finney);
    
		// ___________________________________________________________________________
		//
		// TIME UNITS
		// ==========
        // seconds, minutes, hours, days, weeks, years are all available at time units to be used
        // can be used anywher in the program like mentioned below
		
        bool secondsIsEqual = (1 == 1 seconds);
        bool minutesIsEqual = (1 minutes == 60 seconds);
        bool hoursIsEqual   = (1 hours == 60 minutes);
        bool daysIsEqual    = (1 days == 24 hours);
        bool weeksIsEqual   = (1 weeks == 7 days);
        bool yearsIsEqual   = (1 years == 365 days);
    }
}
