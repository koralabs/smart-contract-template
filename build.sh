#!/usr/bin/env nix-shell
#!nix-shell -i bash
cabal update
cabal run exe:write-contract-script-file
NETWORK=${NETWORK:-mainnet}
case "${NETWORK}" in
    preprod) PROTOCOL_MAGIC=" --testnet-magic 1";;
    preview) PROTOCOL_MAGIC=" --testnet-magic 2";;
    mainnet) PROTOCOL_MAGIC=" --mainnet";;
esac
SCRIPT_ADDRESS=$(cardano-cli address build --payment-script-file ./result.plutus${PROTOCOL_MAGIC})
echo "Script address is: ${SCRIPT_ADDRESS}"