// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

library OnChainDataStructs {
  struct Trait {
    string key;
    string value;
  }
  struct Metadata {
    string name;
    string description;
    Trait[] traits;
  }
}
