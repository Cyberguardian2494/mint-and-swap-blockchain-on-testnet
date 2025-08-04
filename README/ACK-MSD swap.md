# 🔁 ACK–MSD Token Swap Project

This repository documents the second phase of the ACK ecosystem: the creation of a decentralized token swap mechanism between **AnsonCryptoToken (ACK)** and **MockStableDollar (MSD)** on the Sepolia testnet.

The goal of this project is to simulate a simple DEX-like experience where users can swap ACK for MSD at a fixed exchange rate. It demonstrates smart contract interaction, liquidity management, and ERC-20 token integration using Hardhat.

---

## 📦 Repo Contents

| Path                | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `contracts/`        | Contains the `SwapACKtoMSD.sol` and `MockStableDollar.sol` contracts |
| `scripts/`          | Deployment and interaction scripts using Hardhat             |
| `guides/`           | Step-by-step walkthroughs for minting MSD and testing swaps  |
| `README.md`         | Project overview and blueprint                               |

---

## 🧠 Project Overview

- **Tokens Involved:**
  - `ACK`: AnsonCryptoToken (ERC-20)
  - `MSD`: MockStableDollar (ERC-20)
- **Swap Mechanism:** Fixed-rate swap via smart contract
- **Network:** Sepolia Testnet
- **Tools Used:** Hardhat, Ethers.js, MetaMask, Sepolia Etherscan

---

## 🧪 Project Blueprint

This section outlines the technical flow and rationale behind the swap system.

---

### 🧱 Why We Used Hardhat

Hardhat was chosen for its:

- 🧪 Local testing environment with built-in EVM
- 🔧 Scriptable deployment and interaction via Ethers.js
- 🧾 Easy integration with Sepolia testnet
- 🧠 Console-based debugging and contract introspection

Hardhat allowed us to simulate real-world token interactions before deploying to Sepolia.

---

### 🪙 Minting MSD (MockStableDollar)

- Created a simple ERC-20 token contract[MockStableDollar.sol](/contracts/MockUSD.sol) using OpenZeppelin templates
- Deployed to Sepolia using Hardhat scripts
- Minted MSD tokens to the deployer wallet for initial liquidity

---

### 🔁 Writing the Swap Contract

- Developed [SwapACKtoMSD.sol](/contracts/SwapACKtoMSD.sol) to:
  - Accept ACK tokens from users
  - Dispense MSD tokens at a fixed exchange rate
  - Track liquidity and balances
- Used `IERC20` interfaces for safe token transfers
- Included functions:
  - `depositMSD(uint256 amount)`
  - `swapACKForMSD(uint256 ackAmount)`
  - `withdrawACK(uint256 amount)` (optional for owner)

---

### 🚀 Deploying the Swap Contract

- Used Hardhat deployment script to:
  - Deploy `SwapACKtoMSD` with ACK and MSD addresses
  - Verify deployment on [Sepolia Etherscan](https://sepolia.etherscan.io)
- Stored deployed addresses for reuse in scripts and console

---

### 🧪 Testing the Swap Logic

We tested the contract using Hardhat console and scripts:

1. **Deposited MSD** into the contract for liquidity
2. **Approved ACK** for swap contract to spend
3. **Swapped ACK for MSD** using `swapACKForMSD()`
4. Verified:
   - MSD was transferred to user
   - ACK was collected by contract
   - Balances updated correctly

Example transaction flow:

```js
await msd.approve(swapAddress, ethers.parseUnits("10000", 18));
await swap.depositMSD(ethers.parseUnits("10000", 18));

await ack.approve(swapAddress, ethers.parseUnits("150", 18));
await swap.swapACKForMSD(ethers.parseUnits("150", 18));
