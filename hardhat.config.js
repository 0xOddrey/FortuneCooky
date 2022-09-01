require("@nomiclabs/hardhat-waffle");

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 module.exports = {
  solidity: '0.8.2',
  networks: {
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/account-key`,
      accounts: ['private-key'],
      gas: 2100000,
      gasPrice: 8000000000,
    }
  },
};
