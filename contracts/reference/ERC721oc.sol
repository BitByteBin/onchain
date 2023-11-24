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

  /// @notice Initialize metadata with collection values
  /// @param name Name for metadata
  /// @param symbol Symbol for metadata
  /// @param description Description for metadata
  /// @dev Pass name/symbol data to base constructors
  constructor(string memory name, string memory symbol, string memory description)
  Ownable(msg.sender) ERC721(name, symbol)
  OnChainTraits(name, symbol, description) { }

  /// @notice TokenURI returns base64URI metadata with a base64URI image
  /// @param id Of ERC721
  function tokenURI(uint id) public override view returns (string memory) {
    return getMetadata(id);
  }

  /// @notice Setup traits and values
  /// @param traits Array of traits to setup
  function setTraits(OnChainDataStructs.Trait[] memory traits) public payable onlyOwner {
    _setTraits(traits);
  }

  /// @notice Reveal function with seed
  /// @param _seed To initialize metadata with
  function reveal(uint _seed) public payable onlyOwner {
    seed = _seed;
  }
}
