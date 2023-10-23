# Usage of require(), assert(), revert() functions

In Solidity, it presents three functions that can be used in the programming language, namely the require, assert, and revert functions. The require function validates the input of the user to satisfy the condition given by the developer. The assert function has a boolean expression as a parameter and revets the value should the boolean expression result to false. The revert function acts like the require function, except that is preferably used for exception handling. 

## Description

The project demonstrates the use of the three functions through an ATM system. It presents three functions that would demontrate the use of the three solidity functions. These three functions are withdraw, deposit, and check balance. The withdraw function withdraws money from the user's ATM account. The deposit function deposits money from the user's ATM account. The check balance function checks the current amount of money the user has from his or her account. 

## Getting Started

### Installing

1. Download the HelloWorld.sol contract
2. Open Remix editor
3. Upload the file to a blank workspace

### Executing program

1. Compile the contract in Remix
2. Use the desired functions
   * function withdraw(int money) public{
      if (currentBalance < money){
        revert("NOT ENOUGH MONEY");
      } else {
        currentBalance -= money;
      }

   * function deposit(int money) public{
      assert(money > 0);
      require(money < 500000, "DEPOSIT LIMIT REACHED");
      currentBalance += money;
    }

## Authors

Contributors names and contact info

Jan Anonuevo
jndanonuevo@mymail.mapua.edu.ph

