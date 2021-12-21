// Compile at https://remix.ethereum.org/

pragma solidity ^0.4.11;

contract kennycoin_ico {

    //Introducing the maximum number of kennycoins available for sale
    uint public max_kennycoins = 1000000;

    // Introducing the usd to Kennycoin conversion
    uint public usd_to_kennycoins = 1000;

    //Introducing the total number of kennycoins that have been bought by the investors
    uint public total_kennycoins_bought = 0;

    // Mapping from the investor address to its equity is Kennycoin and USD
    mapping(address => uint) equity_kennycoins;
    mapping(address => uint) equity_usd;

    modifier can_buy_kennycoins(uint usd_invested) {
        require(usd_invested * usd_to_kennycoins + total_kennycoins_bought <= max_kennycoins);
        _;    
    }

}