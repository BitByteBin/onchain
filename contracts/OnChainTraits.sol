// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {MetadataBuilder} from "./libs/MetadataBuilder.sol";
import {AssetBuilder} from "./libs/AssetBuilder.sol";
import {Base64Encoder} from "./libs/Base64Encoder.sol";
import {Random} from "./libs/Random.sol";
import {OnChainDataStructs} from "./libs/OnChainDataStructs.sol";

/// @title OnChain Traits
/// @author 0xstabby.eth
/// @notice Inherit from this abstract to use on-chain metadata
/// @dev Just setTraits, and return getMetadata from tokenURI in implementation
abstract contract OnChainTraits {
  uint public traitTypeCount;
  mapping (uint => string) traitTypes;
  mapping (string => uint) traitIds;
  mapping (uint => uint[]) traitValueIds;
  uint public traitValueCount;
  mapping (uint => string) traitValues;

  // set this on reveal
  /// @return Seed for setting traits on reveal
  uint public seed;
  /// @return Name for metadata
  string public _name;
  /// @return Symbol for metadata
  string public _symbol;
  /// @return Description for metadata
  string public description;

  /// @notice Initialize metadata with collection values
  /// @param name_ Name for metadata
  /// @param symbol_ Symbol for metadata
  /// @param description_ Description for metadata
  constructor(string memory name_, string memory symbol_, string memory description_) {
    _name = name_;
    _symbol = symbol_;
    description = description_;
  }

  /// @notice Setup traits and values
  /// @param traits Array of traits to setup
  /// @dev Set this in constructor or admin function of implementation
  function _setTraits(OnChainDataStructs.Trait[] memory traits) internal {
    uint traitsLength = traits.length;
    for (uint i; i < traitsLength;) {
      setTraitValues(traits[i].key, traits[i].value);
      unchecked { ++i; }
    }
  }

  /// @notice Set individual trait with value
  /// @param traitType Type of Trait to set
  /// @param traitValue Value of Trait to set
  function setTraitValues(string memory traitType, string memory traitValue) internal {
    bool isNewTrait = traitIds[traitType] == 0;
    if (isNewTrait) {
      unchecked { ++traitTypeCount; }
      traitIds[traitType] = traitTypeCount;
      traitTypes[traitTypeCount] = traitType;
    }

    traitValueIds[traitIds[traitType]].push(traitValueCount);
    traitValues[traitValueCount] = traitValue;
    unchecked { ++traitValueCount; }
  }

  /// @notice Get traits for id
  /// @param id To grab traits for
  /// @dev Can be overridden
  /// @return Array of Traits
  function getTraits(uint id) public virtual view returns (OnChainDataStructs.Trait[] memory) {
    OnChainDataStructs.Trait[] memory result = new OnChainDataStructs.Trait[](traitTypeCount);
    uint traitTypeCountOffset = traitTypeCount + 1;
    for (uint i = 1; i < traitTypeCountOffset;) {
      result[i - 1] =
        OnChainDataStructs.Trait(traitTypes[i], traitValues[traitValueIds[i][
          Random.random(seed, id, traitValueIds[i].length)
        ]]);
      unchecked { ++i; }
    }
    return result;
  }

  /// @notice Get metadata for id
  /// @param id To grab metadata for
  /// @dev Can be overridden
  /// @return String of base64 encoded metadata
  function getMetadata(uint id) public virtual view returns (string memory) {
    return Base64Encoder.encodeMetadata(
      MetadataBuilder.buildMetadata(
        id, getImage(id),
        OnChainDataStructs.Metadata(
          _name,
          description,
          getTraits(id)
        )));
  }

  /// @notice Get image
  /// @param id To get image for
  /// @dev Can be overridden
  /// @return String of base64 encoded svg
  function getImage(uint id) public virtual view returns (string memory) {
    return Base64Encoder.encodeSvg(
      AssetBuilder.buildSvg(
        OnChainDataStructs.Metadata(
          _name,
          description,
          getTraits(id)
        )));
  }
}
