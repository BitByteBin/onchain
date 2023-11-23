// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OnChainTraits} from "../OnChainTraits.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {OnChainDataStructs} from "../libs/OnChainDataStructs.sol";

/// @title ERC721oc
/// @author 0xstabby.eth
/// @notice ERC721 OnChainTraits implementation
contract ERC721oc is OnChainTraits, Ownable, ERC721 {
  constructor(string memory name, string memory symbol, string memory description)
  Ownable(msg.sender) ERC721(name, symbol)
  OnChainTraits(name, symbol, description) { }

  function tokenURI(uint id) public override view returns (string memory) {
    return getMetadata(id);
  }

  /// @notice Setup traits and values
  /// @param traits Array of traits to setup
  function setTraits(OnChainDataStructs.Trait[] memory traits) public onlyOwner {
    _setTraits(traits);
  }

  /// @notice Reveal function with seed
  /// @param _seed To initialize metadata with
  function reveal(uint _seed) public onlyOwner {
    seed = _seed;
  }
}
