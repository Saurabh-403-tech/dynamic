# Dynamic Pricing Token

A basic ERC20-like token with dynamic pricing based on volume. This smart contract allows users to buy tokens at a price determined by the amount of tokens in circulation.

## Contract Address
```
0x6f828A7a7666869645E644a6394E48aF64E0f159
```

## Features
- Token purchase with dynamic pricing
- Basic transfer functionality
- Emits events for transfers

## Prerequisites
Ensure you have the following installed:
- Node.js
- Hardhat or Truffle
- MetaMask (for interacting with the deployed contract)

## Installation
Clone the repository and install dependencies:
```bash
npm install
```

## Deployment
To deploy the contract:
```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network <network-name>
```

## Usage
1. Deploy the contract on a blockchain network.
2. Interact with the contract using MetaMask or any web3 wallet.
3. Use the `buyTokens` function to purchase tokens.

## License
This project is licensed under the MIT License.
