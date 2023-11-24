// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/// @title Random
/// @author 0xstabby.eth
/// @notice Libs for (sudo)random number generation
library Random {
  function random(uint seed, uint256 id, uint256 size) internal pure returns (uint256) {
    uint randomHash = uint(keccak256(abi.encode(id, size, seed)));
    return randomHash % size;
  }

  function random(uint seed, uint256 id, uint256 size, uint count) internal pure returns (uint256) {
    uint randomHash = uint(keccak256(abi.encode(id, size, seed, count)));
    return randomHash % size;
  }
}
