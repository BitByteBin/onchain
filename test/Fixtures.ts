import { ethers } from "hardhat";

export async function deployFixture() {
  const [owner, otherAccount] = await ethers.getSigners();

  // Library deployment
  const Base64Encoder = await ethers.getContractFactory("Base64Encoder");
  const base64Encoder = await Base64Encoder.deploy();
  const base64EncoderAddy = await base64Encoder.getAddress();
  console.log("Base64Encoder Address--->" + base64EncoderAddy)

  const MetadataBuilder = await ethers.getContractFactory("MetadataBuilder");
  const metadataBuilder = await MetadataBuilder.deploy();
  const metadataBuilderAddy = await metadataBuilder.getAddress();
  console.log("MetadataBuilder Address--->" + metadataBuilderAddy)

  const AssetBuilder = await ethers.getContractFactory("AssetBuilder");
  const assetBuilder = await AssetBuilder.deploy();
  const assetBuilderAddy = await assetBuilder.getAddress();
  console.log("AssetBuilder Address--->" + assetBuilderAddy)

  // Contract deployment
  const TEST = await ethers.getContractFactory("TEST",
    {
      libraries: {
        Base64Encoder: base64EncoderAddy,
        MetadataBuilder: metadataBuilderAddy,
        AssetBuilder: assetBuilderAddy
      }
    }
  );
  const test = await TEST.deploy();

  return { test, owner, otherAccount };
}
