// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {OnChainTraits} from "../OnChainTraits.sol";

/// @title MinimalTest
/// @author 0xstabby.eth
/// @notice Test for testing OnChainTraits without ERC721 overhead
contract MinimalTest is OnChainTraits {
  constructor(string memory name, string memory symbol, string memory description)
  OnChainTraits(name, symbol, description) { }

  /// @notice TokenURI returns base64URI metadata with a base64URI image
  /// @param id Of ERC721
  function tokenURI(uint id) public view returns (string memory) {
    return getMetadata(id);
  }
}
