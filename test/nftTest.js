const NFT = artifacts.require("NFT");

contract("NFT",accounts=>{
    it("tokenURI",async ()=>{
        let instance=await NFT.deployed();
        let safeMint=await instance.safeMint("0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",1);
        let tokenURI=await instance.tokenURI(200)
        assert.equal(tokenURI,"www.first.com");
    })
})