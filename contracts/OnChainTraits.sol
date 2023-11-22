// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

abstract contract OnChainTraits {
  uint public traitTypeCount;
  mapping (uint => string) traitTypes;
  mapping (string => uint[]) traitValueIds;
  uint public traitValueCount;
  mapping (uint => string) traitValues;

  uint public seed = 42069;

  struct Trait {
    string key;
    string value;
  }

  function setTraits(Trait[] memory traits) public {
    for (uint i = 0; i < traits.length; ++i) {
      setTraitValues(traits[i].key, traits[i].value);
    }
  }

  function setTraitValues(string memory traitType, string memory traitValue) public {
    if (traitValueIds[traitType].length == 0) {
      traitTypes[traitTypeCount] = traitType;
      ++traitTypeCount;
    }

    traitValueIds[traitType].push(traitValueCount);
    traitValues[traitValueCount] = traitValue;
    ++traitValueCount;
  }
}
