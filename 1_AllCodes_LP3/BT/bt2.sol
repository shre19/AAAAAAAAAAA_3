// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.7 <0.9.0;

contract Bank{

    mapping (address => uint256) balances;

    function deposit() public payable{
        balances[msg.sender]+=msg.value;
    }

    function withdraw(uint256 _amount) public payable{
        require(balances[msg.sender]>= _amount);
        balances[msg.sender]-= _amount;
    }

    function getBal(address add) public view returns (uint256){
        return balances[add];
    }
}
