// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Constants} from "./Constants.sol";
import {Base64} from "base64-sol/base64.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {OnChainDataStructs} from "./OnChainDataStructs.sol";

/// @title AssetBuilder
/// @author 0xstabby.eth
/// @notice Lib for building on-chain images
library AssetBuilder {
  /// @notice Build SVG for metadata
  /// @param metadata Metadata to build svg for
  /// @return String of svg
  function buildSvg(OnChainDataStructs.Metadata memory metadata) internal pure returns (string memory) {
    uint cellSize = 30;
    string memory baseSvg = Constants.BASESVG;

    uint traitsLength = metadata.traits.length;
    for (uint i; i < traitsLength;) {
      uint x = cellSize + cellSize << 2;
      uint y = i * cellSize + cellSize;
      string memory newElement = string(
        abi.encodePacked(
          '<text x="', Strings.toString(x), '" y="', Strings.toString(y), '" fill="white">',
          metadata.traits[i].key, ": ", metadata.traits[i].value,
          '</text>'
      ));
      baseSvg = string(abi.encodePacked(baseSvg, newElement));
      unchecked { ++i; }
    }
    return string(abi.encodePacked(baseSvg, Constants.SVGEND));
  }
}
