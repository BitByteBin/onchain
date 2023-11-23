// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

library Random {
  function random(uint seed, uint256 id, uint256 size) internal pure returns (uint256) {
    uint randomHash = uint(keccak256(abi.encodePacked(id, size, seed)));
    return randomHash % size;
  }

  function random(uint seed, uint256 id, uint256 size, uint count) internal pure returns (uint256) {
    uint randomHash = uint(keccak256(abi.encodePacked(id, size, seed, count)));
    return randomHash % size;
  }
}
