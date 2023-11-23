// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/// @title OnChainDataStructs
/// @author 0xstabby.eth
/// @notice Shared structs for OnChainTraits
library OnChainDataStructs {
  struct Trait {
    string key;
    string value;
  }
  struct Metadata {
    string name;
    string description;
    Trait[] traits;
  }
}
