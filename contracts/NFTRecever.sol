// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract NFTRecever is IERC721Receiver{
    uint internal value=0;

    function setvalue(uint _v) external {
        value=_v;
    }
    function getValue() external view returns(uint){
        return value;
    }
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) public virtual override returns (bytes4){

        return this.onERC721Received.selector;
        
    }

    
}