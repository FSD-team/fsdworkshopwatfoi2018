# Radionica - Kreiranje DApps na Ethereum mreži
Primer sa drugog dana radionice sa nalazi u pet-shop folderu. Smart contracts sa prvog dana radionice se nalaze u fsd-vote-dapp/contracts folderu

## Requirements
- Linux / OSx
- Google Chrome
- Metamask Plugin (za Chrome)
- infura.io nalog
- NVM
- IDE, e.g Visual Studio Code

## Installation
- `npm install -g ganache-cli`
- `npm install -g truffle`

## Running
- run a local blockchain RPC server to test and develop against `ganache-cli`
- Create an account with a seed phrase to Metamask

## Initialize empty project
- Initialize empty project with Truffle `truffle init`

## Start ganache network
- Run `ganache-cli`

## Deploy contracts
- Run `truffle deploy` on first contract build
- Run `truffle deploy --reset` to redeploy and reset contracts on network

## Open truffle console
- Run `truffle console` to enter in console
