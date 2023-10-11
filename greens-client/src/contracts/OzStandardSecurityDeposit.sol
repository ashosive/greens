// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/24a0bc23cfe3fbc76f8f2510b78af1e948ae6651/contracts/utils/escrow/RefundEscrow.sol";


abstract contract OzStandardSecurityDeposit is RefundEscrow {

    function deposit(address refundee) override public virtual payable{
        super.deposit(refundee);
    }

    function approveReturn() external virtual;

    function returnOfDeposit(address payable consumer) virtual external;

}