// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract TransferLogic {
    function transfer(address from, address to, uint256 amount) external {
        require(from.balance >= amount, "Insufficient balance");
        payable(to).transfer(amount);
    }
    
    function getAddress() public view returns (address){
        return address(this);
    }
}