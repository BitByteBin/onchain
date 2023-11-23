import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";
import { deployFixture } from "./Fixtures";

describe("MinimalTest", function () {
  describe("TokenURI", function () {
    it("Should set traits and return valid json", async function () {
      const { test, owner } = await loadFixture(deployFixture);

      let tokenURI = await test.tokenURI(0);
      tokenURI = tokenURI.replace("data:application/json;base64,", "");
      let data = atob(tokenURI);

      let isValidJson = false;
      try {
        JSON.parse(data);
        isValidJson = true;
      } catch (e) { }

      expect(isValidJson).eq(true);
    });
  });
});
