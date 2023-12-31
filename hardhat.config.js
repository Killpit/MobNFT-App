require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
const INFURA_API_KEY = "9640b97775d2453f852cf6a847f2efe3";
const SEPOLIA_PRIVATE_KEY = "02302c3114308cf93d56777e3bbf8da3afd9735609072e8b5bbee637f26b2ec6";

module.exports = {
  solidity: "0.8.17",
  networks: {
    hardhat: {
      chainId: 1337
    },
    sepolia: {
      url: `https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
      accounts: [SEPOLIA_PRIVATE_KEY],

    }
  }
};