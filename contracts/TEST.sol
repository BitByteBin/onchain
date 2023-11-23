// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OnChainTraits} from "./OnChainTraits.sol";

contract TEST is OnChainTraits, Ownable {
  constructor() Ownable(msg.sender) {
    name = "Some OnChain NFT";
    symbol = "OC";
    description = "Some on chain nft description";
  }

  function tokenURI(uint id) public view returns (string memory) {
    return getMetadata(id);
  }

  function reveal(uint _seed) public onlyOwner {
    _setSeed(_seed);
  }
}
