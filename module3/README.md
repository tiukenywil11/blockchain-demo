# How to deploy and comsume blockchain API

## Install the following
- Ganache (https://trufflesuite.com/ganache/index.html)

## Basic walkthrough of how this blockchain would work.

### How to deploy the contract
Basic walkthrough of how this blockchain would work.
1. Open Truffle Ganache.
2. Navigate to the following path '.\etherwallet-mercury\chrome-extension\cx-wallet.html'
3. On the upper right side of the screen, add a custom wallet [Node Name: kennycoin_ico, URL:'127.0.0.1', Port: '8545'](this is the default for ganache)
4. Go to 'https://remix.ethereum.org/'
5. Create a new file named 'kennycoin_ico.sol', and paste the codes from the repository with the same name.
6. Compile using compiler version '0.4.26+commit.453c3fc'
7. Go to 'Compilation Details', and copy the Bytecode
8. on MyEtherWallet, go to 'Contracts' then 'Deploy', paste the ByteCodes (only the data within "object" key.
9. Input the private key from Truffle Ganache by clicking 'show keys', to unlock and deploy the contract.
10. Then click sign transaction.

### How to interact with the contract
1. Click on 'Interact with Contract' on MyEtherWallet.
2. Copy the created contract address from Ganache, then paste it on 'Contract Address' text box.
3. Copy the ABI from the compiled code in Remix browser compiler, and paste it on 'ABI/JSON Interface' text box.

### Functions available.
- max_kennycoins: Shows how much kennycoins are available.
- usd_to_kennycoins: Shows the conversion rate of usd to kennycoins.
- total_kennycoins_bought: Shows the total kennycoins that has been bought.
- buy_kennycoins(address investor, uint usd_invested): Buys kennycoins,transfers kennycoins to investor's address in exchange for usd.
- equity_in_usd(address investor): Checks equity of usd for investor address that is passed to the function.
- equity_in_kennycoins(address investor): Checks equity of kennycoins for investor address that is passed to the function.
