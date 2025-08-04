# 🪙 Minting ACK Token Guide

**Purpose:** Step-by-step instructions to mint AnsonCryptoToken (ACK) on a testnet using Remix IDE and MetaMask.

---

## 🧰 Prerequisites

Before you begin, ensure the following are set up:

- ✅ Remix IDE
- ✅ MetaMask wallet installed and connected
- ✅ Testnet ETH
- ✅ ACK token smart contract deployed

---

## 1️⃣ Connect MetaMask to Remix

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Click the **"Deploy & Run Transactions"** tab (📦 icon)
3. In the **Environment** dropdown, select `Injected Provider - MetaMask`
4. Approve the connection in MetaMask

> 🧠 This allows Remix to use your MetaMask wallet for transactions.

---

## 2️⃣ Load the ACK Contract

1. In Remix, open your [AnsonCryptoToken.sol](/contracts/AnsonCryptoToken.sol) file
2. Compile it using the **Solidity Compiler** tab (🛠️ icon)
   - Select the correct compiler version (e.g., `0.8.20`)
   - Click **Compile**
3. Go to the **Deploy & Run Transactions** tab
   - Ensure the correct contract is selected (e.g., `AnsonCryptoToken`)
   - If already deployed, paste the deployed address under **At Address** and click **At**

> 🧠 This loads the contract instance so you can interact with it.

---

## 3️⃣ Mint ACK Tokens

Assuming your contract includes a `mint(address to, uint256 amount)` function:

1. In the contract interface, locate the `mint` function
2. Input parameters:
   - `to`: your MetaMask wallet address (or another recipient)
   - `amount`: number of tokens to mint  
     _(e.g., `100000000000000000000` for 100 ACK with 18 decimals)_
3. Click **Transact**
4. Confirm the transaction in MetaMask

> 🧪 Example: Mint 100 ACK to your wallet  
> `mint("0xYourWalletAddress", 100 * 10^18)`

---

## 4️⃣ Verify Minting

- Open MetaMask
- Add ACK token manually:
  - Click **Import Tokens**
  - Paste the contract address
  - Set decimals (e.g., `18`)
  - Confirm

---

## 🧾 Notes & Best Practices

- 🔐 Only authorized addresses should be allowed to mint (use `onlyOwner` or `AccessControl`)
- 🧮 Use `SafeMath` or Solidity 0.8+ built-in overflow checks
- 📜 Document minting events for auditability
- 🧪 Test on multiple accounts before mainnet deployment

