 //SPDX-License-Identifer: MIT
pragma solidity >= 0.7.0 <0.9.0;
contract TestToken {
//Codes goes here
uint public profit;
uint public discountedPrice = 1500;
string public STORE_NAME;
constructor(uint _profit, string memory  _STORE_NAME){
    profit = _profit;
     STORE_NAME = _STORE_NAME;
 
 }
 function myStore() public view returns(string memory){
    return(STORE_NAME);
}
 //Function to get the current profit
function get() public view returns (uint){
    return profit;
}
//Function to increment profit by 1
function buy() public {
    profit += 1;
}
    //Function to decrement profit by 1
    function refund() public {
        // This function will fail if profit = 0
        profit -= 1;
    }
    function discount() public returns (uint) {
     return profit -= ((profit * discountedPrice) / 10000);
    }
    function viewProfit() public view returns (uint) {
    return profit;
}
}
