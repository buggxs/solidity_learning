// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// contract is same as class
contract SimpleStorage {

    // initialized to 0
    uint256 number;

    // variables have view functions
    uint256 favoriteNumber = 5;

    bool favoriteBool = true;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress = 0x3840639527f3FC43060d5f2460A239dA82B316DB;
    bytes32 favoriteBytes = "cat";

    // creating an object
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public people;
    // map some data to each other
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
        // map so we can search after the name and retrieve the favoriteNumber
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
