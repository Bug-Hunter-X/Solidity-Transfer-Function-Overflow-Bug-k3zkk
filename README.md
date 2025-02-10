# Solidity Transfer Function Overflow Bug

This repository demonstrates a common bug in Solidity smart contracts: integer overflow in the `transfer` function.  The `bug.sol` file contains the buggy code.  The `bugSolution.sol` file provides a corrected version with overflow protection.

**Bug:** The original `transfer` function does not check for potential integer overflow when adding to the recipient's balance.  If the recipient's balance plus the transfer amount exceeds the maximum value of a `uint`, the addition will wrap around to a low number, resulting in a loss of funds.

**Solution:** The solution incorporates SafeMath library to prevent this issue. SafeMath includes functions that check for overflows and underflows, reverting the transaction if one occurs.

**How to use:**
1. Clone this repository.
2. Compile and deploy both `bug.sol` and `bugSolution.sol` using a Solidity compiler and a suitable blockchain environment (such as Remix or Hardhat).
3. Test both contracts to observe the behavior under normal and overflow conditions.