```solidity
function transfer(address to, uint amount) public {
    require(balanceOf[msg.sender] >= amount, "Insufficient balance");
    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;
    emit Transfer(msg.sender, to, amount);
}
```

This code has a common bug: it does not check for overflow when adding to `balanceOf[to]`.  If `balanceOf[to]` plus `amount` exceeds the maximum value of `uint`, the addition will silently wrap around to a very small number, leading to a loss of funds.