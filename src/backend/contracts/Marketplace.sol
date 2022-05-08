// SPDX-Licensce-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Marketplace is ReentrancyGuard {
    //State Variable

    address payable public immutable feeAccount;
    uint public  immutable feePercentage;
    uint public itemCount;

    constructor(uint _feePercentage) {
        feeAccount = payable(msg.sender);
        feePercentage = _feePercentage;
    }

} 