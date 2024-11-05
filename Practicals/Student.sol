//SPDX-License-Identifier : UNIDENTIFIED
pragma solidity ^0.8.0;

contract StudentData{
  struct Student{
    uint id;
    string name;
    uint age;
  }

  Student[] public students;
  event StudentAdded(uint id, string name, uint age);

  constructor() payable{ 
  }

  function addStudent(uint _id, string memory _name, uint _age) public{
    students.push(Student(_id, _name, _age));
    emit StudentAdded(_id, _name, _age)
  }

  function getStudentCount() public view returns (uint){
    return students.length;
  }

  receive() external payable{
  }

  fallback() external payable{

  }

  function getB() public view returns (uint){
    return address(this).balance;
  }
  
}
