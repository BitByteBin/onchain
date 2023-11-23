// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Constants} from "./Constants.sol";
import {Base64} from "base64-sol/base64.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {OnChainDataStructs} from "./OnChainDataStructs.sol";

library AssetBuilder {
  function buildSvg(OnChainDataStructs.Metadata memory metadata) public pure returns (string memory) {
    uint cellSize = 30;
    string memory baseSvg = Constants.BASESVG;

    for (uint i = 0; i < metadata.traits.length; i++) {
      uint x = cellSize + cellSize / 2;
      uint y = i * cellSize + cellSize;
      string memory newElement = string(
        abi.encodePacked(
          '<text x="', Strings.toString(x), '" y="', Strings.toString(y), '" fill="white">',
          metadata.traits[i].key, ": ", metadata.traits[i].value,
          '</text>'
      ));
      baseSvg = string(abi.encodePacked(baseSvg, newElement));
    }
    return string(abi.encodePacked(baseSvg, Constants.SVGEND));
  }
}
