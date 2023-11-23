// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {MetadataBuilder} from "./libs/MetadataBuilder.sol";
import {AssetBuilder} from "./libs/AssetBuilder.sol";
import {Base64Encoder} from "./libs/Base64Encoder.sol";
import {Random} from "./libs/Random.sol";
import {OnChainDataStructs} from "./libs/OnChainDataStructs.sol";

abstract contract OnChainTraits {
  uint public traitTypeCount;
  mapping (uint => string) traitTypes;
  mapping (string => uint) traitIds;
  mapping (uint => uint[]) traitValueIds;
  uint public traitValueCount;
  mapping (uint => string) traitValues;

  bool private init;

  // set this on reveal
  uint public seed;
  string public _name;
  string public _symbol;
  string public description;

  constructor(string memory name_, string memory symbol_, string memory description_) {
    _name = name_;
    _symbol = symbol_;
    description = description_;
  }

  function setTraits(OnChainDataStructs.Trait[] memory traits) public {
    for (uint i = 0; i < traits.length; ++i) {
      setTraitValues(traits[i].key, traits[i].value);
    }
  }

  function setTraitValues(string memory traitType, string memory traitValue) internal {
    if (!init) {
      init = true;
    }
    bool isNewTrait = traitIds[traitType] == 0;
    bool isNewTraitArray;
    if (isNewTrait && init) {
      isNewTraitArray = traitValueIds[traitIds[traitType]].length == 0;
      traitIds[traitType] = traitTypeCount;
      traitTypes[traitTypeCount] = traitType;
      ++traitTypeCount;
    }

    traitValueIds[traitIds[traitType]].push(traitValueCount);
    traitValues[traitValueCount] = traitValue;
    ++traitValueCount;
  }

  function getTraits(uint id) public view returns (OnChainDataStructs.Trait[] memory) {
    // this is currently still wrong, returning all traits instead of just one per slot
    OnChainDataStructs.Trait[] memory result = new OnChainDataStructs.Trait[](traitTypeCount);
    for (uint i = 1; i < traitTypeCount; ++i) {
      result[i] =
        OnChainDataStructs.Trait(traitTypes[i], traitValues[traitValueIds[i][
          Random.random(seed, id, traitValueIds[i].length)
        ]]);
    }
    return result;
  }

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