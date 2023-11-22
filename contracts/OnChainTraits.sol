// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

abstract contract OnChainTraits {
  uint public traitTypeCount;
  mapping (uint => string) traitTypes;
  mapping (string => uint[]) traits;
  uint public traitValueCount;
  mapping (uint => string) traitValues;

  function addTraitType(string calldata traitType) public {
    if (traits[traitType].length != 0) { revert(); }
    traitTypes[traitTypeCount] = traitType;
    traits[traitType].push(traitTypeCount);
    traitTypeCount++;
  }

  function setTraitValues(string calldata traitType, string calldata traitValue) public {
    if (traits[traitType].length == 0) { revert(); }
    traitValues[traitValueCount] = traitValue;
    traits[traitType].push(traitValueCount);
    traitValueCount++;
  }
}
