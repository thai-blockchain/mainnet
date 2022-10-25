# Thai Blockchain Services Infrastructure
## Minimum Requirements
* A VM, or bare-metal, with 2 cores, 4 GB RAM, 250 GB SSD, 100 Mbps Internet access with a Public IP Address
* Linux, preferably, Ubuntu LTS, Alma Linux, or Rocky Linux
* Docker

## Mainnet
Clone the repository
```bash
git clone https://github.com/thai-blockchain/mainnet.git
cd mainnet
```

Create a password file,
```bash
pwgen -Byn 32 1 > password.txt
chmod 400 password.txt
```

Create a wallet with the password file,
```bash
docker run --rm -it -v $PWD:/srv/signer -w /srv/signer ethereum/client-go:stable --datadir /srv/signer/node --password password.txt account new
```

Initialize the node with the genesis
```bash
docker run --rm -it -v $PWD:/srv/signer -w /srv/signer ethereum/client-go:stable --datadir /srv/signer/node init genesis.json
```

Edit start-node.sh script, change --node and --unlock accordingly

Then, run
```bash
./start-node.sh
```
