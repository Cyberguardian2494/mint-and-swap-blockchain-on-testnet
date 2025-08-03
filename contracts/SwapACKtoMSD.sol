// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SwapACKtoMSD {
    IERC20 public ackToken;
    IERC20 public msdToken;
    address public owner;
    uint256 public exchangeRate; // e.g., 1 ACK = 10 MSD → exchangeRate = 10

    constructor(address _ackToken, address _msdToken, uint256 _rate) {
        ackToken = IERC20(_ackToken);
        msdToken = IERC20(_msdToken);
        exchangeRate = _rate;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function swapACKForMSD(uint256 ackAmount) public {
        uint256 msdAmount = ackAmount * exchangeRate;

        // Transfer ACK from user to contract
        require(ackToken.transferFrom(msg.sender, address(this), ackAmount), "ACK transfer failed");

        // Transfer MSD from contract to user
        require(msdToken.transfer(msg.sender, msdAmount), "MSD transfer failed");
    }

    // Owner can deposit MSD to the contract for liquidity
    function depositMSD(uint256 amount) public onlyOwner {
        require(msdToken.transferFrom(msg.sender, address(this), amount), "Deposit failed");
    }

    // Optional: Owner can withdraw ACK collected from swaps
    function withdrawACK(uint256 amount) public onlyOwner {
        require(ackToken.transfer(msg.sender, amount), "Withdraw failed");
    }
}
