require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");
require("hardhat-gas-reporter");
// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 module.exports = {
  solidity: '0.8.2',
  networks: {
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/<<api_key>>`,
      accounts: ['<<private key>>'],
      gas: 2100000,
      gasPrice: 8000000000,
    },
    goerli: {
      url: `https://goerli.infura.io/v3/<<api_key>>`,
      accounts: ['<<private key>>'],
      gas: 2100000,
      gasPrice: 8000000000,
    },
    mainnet: {
      url: `https://mainnet.infura.io/v3/<<api_key>>`,
      accounts: ['<<private key>>'],
    }
  },

  etherscan: {
    apiKey: '<<private key>>',
  },
  abiExporter: {
    path: './abi',
    clear: true,
  },
  mocha: {
    timeout: 100_000,
  }
};
