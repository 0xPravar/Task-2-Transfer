// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract sendEther {

    function transferEther(address payable _wallet, uint256 _amount)
        external
        payable
        returns (uint256)
    {
        require(_amount <= msg.value);

        require(address(this).balance >= _amount, "Insufficient balance in the contract");
        _wallet.transfer(_amount);
        return address(this).balance;
    }

}
