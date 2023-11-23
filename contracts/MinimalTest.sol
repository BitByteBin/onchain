// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {OnChainTraits} from "./OnChainTraits.sol";

contract MinimalTest is OnChainTraits {
  constructor(string memory name, string memory symbol, string memory description)
  OnChainTraits(name, symbol, description) { }

  function tokenURI(uint id) public view returns (string memory) {
    return getMetadata(id);
  }
}
