import { HardhatUserConfig, task } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-gas-reporter";
import 'hardhat-docgen';
import "@solarity/hardhat-markup";
import 'hardhat-watcher';
import '@primitivefi/hardhat-dodoc';
import { exec } from 'child_process';
require("dotenv").config();

task("mkdocs", "runs mkdocs build to generate docs site based off docs markup")
  .setAction(async () => {
    const { stdout, stderr } = await exec('cp README.md docs/index.md && mkdocs build');
  });

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
    // hmmm, why does this fail the second time running in watch
    coverage: {
      tasks: ['coverage'],
      files: ['./contracts'],
      verbose: true
    },
    test: {
      tasks: ['test', 'mkdocs'],
      files: ['./contracts', './test/**/*', 'README.md'],
      verbose: true,
      runOnLaunch: true
    },
    ci: {
      tasks: [
        'clean',
        { command: 'coverage' },
      ],
      files: ['./contracts', './test/**/*'],
    },
  },
  markup: {
    outdir: "./docs",
    onlyFiles: ["./contracts/**/*"],
    noCompile: false,
    verbose: false,
  },
};

export default config;
