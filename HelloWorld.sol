// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {

  int public currentBalance = 0;

    function withdraw(int money) public{
      if (currentBalance < money){
        revert("NOT ENOUGH MONEY");
      } else {
        currentBalance -= money;
      }
    }

    function deposit(int money) public{
      assert(money > 0);
      require(money < 500000, "DEPOSIT LIMIT REACHED");
      currentBalance += money;
    }
}