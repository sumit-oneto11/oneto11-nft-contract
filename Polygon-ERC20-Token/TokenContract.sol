// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "./ERC20.sol";
import "./Ownable.sol";

contract Token is ERC20, Ownable{
    uint256  private _totalSupply = 1000000000000000 * 10 ** 18;

    constructor (string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, _totalSupply);
    }
    
    function burn(uint256 amount) external  {
        _burn(msg.sender, amount);
    }
    
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

}