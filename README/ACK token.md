# 🪙 AnsonCryptoToken (ACK) Minting Project

Welcome to the official repository for the **AnsonCryptoToken (ACK)** — a custom ERC-20 token deployed on the Sepolia testnet. This repo documents the full lifecycle of ACK token creation, from development and deployment to wallet integration and blockchain verification.

Whether you're learning smart contract development or auditing our process, this repo provides a clear blueprint for minting your own token using open-source tools.

---

## 📦 Repo Contents

| Path                | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `contracts/`        | Contains the ACK ERC-20 smart contract (`AnsonCryptoToken.sol`) |
| `guides/`           | Step-by-step walkthrough of the token minting process        |
| `links/`            | External tools and resources used in this project            |
| `README.md`         | Project overview and repo structure                          |

---

## 🧠 Project Overview

- **Token Name:** AnsonCryptoToken
- **Symbol:** ACK
- **Standard:** ERC-20
- **Network:** Sepolia Testnet
- **Tools Used:** MetaMask, Remix IDE, OpenZeppelin, Sepolia Etherscan

This project was designed to be modular, transparent, and reproducible. It serves as both a learning resource and a technical reference for future token-based experiments.

---

## 🛠️ Minting ACK: Process Blueprint

For a detailed walkthrough, see [guides](/guides/minting-ack.md). Here's a high-level summary:

### 1. 🔐 MetaMask Setup
- Installed MetaMask browser extension
- Connected to the **Sepolia testnet**
- Acquired **sETH** via [Sepolia Faucet](https://sepolia-faucet.pk910.de/?utm_source=ghost#/) for gas fees

### 2. 🧪 Token Development in Remix IDE
- Opened [Remix IDE](https://remix.ethereum.org)
- Created `AnsonCryptoToken.sol` using **OpenZeppelin ERC-20** templates
- Compiled the contract using Solidity compiler v0.8.x

### 3. 🚀 Deployment to Sepolia
- Injected MetaMask into Remix
- Deployed the contract to Sepolia testnet
- Confirmed deployment and contract address

### 4. 🔍 Blockchain Explorer Verification
- Viewed contract and transactions on [Sepolia Etherscan](https://sepolia.etherscan.io)
- Verified token transfers and balances

### 5. 💼 Importing ACK to MetaMask
- Added ACK as a **custom token** in MetaMask
- Verified correct symbol, decimals, and balance

---

## 🔗 Tools & Resources

See [`tools`](/links/tools.md) for a full list of tools used in this project.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE). Feel free to fork, remix, and build upon it.

---

## 🙌 Acknowledgments

Special thanks to:
- [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) for secure contract templates
- Ethereum developer community for documentation and support
- Remix and MetaMask teams for making blockchain development accessible


