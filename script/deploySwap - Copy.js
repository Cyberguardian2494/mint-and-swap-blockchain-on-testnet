const hre = require("hardhat");

async function main() {
  const ackAddress = "0x..."; // ACK Contract address from previous remix deployment
  const msdAddress = "0x..."; // MSD Contract address from previous remix deployment
  const exchangeRate = 10; // 1 ACK = 10 MSD (you can adjust this as needed but no decimals)

  const Swap = await hre.ethers.getContractFactory("SwapACKtoMSD");
  const swap = await Swap.deploy(ackAddress, msdAddress, exchangeRate);
  await swap.waitForDeployment();

  console.log(`Swap contract deployed to: ${await swap.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
