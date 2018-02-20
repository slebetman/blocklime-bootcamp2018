pragma solidity ^0.4.10;

/*
 * @title Control Structure Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract ControlStructure {
    int public a;

    function ControlStructure(uint input1) public {
        bool b;
        
        // CONDITIONALS
        // ============
        
        if(input1 == 2) {
            a = 1;
        }
        else {
            a = 0;
        }
        
        // ternary operator
        b = (a == 1) ? true: false;

        if (1) { // THIS WILL GENERATE ERROR: if accepts boolean
            //some work
        }
		
		// __________________________________________________________________________
		//
        // LOOPS
        // =====
        
        while (input1 >= 0) {
            if(input1 == 5)
                continue;
            input1 = input1 - 1;   
            a++;
        } 
        
        for (uint i=0; i<=50; i++) {
            a++;
            if(a == 4) break;
        }  

        do {
            a--;
        } while (a>0);
    }
}
