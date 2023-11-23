import { ethers } from "hardhat";

export async function deployFixture() {
  const [owner, otherAccount] = await ethers.getSigners();

  const Test = await ethers.getContractFactory("MinimalTest");
  const test = await Test.deploy("OnChain", "OC", "Some on chain nft description");

  const ERC721oc = await ethers.getContractFactory("ERC721oc");
  const erc721oc = await ERC721oc.deploy("OnChain", "OC", "Some on chain nft description");

  return { test, erc721oc, owner, otherAccount };
}
