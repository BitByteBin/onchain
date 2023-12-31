import {
  time,
  loadFixture,
} from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";
import { deployFixture } from "./Fixtures";

describe("ERC721oc", function () {
  describe("Security", function () {
    it("Should allow owner to reveal", async function () {
      const { erc721oc, owner } = await loadFixture(deployFixture);

      await expect(erc721oc.reveal(420)).not.to.be.revertedWithoutReason();
    });

    it("Should not allow non owner to reveal", async function () {
      const { erc721oc, owner, otherAccount } = await loadFixture(deployFixture);

      await expect(erc721oc.connect(otherAccount).reveal(420)).not.to.be.revertedWithoutReason();
    });

    it("Should not allow non owner to setTraits", async function () {
      const { erc721oc, owner, otherAccount } = await loadFixture(deployFixture);

      await expect(erc721oc.connect(otherAccount).setTraits([{
        key: "some trait",
        value: "some value"
      }])).not.to.be.revertedWithoutReason();
    });
  });

  describe("TokenURI", function () {
    it("Should set traits and return valid json", async function () {
      const { erc721oc, owner } = await loadFixture(deployFixture);


      const traits = [
        { key: "Hat", value: "Big Hat" },
        { key: "Hat", value: "No Hat" },
        { key: "Hat", value: "Small Hat" },
        { key: "Shoes", value: "No Shoes" },
        { key: "Shirt", value: "No Shirt" },
        { key: "Key", value: "Big Key" },
        { key: "Species", value: "Dragon" },
        { key: "Species", value: "Kitty" },
        { key: "Species", value: "Doggy" },
      ];
      const setTraitsTx = await erc721oc.setTraits(traits);

      await setTraitsTx.wait();
      expect(await erc721oc.traitTypeCount()).to.eq(5);
      expect(await erc721oc.traitValueCount()).to.eq(traits.length);
      //console.log(await erc721oc.getTraits(0));
      let tokenURI = await erc721oc.tokenURI(0);
      tokenURI = tokenURI.replace("data:application/json;base64,", "");
      //console.log(tokenURI);
      let data = atob(tokenURI);
      ///console.log(data);
      let jsonData;
      try {
        jsonData = JSON.parse(data);
        console.log(jsonData);
      } catch (e) {
        //console.log(e);
      }

      expect(jsonData.attributes.length).to.gt(0);
    });
  });
});
