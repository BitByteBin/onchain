import { ethers } from "hardhat";

async function main() {
  const erc721oc = await ethers.deployContract("ERC721oc");

  await erc721oc.waitForDeployment();

  console.log(
    `ERC721oc deployed to ${erc721oc.target}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
