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

    function equity_in_kennycoins(address investor) external constant returns (uint) {
        return equity_kennycoins[investor];
    }

    function equity_in_usd(address investor) external constant returns (uint) {
        return equity_usd[investor];
    }

    // Buying kennycoins
    function buy_kennycoins(address investor, uint usd_invested) external 
    can_buy_kennycoins(usd_invested) {
        uint kennycoins_bought = usd_invested * usd_to_kennycoins;
        equity_kennycoins[investor] += kennycoins_bought;
        equity_usd[investor] = equity_kennycoins[investor] / 1000;
        total_kennycoins_bought += total_kennycoins_bought;
    }
	
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

    function equity_in_kennycoins(address investor) external constant returns (uint) {
        return equity_kennycoins[investor];
    }

    function equity_in_usd(address investor) external constant returns (uint) {
        return equity_usd[investor];
    }

    // Buying kennycoins
    function buy_kennycoins(address investor, uint usd_invested) external 
    can_buy_kennycoins(usd_invested) {
        uint kennycoins_bought = usd_invested * usd_to_kennycoins;
        equity_kennycoins[investor] += kennycoins_bought;
        equity_usd[investor] = equity_kennycoins[investor] / 1000;
        total_kennycoins_bought += total_kennycoins_bought;
    }

    // Selling kennycoins
    function sell_kennycoins(address investor, uint kennycoins_sold) external {
        equity_kennycoins[investor] -= kennycoins_sold;
        equity_usd[investor] = equity_kennycoins[investor] / 1000;
        total_kennycoins_bought -= kennycoins_sold;
    } 

}
}