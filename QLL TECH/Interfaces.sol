// Interfaces gives you possibilities to interact with other smart contracts
// It allows developers to call external contract from within own smart contract.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract qTech {
    string Name;
    function setName(string memory _name) public {
        Name = _name;
    }

    function getName() public view returns(string memory) {
       return Name;
    }
}


interface iQTech {
    function setName(string memory _name) external;
}

contract iQTech {
    function callSetName() public {
        iQTech().setName("QLL Tech")
    }
}