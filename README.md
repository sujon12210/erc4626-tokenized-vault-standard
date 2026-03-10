# ERC-4626 Tokenized Vault

A professional implementation of the EIP-4626 standard. This repository provides a robust, gas-optimized vault that represents shares of an underlying yield-bearing asset.

### Why ERC-4626?
Before this standard, every yield aggregator (Yearn, Idle, etc.) had its own unique API for deposits and withdrawals. ERC-4626 standardizes this interface, making it easier for protocols like lending markets and DEXs to integrate with any vault.



### Features
* **Standardized Interface:** Fully compliant with EIP-4626.
* **Share Accounting:** Automatic calculation of shares-to-assets and assets-to-shares.
* **Security:** Built-in protection against inflation attacks using "virtual shares" logic from OpenZeppelin.
* **Yield Integration:** Ready to be extended with strategies (Lending, Liquidity Providing, etc.).

### License
MIT
