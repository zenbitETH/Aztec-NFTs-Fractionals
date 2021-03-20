//Contract based on https://docs.openzeppelin.com/contracts/3.x/erc721
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AztecNFT is ERC1155, Ownable {

    uint256 public constant BOOTS = 0;
    uint256 public constant LADDER = 1;
    uint256 public constant ROPE = 2;
    uint256 public constant TORCH = 3;
    uint256 public constant MACHETE = 4;
    uint256 public constant MAP = 5;
    uint256 public constant CHEST = 6;

    constructor() ERC1155("./{id}.json") {
        _mint(msg.sender, BOOTS, 983, "");
        _mint(msg.sender, LADDER, 486, "");
        _mint(msg.sender, ROPE, 488, "");
        _mint(msg.sender, TORCH, 245, "");
        _mint(msg.sender, MACHETE, 247, "");
        _mint(msg.sender, MAP, 22, "");
        _mint(msg.sender, CHEST, 21, "");
    }

    // function mintNFT(address recipient, string memory tokenURI)
    //     public onlyOwner
    //     returns (uint256)
    // {
    //     _tokenId.increment();

    //     uint256 newItemId = _tokenId.current();
    //     _mint(recipient, newItemId);
    //     _setTokenURI(newItemId, tokenURI);

    //     return newItemId;
    // }
}
