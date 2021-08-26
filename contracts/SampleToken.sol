pragma solidity ^0.8.0;

import "openzeppelin-contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20 {

    string public name = "SampleToken";
    string public symbol = "EGT";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 10000 * (10 ** decimals);

    constructor() public {
        _totalSupply = INITIAL_SUPPLY;
        _balances[msg.sender] = INITIAL_SUPPLY;
    }

}