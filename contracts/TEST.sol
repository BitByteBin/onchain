// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {MetadataBuilder} from "./MetadataBuilder.sol";
import {AssetBuilder} from "./AssetBuilder.sol";
import {Base64Encoder} from "./Base64Encoder.sol";

contract TEST {
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

  function getTraits(uint id) public pure returns (MetadataBuilder.Trait[4] memory) {
    // customize these and get values programatically by id
    return [
      MetadataBuilder.Trait("Hat", "No Hat"),
      MetadataBuilder.Trait("Shoes", "No Shoes"),
      MetadataBuilder.Trait("Shirt", "No Shirt"),
      MetadataBuilder.Trait("Dice", "No Dice")
    ];
  }
}
