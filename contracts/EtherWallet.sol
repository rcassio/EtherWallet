// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract EtherWallet {

    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

    function deposit() payable public {
    }

    function send(address payable to, uint amount) public {
        require(msg.sender == owner, "sender is not allowed");
        to.transfer(amount);
    }

    function balanceOf() view public returns(uint) {
        return address(this).balance;
    }
}