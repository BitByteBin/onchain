// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Random} from "../libs/Random.sol";

/// @title RandomTest
/// @author 0xstabby.eth
/// @notice Test for random lib
contract RandomTest {
  constructor() {
    Random.random(1,1,1);
    Random.random(1,1,1,1);
  }
}
