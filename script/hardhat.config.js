require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    sepolia: {
      url: "https://sepolia.infura.io/v3/API_key", // paste your Infura URL for Sepolia here
      accounts: ["0x..."] // paste your test wallet private key here
    }
  }
};
