import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("OnChain Metadata", function () {
  async function deployFixture() {
    const [owner, otherAccount] = await ethers.getSigners();

    const TEST = await ethers.getContractFactory("TEST");
    const test = await TEST.deploy();

    return { test, owner, otherAccount };
  }

  describe("TokenURI", function () {
    it("Should set traits and return valid json", async function () {
      const { test, owner } = await loadFixture(deployFixture);

      await Promise.all([
        await test.setTraits([
          { key: "Hat", value: "Big Hat" },
          { key: "Hat", value: "No Hat" },
          { key: "Hat", value: "Small Hat" },
          { key: "Shoes", value: "No Shoes" },
          { key: "Shirt", value: "No Shirt" },
          { key: "Key", value: "Big Hat" },
        ]),
        await test.setTraitValues("Key", "Golden Key"),
      ]);
      let tokenURI = await test.tokenURI(1);
      tokenURI = tokenURI.replace("data:application/json;base64,", "").replaceAll("=", "");
      //console.log(tokenURI);
      let data = atob(tokenURI);
      ///console.log(data);
      let isValidJson = false;
      try {
        let jsonData = JSON.parse(data);
        console.log(jsonData);
        if (jsonData.attributes[0].value == "Big Hat") {
          isValidJson = true;
        }
      } catch (e) {
        //console.log(e);
      }

      expect(isValidJson).to.be.true;
    });

  });
});
