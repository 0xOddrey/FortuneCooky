const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("FortuneCooky", function () {
  it("Should Deploy Both Contracts", async function () {
   
    [
    owner,
      _to,
      _to2,
    ] = await ethers.getSigners();
    const line1 = await ethers.getContractFactory("Lines1")
    const line2 = await ethers.getContractFactory("Lines2")
    const line3 = await ethers.getContractFactory("Lines3")
    const line1D = await line1.deploy();
    const line2D = await line2.deploy();
    const line3D = await line3.deploy();
    const Builder = await ethers.getContractFactory("CookyDescriptor", {
      libraries: {
        Lines1: line1D.address,
        Lines2: line2D.address,
        Lines3: line3D.address
      },});
    mockBuilder = await Builder.deploy();
    console.log(mockBuilder.address);


    const Minter = await ethers.getContractFactory("FortuneCooky");
    mockMinter = await Minter.deploy(owner.address, mockBuilder.address);

    await mockMinter.connect(_to).mint(_to.address, 3, { value: "0"});
    let tester = await mockMinter.tokenURI(1);
    console.log(tester);
    let tester2 = await mockMinter.tokenURI(2);
    console.log(tester2);
    let tester3 = await mockMinter.tokenURI(3);
    console.log(tester3);
    let price1 = await mockMinter.getPrice()
    let price2 = await mockMinter.getCurrentPriceAvg()
    console.log(price1, price2)
    expect(await mockMinter.balanceOf(_to.address)).to.equal(3);
    expect(await mockMinter.balanceOf(_to2.address)).to.equal(0);

    await ethers.provider.send("evm_mine", [1662059575]);
    let tester4 = await mockMinter.tokenURI(1);
    console.log(tester4);
    let tester5 = await mockMinter.tokenURI(2);
    console.log(tester5);
    let tester6 = await mockMinter.tokenURI(3);
    console.log(tester6);

  });

});





