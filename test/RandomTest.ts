import { ethers } from "hardhat";
import { expect } from "chai";

describe("RandomTest", function () {
  describe("Random functions don't revert", function () {
    it("Should not revert when calling random functions", async function () {
      const [owner] = await ethers.getSigners();
      const RandomTest = await ethers.getContractFactory("RandomTest");
      await expect(RandomTest.deploy()).not.to.be.revertedWithoutReason();
    });
  });
});
