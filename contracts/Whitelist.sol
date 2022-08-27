// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Whitelist{

    uint8 maxWhitelistedAddress;

    mapping(address => bool) public WhitelistedAddress;


    uint8 public numAddressWhitelisted;
    constructor(uint8 _maxWhitelistedAddress){
        maxWhitelistedAddress = _maxWhitelistedAddress;
    }

    function addAddressToWhitelist() public{
        require(!WhitelistedAddress[msg.sender], "Sender has been already whitelisted");
        require(numAddressWhitelisted < maxWhitelistedAddress, "more address can't be added limit reached");

        WhitelistedAddress[msg.sender] = true;

        maxWhitelistedAddress += 1;
    }

}