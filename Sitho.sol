pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Sitho is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Sitho(address _owner)  UpgradeableToken(_owner) {
    name = "Sitho";
    symbol = "STH";
    totalSupply = 700000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}