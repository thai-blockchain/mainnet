#!/bin/sh
docker run -dit --restart=unless-stopped \
	--name testnet-xx \
	-v $PWD:/srv -w /srv \
	-p 30303:30303 \
	ethereum/client-go:stable \
	--networkid 1707 \
	--port 30303 \
	--datadir /srv/node \
	--unlock 1234567890abcdef1234567890abcdef12345678 \
	--password password.txt \
	--gcmode archive \
	--syncmode full \
	--mine \
	--nousb \
	--nodiscover
