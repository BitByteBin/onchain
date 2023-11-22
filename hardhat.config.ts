import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-gas-reporter";
import 'hardhat-docgen';
import "@solarity/hardhat-markup";
require("dotenv").config();

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
      }
    }
  },
  gasReporter: {
    coinmarketcap: String(process.env.CMC_API_KEY),
    currency: 'USD',
    gasPrice: 20,
    enabled: true
  }
};

export default config;
