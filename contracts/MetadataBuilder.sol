// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {OnChainDataStructs} from "./OnChainDataStructs.sol";

library MetadataBuilder {
  // should take an array of keys and an array of values instead of metadata.traits so they can be any size
  function buildMetadata(uint id, string memory image, OnChainDataStructs.Metadata memory metadata) public pure returns (string memory) {
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

