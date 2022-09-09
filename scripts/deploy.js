const main = async () => {

    const line1 = await ethers.getContractFactory("Lines1")
    const line2 = await ethers.getContractFactory("Lines2")
    const line3 = await ethers.getContractFactory("Lines3")
    const line4 = await ethers.getContractFactory("Lines4")
    const line1D = await line1.deploy();
    const line2D = await line2.deploy();
    const line3D = await line3.deploy();
    const line4D = await line4.deploy();
    const Builder = await ethers.getContractFactory("CookyDescriptor", {
      libraries: {
        Lines1: line1D.address,
        Lines2: line2D.address,
        Lines3: line3D.address,
        Lines4: line4D.address
      },});
    depBuilder = await Builder.deploy();
    console.log(depBuilder.address);

    const Minter = await ethers.getContractFactory("FortuneCooky");
    depMinter = await Minter.deploy('0xe2D51a830e857400A3b43b3689f0871681d932a3', depBuilder.address);


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
  