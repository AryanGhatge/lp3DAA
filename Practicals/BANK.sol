//SPDX-License-Identifier : UNIDENTIFIED
pragma solidity ^0.8.0;

contract Bank{
  address public accHolder;
  uint256 balance = 0;

  constructo() {
     accHolder = msg.sender;
  }

  function withdraw() payable public{
    requires (msg.sender == accHolder, "You are not an account holder");
    requires (balance > 0, "You don't have enough balance");
    payable(msg.sender).transfer(balance);
    balance = 0;
  }

  function deposite() payable public{
    requires (msg.sender == accHolder, "You are not an account holder");
    requires (msg.value > 0 , "You don't have enough balance");
    payable(msg.sender).transfer(balance);
    balance += msg.value;
  }

  function showB() public view return(uint){
    requires (msg.sender == accHolder, "You are not an account holder");
    return balance;
  }
 
}
