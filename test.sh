#!/usr/bin/env bash

stack build
export ABCI_APP=$(stack exec -- which hs-abci-counter)
exec test_app
