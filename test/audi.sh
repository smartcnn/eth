#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0x6D2a79507C67A8ACBc01D16a4858469677792C39
ADDRESS=0xb9eB4f516E9ec2BCAE26882378DDf268adC67B43

USERNAME=$ADDRESS.w
POOL=eth-us-west1.nanopool.org:9999
POOL=stratum+tcp://eth.f2pool.com:6688
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethstratum

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
