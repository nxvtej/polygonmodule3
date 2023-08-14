import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-circom";
import circuits = require('./circuits.config.json')

process.env.BASE_PATH = __dirname;

import "./tasks/newcircuit.ts"

const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        version: "0.8.17",
      },
      {
        version: "0.6.11",
      }
    ]
  },
  circom: {
    inputBasePath: "./circuits",
    ptau: "powersOfTau28_hez_final_12.ptau",
    circuits: JSON.parse(JSON.stringify(circuits))
  },
  networks: {
    mumbai: {
      url: "https://rpc-mumbai.maticvigil.com/",
      chainId: 80001,
      accounts: ['dc53407ade3899626ccbb0a9134051c66bfe46130b6405d44bb60f601e2fbfb9'], // Replace with actual private key
    },
    // Add other networks if needed
  },
};

export default config;
