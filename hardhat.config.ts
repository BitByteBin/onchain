import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-gas-reporter";
import 'hardhat-docgen';
import "@solarity/hardhat-markup";
import 'hardhat-watcher';
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
  },
  watcher: {
    compilation: {
      tasks: ['compile'],
      files: ['./contracts'],
      verbose: true,
      clearOnStart: true,
      start: 'echo Running my compilation task now..',
    },
    coverage: {
      tasks: ['coverage'],
      files: ['./contracts'],
      verbose: true
    },
    test: {
      tasks: ['test'],
      files: ['./contracts', './test/**/*'],
      verbose: true
    },
    ci: {
      tasks: [
        'clean',
        { command: 'compile', params: { quiet: true } },
        { command: 'test', params: { noCompile: true, testFiles: ['testfile.ts'] } },
      ],
    },
  },
};

export default config;
