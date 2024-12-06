pragma solidity ^0.8.0;

contract TransferERC20 {
    event MoneySent(address indexed sender, address indexed recipient, uint256 amount);

    function sendMoney(address payable recipient) public payable {
        require(msg.value > 0, "You need to send some Ether"); 
        recipient.transfer(msg.value); 
        emit MoneySent(msg.sender, recipient, msg.value);
    }
}