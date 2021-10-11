# Agoric Phase 0

TL;DR: Compile using Golang 1.17 with `make build`, and run `build/ag0`.

Phase 0 of the [Agoric blockchain's](https://agoric.com/) mainnet will not have
the [Agoric SDK](https://github.com/Agoric/agoric-sdk) enabled until governance
votes to turn it on.  Until then, validators run `ag0` to bootstrap the
chain with support for Cosmos-layer validation, staking, and governance.

This repository contains sources for the `ag0` program, a fork of the
[Cosmos Gaia implementation](https://github.com/cosmos/gaia).

NOTE: Remember that `ag0` is the new `gaiad`.  You will still see many
remaining cosmetic references to `gaiad` in this repo.  

Please refer to https://agoric.com to learn about Agoric and get involved.

*The rest of the original Gaia README follows:*

----

# Original Gaia README
Gaia is the first implementation of the Cosmos Hub, built using the [Cosmos SDK](https://github.com/cosmos/cosmos-sdk). Gaia and other fully sovereign Cosmos SDK blockchains interact with one another using a protocol called [IBC](https://github.com/cosmos/ibc) that enables Inter-Blockchain Communication.

[![codecov](https://codecov.io/gh/cosmos/gaia/branch/master/graph/badge.svg)](https://codecov.io/gh/cosmos/gaia)
[![Go Report Card](https://goreportcard.com/badge/github.com/cosmos/gaia)](https://goreportcard.com/report/github.com/cosmos/gaia)
[![license](https://img.shields.io/github/license/cosmos/gaia.svg)](https://github.com/cosmos/gaia/blob/main/LICENSE)
[![LoC](https://tokei.rs/b1/github/cosmos/gaia)](https://github.com/cosmos/gaia)
[![GolangCI](https://golangci.com/badges/github.com/cosmos/gaia.svg)](https://golangci.com/r/github.com/cosmos/gaia)

## Contributing

Check out [contributing.md](CONTRIBUTING.md) for our guidelines & policies for how we develop the Cosmos Hub. Thank you to all those who have contributed!

## Documentation

Documentation for the Cosmos Hub lives at [hub.cosmos.network](https://hub.cosmos.network/main/hub-overview/overview.html).

## Talk to us!

We have active, helpful communities on Twitter, Discord, and Telegram.

* [Discord](https://discord.gg/cosmosnetwork)
* [Twitter](https://twitter.com/cosmos)
* [Telegram](https://t.me/cosmosproject)

## Archives & Genesis

With each version of the Cosmos Hub, the chain is restarted from a new Genesis state. 
Mainnet is currently running as `cosmoshub-4`. Archives of the state of `cosmoshub-1`, `cosmoshub-2`, and `cosmoshub-3` are available [here](./docs/resources/archives.md).

If you are looking for historical genesis files and other data [`cosmos/mainnet`](http://github.com/cosmos/mainnet) is an excellent resource.
