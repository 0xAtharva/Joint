// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "solmate/tokens/ERC721.sol";
import "solmate/utils/LibString.sol";

contract Joint is ERC721 {
    using LibString for uint256;

    constructor(
        string memory _name, 
        string memory _symbol
    ) ERC721(_name,_symbol) {}

    function tokenURI(uint256 id) public pure override returns (string memory) {
        return string.concat("base/",id.toString());
    }

}
