# 🔁 ACK–MSD Swap Project Guide

This guide documents the full process of minting **MockUSD (MSD)** and building a decentralized swap contract to exchange **ACK** for **MSD** on the Sepolia testnet. It covers token deployment, Hardhat setup, contract scripting, deployment, and testing.

---

## 🧱 Phase 1: Setup and Token Deployment

### 🔹 Step 1: Mint MockUSD (MSD) Using Remix

- Open [Remix IDE](https://remix.ethereum.org)
- Create and compile `MSD.sol` (ERC-20 token)
- Deploy using MetaMask connected to Sepolia
- Mint 100,000 MSD tokens to your test wallet

📁 Path: `Test Account\MSD.sol`

✅ After deployment:
- Import MSD as a **custom token** in your MetaMask test wallet

---

### 🔹 Step 2: Transfer ACK to Test Wallet

- Open MetaMask in your **main wallet**
- Use the **transfer** function to send ACK tokens to your test wallet

✅ ACK will appear in the test wallet once imported as a custom token

---

## 🛠️ Phase 2: Scripting with Hardhat

### 🔹 Step 1: Initialize Project

```bash
mkdir ack-msd-swap
cd ack-msd-swap
npm init -y
npm install --save-dev hardhat
npx hardhat
