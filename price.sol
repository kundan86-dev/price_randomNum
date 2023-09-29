// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract Price{
    AggregatorV3Interface internal pricefeed;
    

    constructor(address _aggregatorAddress) {
        pricefeed = AggregatorV3Interface(_aggregatorAddress);    
        
    }
    
    function getPriceOf() public view returns(int){
    (,int price,,,)=pricefeed.latestRoundData(); //161799480000 price

    return price;
    }

}