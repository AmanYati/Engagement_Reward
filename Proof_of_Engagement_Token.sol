// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenMinting {

    // Mapping to store the balances of users
    mapping(address => uint256) public balances;

    // Token supply (total mintable tokens)
    uint256 public totalSupply;

    // Event to notify when tokens are minted
    event TokensMinted(address indexed user, uint256 amount);

    // Mint tokens for users engaging with the platform
    function engage() public {
        uint256 mintAmount = 1000; // Set mint amount (e.g., 1000 tokens)

        // Mint tokens for the user
        balances[msg.sender] += mintAmount;
        totalSupply += mintAmount;

        // Emit event to notify minting
        emit TokensMinted(msg.sender, mintAmount);
    }
}
