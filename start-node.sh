#!/bin/sh
docker run -dit --restart=unless-stopped \
	--name mainnet-xxx \
	-v $PWD:/srv \
	-v $PWD/static-nodes.json:/srv/node/geth/static-nodes.json:ro \
	-w /srv \
	-p 30303:30303 \
	ethereum/client-go:stable \
	--networkid 1707 \
	--port 30303 \
	--datadir /srv/node \
	--unlock 0x1234567890abcdef1234567890abcdef12345678 \
	--password password.txt \
	--gcmode archive \
	--syncmode full \
	--mine \
	--nousb \
	--nodiscover
