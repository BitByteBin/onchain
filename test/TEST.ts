import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("OnChain Metadata", function () {
  // We define a fixture to reuse the same setup in every test.
  // We use loadFixture to run this setup once, snapshot that state,
  // and reset Hardhat Network to that snapshot in every test.
  async function deployFixture() {
    const [owner, otherAccount] = await ethers.getSigners();

    const TEST = await ethers.getContractFactory("TEST");
    const test = await TEST.deploy();

    return { test, owner, otherAccount };
  }

  describe("TokenURI", function () {
    it("Should return valid encoded json", async function () {
      const { test, owner } = await loadFixture(deployFixture);

      let tokenURI = await test.tokenURI(1);
      tokenURI = tokenURI.replace("data:application/json;base64,", "").replaceAll("=", "");
      //console.log(tokenURI);
      let data = atob(tokenURI);
      ///console.log(data);
      let isValidJson = false;
      try {
        let jsonData = JSON.parse(data);
        console.log(jsonData);
        isValidJson = true;
      } catch (e) {
        //console.log(e);
      }

      expect(isValidJson).to.be.true;
    });
  });
});
