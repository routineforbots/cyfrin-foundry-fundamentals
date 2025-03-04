// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State variables
    address public owner;
    
    // Events
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    
    // Constructor
    constructor() {
        owner = msg.sender;
    }
    
    // Modifiers
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
    // Functions
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
    
    address[] public funders;
    uint256 public amount;

    // Add your contract logic here
    function FundMe() public payable {
        amount += msg.value;
        funders.push(msg.sender);
    }
}
