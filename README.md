# mint-and-swap-Tokens-on-Ethereum-testnet-blockchain

Welcome to the ACK–MSD Token Swap project — a hands-on blockchain learning initiative focused on smart contract development, token creation, and decentralized asset exchange on the Ethereum Sepolia testnet.

---

## 🚀 Project Overview

This project explores the lifecycle of building and testing a token swap system using Solidity, Hardhat, and Remix IDE. It includes:

- ✅ Deploying two ERC-20 tokens:  
  - `ACK`: AnsonCryptoToken — a custom token  
  - `MSD`: MockUSD — a stablecoin-style test token

- 🔁 Writing a smart contract (`SwapACKtoMSD.sol`) to enable direct token swaps between ACK and MSD

- 🧪 Testing swap logic using Hardhat console and Sepolia testnet

- 📄 Documenting the entire process for clarity, auditability, and future reuse

---

## 📚 What I Learned

This project was a deep dive into the building blocks of blockchain development:

### 🧱 Blockchain Fundamentals
- Blockchain is a decentralized ledger that records transactions across a network of nodes.
- It ensures transparency, immutability, and trust without relying on centralized authorities.

### 🌐 Ethereum Blockchain
- Ethereum is a programmable blockchain that supports smart contracts — self-executing code stored on-chain.
- It enables decentralized applications (dApps), token systems, and financial logic.

### 🧠 Smart Contracts
- Smart contracts are written in Solidity and deployed to the Ethereum network.
- They automate logic like token transfers, swaps, and access control without intermediaries.

### 👛 Wallets
- Wallets like MetaMask allow users to manage accounts, sign transactions, and interact with smart contracts.
- Each wallet has a unique address and stores private keys securely.

---

## 🛠 Tools Used are available [here](/links/tools.md)

---

## 📁 Project Structure

```bash
├── contracts/
│   ├── AnsonCryptoToken.sol
│   ├── MockUSD.sol
│   └── SwapACKtoMSD.sol
├── scripts/
│   ├── deploy.js
│   └── swapTest.js
├── guides/
│   ├── minting-ack.md
│   ├── ack-msd swap.md
│   
├── links/
|    ├── tools.md
└── README/
    ├── ACK token.md
    ├── ACK-MSD swap.md
      
