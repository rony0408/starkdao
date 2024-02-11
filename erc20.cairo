%builtins
%{
  lib "token"
%}

contract MyToken:
    is_token

@view
func totalSupply() -> (total: felt):
    total = get_total_supply()

@view
func balanceOf(owner: felt) -> (balance: felt):
    balance = get_balance(owner)

@public
@payable
func transfer(to: felt, amount: felt):
    transfer(to, amount)

@public
func approve(spender: felt, amount: felt):
    approve(spender, amount)

@public
func transferFrom(from: felt, to: felt, amount: felt):
    transfer_from(from, to, amount)
