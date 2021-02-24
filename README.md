# Haskell Tendermint Interface (ABCI)

Build blockchain applications in Haskell for
[Tendermint](https://tendermint.com/)

[![Build Status](https://travis-ci.org/albertov/hs-abci.svg?branch=master)](https://travis-ci.org/albertov/hs-abci)

## Running the test suites
```bash
> make install
> make test
```

## Running the counter example app
You should start a tendermint node if you want to run the counter app. Assuming you have the tendermint binary somewhere in your path, you can start a fresh node with

```bash
> tendermint unsafe_reset_all
> tendermint init
> tendermint node
```
You can then run the counter app with
```bash
> make run-counter
```

You can now post transactions to the tendermint node via curl, for example to change the count to the number `1` you can run

```bash
> curl 'localhost:26657/broadcast_tx_commit?tx=0x01'
```

You can also smoke test the counter app using the abci-cli test suite. Assuming the counterapp and you have `abci-cli` binaries in your path ([see here](https://tendermint.com/docs/app-dev/getting-started.html#first-tendermint-app)) you can run

```bash
> abci-cli test
```
