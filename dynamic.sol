pragma solidity ^0.8.0;

contract DynamicPricingToken {
    string public name = "DynamicPricingToken";
    string public symbol = "DPT";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) public balanceOf;

    uint256 public basePrice = 1 ether;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function buyTokens() public payable {
        uint256 tokensToBuy = msg.value / basePrice;
        require(balanceOf[address(this)] >= tokensToBuy, "Not enough tokens available");
        balanceOf[address(this)] -= tokensToBuy;
        balanceOf[msg.sender] += tokensToBuy;
    }
}
