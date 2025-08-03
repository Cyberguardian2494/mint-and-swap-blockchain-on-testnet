/*SPDX-License-Identifier: MIT 
(declares the License type- MIT is permissive and widely used*/

pragma solidity ^0.8.20;
/*Specifies the Solidity compiler version. ^0.8.20 means compatible 
with 0.8.20 and above (but below 0.9.0).*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//Imports the ERC20 implementation from OpenZeppelin — a secure, audited library

contract AnsonCryptoToken is ERC20 {
    address public owner; 
//Adds a public owner variable to track who deployed the contract
    constructor() ERC20("AnsonCryptoToken", "ACK") {
        owner = msg.sender;
        _mint(msg.sender, 100000 * 10 ** decimals());
    }
/*
Sets the token name and symbol
Assigns the deployer (msg.sender) as the owner
Mints 100,000 ACK tokens to the owner, scaled by decimals() (usually 18)
So the actual minted amount is: 100000 * 10^18 = 100,000 ACK with 18 decimal places
*/

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
/*
Defines a modifier that restricts access to certain functions
Ensures only the owner can call functions tagged with onlyOwner
*/

//Allows the owner to mint more tokens to any address (restricted to owner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}