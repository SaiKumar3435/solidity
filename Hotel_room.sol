//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract HotelRoom{
    enum statuses{Vacant,Occupied};
    Statuses currentStatus;
    address payable public owner;
    constructor(){
        owner=msg.sender;
        currentStatus=Statuses.Vacant;
    }
    modifier onlyWhileVacant{
        require(currentStatus==Statuses.Vacant,"currently occupied");
    }
    function book() payable{
        require(msg.Value>=2 ether."NOT enough ether provided");
        require(currentStatus==Statuses.Vacant,"Currently occupied");
        currentStatus=Statuses.Occupied;
        owner.transfer(msg.value);
    }


    }
}
