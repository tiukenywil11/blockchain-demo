# How to deploy and comsume blockchain API

## Deploy the blockchain API application
```bash
docker-compose up -d
```

## Access the following APIs via Postman

These are the available ports: 
1. 5001 (Kenny)
2. 5002 (Zeri)
3. 5003 (Aira)

These are the available API endpoints:
- [POST] http://localhost:<port>/connect_node : This will connect all the existing nodes in a single network.
> Input on the body: Other nodes from template 'nodes.json' that is not the port being used. (e.g. nodes with port 5002, and 5003 when calling this api on node with port 5001, etc.)
- [POST] http://localhost:<port>/add_transaction : Sends transaction to other users within the network.
> Input on the body: Template can be found on 'transaction.json', just populate the values per key.
- [GET] http://localhost:<port>/mine_block : Mines a block, and adds a new block to the blockchain.
- [GET] http://localhost:<port>/get_chain : Gets the full blockchain.
- [GET] http://localhost:<port>/replace_chain : Replaces the chain with the longest chain in the network.

# How to use
Basic walkthrough of how this blockchain would work.
1. Check the latest blockchain via get request 'get_chain'.
2. Connect nodes to each other via post request 'connect_node'.
3. Make a transaction on any node via post request 'add_transaction'.
4. Mine a block via get request 'mine_block' would make the transaction reflect on the miner node's blockchain.
5. Replace the chain on other nodes via get request 'replace_chain' to get the longest chain within the network.

## Stop the blockchain API application
```bash
docker-compose down
```

## Clean container instances on local machine
```bash
docker rmi kennycoin-demo-5001 kennycoin-demo-5002 kennycoin-demo-5003
```
