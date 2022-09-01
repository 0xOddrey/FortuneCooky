const main = async () => {

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
    depBuilder = await Builder.deploy();
    console.log(depBuilder.address);

    const Minter = await ethers.getContractFactory("FortuneCooky");
    depMinter = await Minter.deploy('0xDda4A47882A88BA19A8eea7b8cc5703751cA1D9c', depBuilder.address);


    console.log("Contract deployed to:", depMinter.address);
  

  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();
  