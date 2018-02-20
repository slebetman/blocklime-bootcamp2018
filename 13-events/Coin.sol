pragma solidity ^0.4.10;

/*
 * @title Events Example
 * @author Harpreet Maan
 * This is dev for Blocklime's Bootcamp only
 * Use for Education purpose only
 *
 * copyright 2018 Blocklime Technologies Sdn. Bhd.
 */

contract Coin {
    address public minter;
    uint public totalCoins;

    event LogCoinsMinted(address indexed deliveredTo, uint indexed amount);
    event LogCoinsSent(address sentTo, uint amount);

    mapping (address => uint) balances;
    function Coin(uint initialCoins) public {
        minter = msg.sender;
        totalCoins = initialCoins;
        balances[minter] = initialCoins;
    }

    /// @notice Mint the coins
    /// @dev This does not return any value
    /// @param owner address of the coin owner, amount amount of coins to be delivered to owner
    /// @return Nothing
    function mint(address owner, uint amount) public {
        if (msg.sender != minter) return;
        balances[owner] += amount;
        totalCoins += amount;
        LogCoinsMinted(owner, amount);
    }

    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        LogCoinsSent(receiver, amount);
    }

    function queryBalance(address addr) public constant returns (uint balance) {
        return balances[addr];
    }

    function killCoin() public {
        if (msg.sender != minter) throw;
        selfdestruct(minter);
    }
}
