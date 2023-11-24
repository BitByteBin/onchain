// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {OnChainDataStructs} from "./OnChainDataStructs.sol";

/// @title MetadataBuilder
/// @author 0xstabby.eth
/// @notice Lib for building on-chain metadata
library MetadataBuilder {
  /// @notice Build metadata string for id with image and metadata
  /// @param id To build metadata for
  /// @param image To insert in metadata string
  /// @param metadata To insert in metadata string
  /// @return String of metadata
  function buildMetadata(uint id, string memory image, OnChainDataStructs.Metadata memory metadata) internal pure returns (string memory) {
    string memory dataURI = string(abi.encodePacked(
      '{ "name": "', metadata.name, ' #', Strings.toString(id), '",'
      , ' "description": "', metadata.description, '",'
      , ' "attributes": ['));

    uint traitsLength = metadata.traits.length;
    for (uint i; i < traitsLength;) {
      if (i != 0) {
        dataURI = string(abi.encodePacked(dataURI, ","));
      }
      dataURI = string(abi.encodePacked(dataURI
        , '{ "trait_type": "', metadata.traits[i].key, '",'
        , ' "value": "', metadata.traits[i].value, '" }'));
      unchecked { ++i; }
    }

    dataURI = string(abi.encodePacked(dataURI, '], "image": "'));
    dataURI = string(abi.encodePacked(dataURI, image, '" }'));

    return dataURI;
  }
}
