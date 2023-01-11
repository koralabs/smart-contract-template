# Plutus Smart Contract Template

## Overview
This is a minimalist smart contract template repository for Plutus.

It contains all that is needed to compile and export the Plutus script and address for the `AlwaysSucceeds` contract, which is the smallest example of a Plutus smart contract.

It is based on the [Plutus Starter repo](https://github.com/input-output-hk/plutus-starter) from IOG.

## Prerequisites
The only prerequisite is [Nix](https://nixos.org/download.html) needs to be installed.

## Compile the script and get the script address:

```
chmod +x build.sh
./build.sh
# The script will be ./result.plutus
```

## Notes:

This first build could take *many* minutes (15-30 or more?) as multiple dependencies will get downloaded and compiled. These will be cached, so subsequent builds will go quicker.

The "entrypoint" for this process is the `build.sh` file which will load a `nix-shell`. Nix is a package management solution for Bash. Nix loads the `shell.nix` file first, and you can see in that file that it will `import` many other folders and files. If a folder is "imported", then the `default.nix` file from that folder is what is what is loaded. 

This is all inherited from the [Plutus Starter repo](https://github.com/input-output-hk/plutus-starter) from IOG. That repo makes use of the [haskell.nix](https://github.com/input-output-hk/haskell.nix) project, also from IOG.