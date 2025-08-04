# 🧰 Tools Used for ACK Token Minting

This section outlines the key tools and platforms used to mint the AnsonCryptoToken (ACK) on the Sepolia testnet. These tools support contract deployment, wallet interaction, and transaction verification.

---

## 🔧 Remix IDE

- **URL:** [https://remix.ethereum.org](https://remix.ethereum.org)
- **Purpose:** Compile, deploy, and interact with smart contracts directly in the browser
- **Usage:**
  - Load and compile `AnsonCryptoToken.sol`
  - Deploy to Sepolia using MetaMask
  - Call `mint()` and other contract functions

---

## 🦊 MetaMask

- **URL:** [https://metamask.io](https://metamask.io)
- **Purpose:** Ethereum wallet for managing accounts and signing transactions
- **Usage:**
  - Connect to Remix via `Injected Provider`
  - Approve minting transactions
  - View ACK token balances

---

## 🧪 Sepolia Faucet

- **Faucet:** [sepolia PoW Faucet](https://sepolia-faucet.pk910.de/?utm_source=ghost#/)
- **Purpose:** Mine sETH for paying gas fees

---

## 🔍 Sepolia Etherscan

- **URL:** [https://sepolia.etherscan.io](https://sepolia.etherscan.io)
- **Purpose:** Blockchain explorer for viewing transactions and token balances
- **Usage:**
  - Verify minting transactions
  - Track ACK token transfers
  - Confirm contract deployment

---

## 📦 OpenZeppelin Contracts

- **URL:** [https://docs.openzeppelin.com/contracts](https://docs.openzeppelin.com/contracts)
- **Purpose:** Secure, audited smart contract libraries
- **Usage:**
  - Extend ERC-20 functionality
  - Implement `Ownable`, `AccessControl`, and safe minting logic

