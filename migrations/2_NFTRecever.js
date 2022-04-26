const NFTRecever = artifacts.require("NFTRecever");

module.exports = function (deployer) {
  deployer.deploy(NFTRecever);
};
