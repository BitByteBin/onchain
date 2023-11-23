// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Random} from "../libs/Random.sol";

contract RandomTest {
  constructor() {
    Random.random(1,1,1);
    Random.random(1,1,1,1);
  }
}
