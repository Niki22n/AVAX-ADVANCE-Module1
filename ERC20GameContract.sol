// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ERC20 {
    uint public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;
    string public name = "NIKITA";
    string public symbol = "NKTA";
    uint8 public decimals = 16;

	event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);

    function transfer(address receiver, uint amount_to_transfer) external returns (bool) {
        balanceOf[msg.sender] -= amount_to_transfer;
        balanceOf[receiver] += amount_to_transfer;
        emit Transfer(msg.sender, receiver, amount_to_transfer);
        return true;
    }

    function approve(address spender, uint amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool) {
        allowance[sender][msg.sender] -= amount;
        balanceOf[sender] -= amount;
        balanceOf[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

    function mint(uint amount_to_mint) external {
        balanceOf[msg.sender] += amount_to_mint;
        totalSupply += amount_to_mint;
        emit Transfer(address(0), msg.sender, amount_to_mint);
    }

    function burn(uint amount_to_burn) external {
        balanceOf[msg.sender] -= amount_to_burn;
        totalSupply -= amount_to_burn;
        emit Transfer(msg.sender, address(0), amount_to_burn);
    }
}
