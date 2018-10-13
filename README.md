# Radionica - Kreiranje DApps na Ethereum mreži

## Requirements
- Linux / OSx
- Google Chrome
- Metamask Plugin (za Chrome)
- infura.io nalog
- NVM
- IDE, e.g Visual Studio Code
- Ganache - a personal blockchain for Ethereum development you can use to deploy contracts, develop applications, and run tests. You can download Ganache by navigating to http://truffleframework.com/ganache and clicking the "Download" button.
- Truffle - 

## Agenda
- Setting up the development environment
- Writing the smart contract
- Compiling and migrating the smart contract
- Creating a user interface to interact with the smart contract
- Interacting with the dapp in a browser

## Task
In fSD during a happy hour we have an issue on establishing a consensus on which song will play next. 
Your taks is to create ĐApp based on Ethereum for adding a song from Youtube to a playlist. 

As an initial proof of concept, in fSD we want to see a DApp which in every moment returns top song.

Our job is to write the smart contract and front-end logic for this ĐApp.

### Playlist Contract

### Song Contract

#### Variables:
- proposer - address - account that has added a song
- voters - address[] - list of accounts that have voted for this song

#### Functionalities:
- addSong - constructor function that 
- voteForSong
- removeFromPlaylist - N number of users must call this method
- getCurrentSong - retrieves top song to play

## Installation
- `npm install -g ganache-cli`
- `npm install -g traffle`

## Running
- run a local blockchain RPC server to test and develop against `ganache-cli`
- Create an account with a seed phrase to Metamask

## Initialize empty project
- Initialize empty project with Truffle `truffle init`
- Build test project `truffle compiler`
- Update `truffle.js` with network
- Run migrations `truffle migrate`
- 