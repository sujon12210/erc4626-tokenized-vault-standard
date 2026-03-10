// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title SimpleVault
 * @dev A basic ERC-4626 vault that wraps an underlying ERC-20 token.
 */
contract SimpleVault is ERC4626 {
    
    /**
     * @param asset The underlying token address (e.g., USDC, WETH)
     * @param name The name of the Vault token
     * @param symbol The symbol of the Vault token
     */
    constructor(
        IERC20 asset,
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) ERC4626(asset) {}

    /**
     * @dev Hook that is called after a deposit. 
     * This is where you would move funds to a strategy (e.g., Aave or Compound).
     */
    function _afterDeposit(uint256 assets, uint256 shares) internal override {
        // Implementation for yield-generating logic goes here
    }

    /**
     * @dev Hook that is called before a withdrawal.
     * This is where you would pull funds back from a strategy.
     */
    function _beforeWithdraw(uint256 assets, uint256 shares) internal override {
        // Implementation for withdrawing from yield-generating logic goes here
    }
}
