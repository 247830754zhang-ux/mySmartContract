// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    //Basic types
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0x0000000000000000000000000000000000000000;
    bytes32 favoriteBytes32 = "cat";

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    uint256[] list_of_favorite_numbers = [0,8,18,28];

    struct Person{
        uint256 age;
        string name;
    }

    Person public lilei = Person({
        age:7,
        name:'lilei'
    });

    Person[] public list_of_people;

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //
    mapping(string=>uint256) public nameToFavoriteNumber;

    //calldata memory storage
    function add_person(uint256 age,string memory name) public {
        list_of_people.push(Person(age,name));
        nameToFavoriteNumber[name] = age;
    }
}