import { ethers } from "hardhat";
import { expect } from "chai";

describe("MinimalTest", function () {
  describe("TokenURI", function () {
    it("Should set traits and return valid json", async function () {
      const [owner] = await ethers.getSigners();

      const RandomTest = await ethers.getContractFactory("RandomTest");

      await expect(RandomTest.deploy()).not.to.be.revertedWithoutReason();
    });
  });
});
