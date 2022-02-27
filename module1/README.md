# How to deploy and comsume blockchain API

## Deploy the blockchain API application
```bash
docker-compose up -d
```

## Access the following APIs via Postman
- [GET] http://localhost:5000/mine_block : Mines a block, and adds a new block to the blockchain
- [GET] http://localhost:5000/get_chain : Gets the full blockchain

## Stop the blockchain API application
```bash
docker-compose down
```

## Clean container instances on local machine
```bash
docker rmi blockchain_demo
```