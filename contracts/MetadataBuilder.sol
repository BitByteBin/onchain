// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

library MetadataBuilder {
  struct TraitType {
    string key;
  }
  struct Trait {
    string key;
    string value;
  }
  struct Metadata {
    string name;
    string description;
    Trait[4] traits; // hmm I should change how this project works so I don't have to set things in the lib
  }

  function buildMetadata(uint id, string memory image, Metadata memory metadata) internal pure returns (string memory) {
    string memory dataURI = string(abi.encodePacked(
      '{ "name": "', metadata.name, ' #', Strings.toString(id), '",'
      , ' "description": "', metadata.description, '",'
      , ' "attributes": ['));

    for (uint i = 0; i < metadata.traits.length; i++) {
      if (i != 0) {
        dataURI = string(abi.encodePacked(dataURI, ","));
      }
      dataURI = string(abi.encodePacked(dataURI
        , '{ "trait_type": "', metadata.traits[i].key, '",'
        , ' "value": "', metadata.traits[i].value, '" }'));
    }

    dataURI = string(abi.encodePacked(dataURI, '], "image": "'));
    dataURI = string(abi.encodePacked(dataURI, image, '" }'));

    return dataURI;
  }
}

