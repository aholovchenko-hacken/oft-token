// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

/// @notice OFT is an ERC-20 token that extends the OFTCore contract.
contract stHAI_BaseSepolia is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,        // LayerZero endpoint( when sending a message we will communicate with this endpoint)
        address _delegate           // The address of the contract that will be used to manage the token(it can be a DAO, multisig and any other accont)
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {
        _mint(_delegate, 100);
    }
}