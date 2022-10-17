# AXELAR-DOCKER_NODE

https://docs.axelar.dev/validator/setup/manual

1. Install Docker Engine and docker-compose
2. Clone repository 
3. cd directory project
4. edit docker-compose.yml, setup MONIKER and password 
5. docker-compose build 
6. after build is done run: docker-compose up -d  and wait when sync is done
7. read logs: docker-compose logs -f 
8. after start need create validator

```
# Enter inside container
docker exec -it axelar-node bash 

# Run following command
source /root/.profile
IDENTITY="1E8C3693651ADAEC"
AMOUNT=1000000
DENOM=uaxl

axelard tx snapshot register-proxy $BROADCASTER_ADDRESS --from validator --chain-id $CHAIN_ID

axelard tx staking create-validator --yes \
--amount $AMOUNT$DENOM \
--moniker $MONIKER \
--commission-rate="0.05" \
--commission-max-rate="0.20" \
--commission-max-change-rate="0.05" \
--website="https://t.me/CoinMetrika" \
--details="Investment research, coin analysis and non-custodial staking for Coin Metrika community" \
--min-self-delegation="1" \
--pubkey="$(axelard tendermint show-validator)" \
--from validator \
-b block \
--identity=$IDENTITY \
--chain-id $CHAINID
```
Command for health check 
```
axelard health-check --tofnd-host localhost --operator-addr $VALIDATOR_OPERATOR_ADDRESS
```


Command for register supported network 
```
axelard tx nexus register-chain-maintainer ethereum polygon --from broadcaster --chain-id $CHAIN_ID --home /root/.axelar
```