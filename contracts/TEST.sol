// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {MetadataBuilder} from "./MetadataBuilder.sol";
import {AssetBuilder} from "./AssetBuilder.sol";
import {Base64Encoder} from "./Base64Encoder.sol";
import {OnChainTraits} from "./OnChainTraits.sol";
import {Random} from "./Random.sol";

contract TEST is OnChainTraits {
  string public name;
  string public symbol;
  string public description;

  constructor() {
    name = "Some OnChain NFT";
    symbol = "OC";
    description = "Some on chain nft description";
  }

  function tokenURI(uint id) public view returns (string memory) {
    return getMetadata(id);
  }

  function getMetadata(uint id) public view returns (string memory) {
    return Base64Encoder.encodeMetadata(
      MetadataBuilder.buildMetadata(
        id, getImage(id),
        MetadataBuilder.Metadata(
          name,
          description,
          getTraits(id)
        )));
  }

  function getImage(uint id) public view returns (string memory) {
    return Base64Encoder.encodeSvg(
      AssetBuilder.buildSvg(
        MetadataBuilder.Metadata(
          name,
          description,
          getTraits(id)
        )));
  }

  function getTraits(uint id) public view returns (MetadataBuilder.Trait[4] memory) {
    // customize these and get values programatically by id
    return [
      MetadataBuilder.Trait(traitTypes[0], traitValues[traitValueIds["Hat"][
        Random.random(seed, id, traitValueIds["Hat"].length)
      ]]),
      MetadataBuilder.Trait(traitTypes[1], traitValues[traitValueIds["Shoes"][
        Random.random(seed, id, traitValueIds["Shoes"].length)
      ]]),
      MetadataBuilder.Trait(traitTypes[2], traitValues[traitValueIds["Shirt"][
        Random.random(seed, id, traitValueIds["Shirt"].length)
      ]]),
      MetadataBuilder.Trait(traitTypes[3], traitValues[traitValueIds["Key"][
        Random.random(seed, id, traitValueIds["Key"].length)
      ]])
    ];
  }
}
