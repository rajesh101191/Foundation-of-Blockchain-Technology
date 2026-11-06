
/**
 * Truffle Configuration File
 * Project: Counter Smart Contract
 * Ganache GUI: 127.0.0.1:7545
 * Network ID: 5777
 */

module.exports = {
  // Network configurations
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: 5777,
      gas: 6721975,
      gasPrice: 20000000000
    }
  },

  // Mocha testing configuration
  mocha: {
    timeout: 100000
  },

  // Solidity compiler configuration
  compilers: {
    solc: {
      version: "0.8.21",
      settings: {
        optimizer: {
          enabled: false,
          runs: 200
        },
        evmVersion: "london"
      }
    }
  }

  // Truffle DB remains disabled by default.
};
