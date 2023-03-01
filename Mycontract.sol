//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Mycontract{
    mapping(uint=>string)names;
    mapping(uint=>Book)public books;
    struct Book{
        string title;
        string author;
    }
    constructor()public{
        names[1]="Adam";
        names[2]="Bruce";
        names[3]="carl";
    }
    function addBook{
        uint _id;
        string memory 
    }
}
