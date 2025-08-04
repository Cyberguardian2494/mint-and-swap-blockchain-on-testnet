# 🔁 ACK–MSD Swap Project Guide

This guide documents the full process of minting **MockUSD (MSD)** and building a decentralized swap contract to exchange **ACK** for **MSD** on the Sepolia testnet. It covers token deployment, Hardhat setup, contract scripting, deployment, and testing.

---

## 🧱 Phase 1: Setup and Token Deployment

### 🔹 Step 1: Mint MockUSD (MSD) Using Remix

- Open [Remix IDE](https://remix.ethereum.org)
- Create and compile [MockUSD.sol](/contracts/MockUSD.sol) (ERC-20 token)
- Deploy using MetaMask connected to Sepolia
- Mint 100,000 MSD tokens to your test wallet

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
```
### Step 2: Choose Project Type
Select JavaScript project

Press Enter to accept defaults

✅ This creates sample folders like contracts/, scripts/, and test/

📁 Create [hardhat.config.js](/script/hardhat.config.js) manually 🧹 Delete Lock.sol from contracts/ to avoid confusion
### Step 3: Install OpenZeppelin Contracts
```bash
npm install @openzeppelin/contracts
```
✅ These are secure, audited templates for ERC-20 tokens and more
### Step 4: Create [SwapACKtoMSD](/contracts/SwapACKtoMSD.sol) Contract
Create a new file in VS Code:

### Step 5: Create Deployment Script
Create a new file in VS Code: [deploySwap](/script/deploySwap.js)

✅ Add:

ACK and MSD token addresses

Fixed exchange rate (use integers, not floating points)

### Step 6: Configure Sepolia Deployment
```bash
npm install --save-dev @nomicfoundation/hardhat-toolbox
```
Open [hardhat.config.js](/script/hardhat.config.js) in VS Code

Add your Sepolia RPC URL and private key

🔗 Get RPC URL from [Infura](https://www.infura.io/):

Create account → Ethereum → Sepolia → Copy endpoint

Format: https://sepolia.infura.io/v3/YOUR_API_KEY
### Step 7: Run Deployment
```bash
npx hardhat run scripts/deploySwap.js --network sepolia
```
✅ You should see:
```bash
MockUSD deployed to: 0x...
```
⚠️ Note: Hardhat v6 and v5 may differ in how contract.deployment is called

## Phase 3: Testing Swap and Balances in Hardhat Console
### Step 1: Start Hardhat Console
```bash
cd ack-msd-swap
npx hardhat console --network sepolia
```
### Step 2: [Load MSD Contract](/contracts/MockUSD.sol)
```bash
const msd = await ethers.getContractAt("MockUSD", "0xYourMSDAddress");
```
### Step 3: [Load ACK Contract](/contracts/AnsonCryptoToken.sol)
```bash
const ack = await ethers.getContractAt("AnsonCryptoToken", "0xYourACKAddress");
```
### Step 4: Load Swap Address
```bash
const swapAddress = "0xYourSwapContractAddress";
```
### Step 5: [Load Swap Contract](/contracts/SwapACKtoMSD.sol)
```bash
const swap = await ethers.getContractAt("SwapACKtoMSD", swapAddress);
```
### Step 6: Approve MSD for Deposit
```bash
await msd.approve(swapAddress, ethers.parseUnits("10000", 18));
```
### Step 7: Deposit MSD into Swap Contract
```bash
await swap.depositMSD(ethers.parseUnits("10000", 18));
```
✅ The contract now holds MSD tokens for future swaps
### Step 8: Approve ACK for Swapping
```bash
await ack.approve(swapAddress, ethers.parseUnits("150", 18));
```
### Step 9: Swap ACK for MSD
```bash
await swap.swapACKForMSD(ethers.parseUnits("150", 18));
```
✅ ACK is debited from your test wallet ✅ MSD is credited to your test wallet
### Step 10: Check MSD Balance in Contract
```bash
const msdBalance = await msd.balanceOf(swapAddress);
console.log("MSD in contract:", ethers.formatUnits(msdBalance, 18));
```
### Step 11: Check ACK Balance in Contract
```bash
const ackBalance = await ack.balanceOf(swapAddress);
console.log("ACK in contract:", ethers.formatUnits(ackBalance, 18));
```
🧾 Notes
✅ Token balances will appear in MetaMask if imported correctly
🔍 All transactions can be viewed on Sepolia Etherscan
🔁 Every time you start a new Hardhat console session, you must reload all contract instances manually

