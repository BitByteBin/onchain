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

      const setTraitsTx = await test.setTraits([
        { key: "Hat", value: "Big Hat" },
        { key: "Hat", value: "No Hat" },
        { key: "Hat", value: "Small Hat" },
        { key: "Shoes", value: "No Shoes" },
        { key: "Shirt", value: "No Shirt" },
        { key: "Key", value: "Big Key" },
        { key: "Key", value: "No Key" }
      ]);

      await setTraitsTx.wait();

      let tokenURI = await test.tokenURI(0);
      tokenURI = tokenURI.replace("data:application/json;base64,", "");
      let data = atob(tokenURI);
      let jsonData;
      try {
        jsonData = JSON.parse(data);
      } catch (e) { }

      expect(jsonData.attributes.length).to.gt(0);
    });
  });
});
