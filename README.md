\```markdown
# Project Setup

## Install Dependencies

Open a terminal and navigate to the project directory. Run the following command to install all necessary dependencies:

\```bash
npm install
\```

## Compile the Smart Contract

Run the following command to compile the smart contract:

\```bash
npx hardhat compile
\```

## Start the Hardhat Local Node

Run the following command to start the Hardhat local node:

\```bash
npx hardhat node
\```

## Deploy the Smart Contract

Run the following command to deploy the smart contract:

\```bash
npx hardhat run scripts/scripts_1.js --network localhost
\```

## Update Contract Address in React Application

Update the contract address in your React application:

\```javascript
const ContractAddress = 'YOUR_NEW_CONTRACT_ADDRESS';
\```

## Run the React Application

Run the following command to start the React application:

\```bash
npm start
\```

## Add Localhost Network to MetaMask

1. Click on the MetaMask icon in your browser to open it.
2. Click on the network dropdown at the top (it might say "Ethereum Mainnet").
3. Click on "Add Network".
4. Fill in the following details for the local Hardhat network:
    - **Network Name**: HardLocal
    - **New RPC URL**: `http://localhost:8545`
    - **Chain ID**: `31337`
    - **Currency Symbol**: `ETH`
5. Click "Save".

## Import Hardhat Accounts to MetaMask

1. When you start the Hardhat node (`npx hardhat node`), Hardhat provides a list of accounts and private keys.
2. In MetaMask, click on the account icon in the top right corner.
3. Click on "Import Account".
4. Paste one of the private keys from the Hardhat node output.
5. Repeat for as many accounts as needed.
   \```
