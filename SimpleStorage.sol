// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract SimpleStorage {

    // initialized to 0
    uint256 number;

    uint256 favoriteNumber = 5; // variables have view functions

    bool favoriteBool = true;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress = 0x3840639527f3FC43060d5f2460A239dA82B316DB;
    bytes32 favoriteBytes = "cat";

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    // create object
    Person public person = Person({favoriteNumber: 2, name: "Patrick"}); 
   
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // pure and view functions are for reading
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
