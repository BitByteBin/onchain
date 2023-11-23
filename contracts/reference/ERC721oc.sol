// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OnChainTraits} from "../OnChainTraits.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721oc is OnChainTraits, Ownable, ERC721 {
  constructor(string memory name, string memory symbol, string memory description)
  Ownable(msg.sender) ERC721(name, symbol)
  OnChainTraits(name, symbol, description) { }

  function tokenURI(uint id) public override view returns (string memory) {
    return getMetadata(id);
  }

  function reveal(uint _seed) public onlyOwner {
    seed = _seed;
  }
}
