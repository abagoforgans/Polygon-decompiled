contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint256 balances;

function owner() {
    return owner
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2]
}

function newOwner() {
    return newOwner
}

function getBalance(address arg1, address arg2) {
    return balances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function moveTokens(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require arg4 > 0
    if arg4 > balances[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balances[address(arg1)][address(arg2)] -= arg4
    if balances[address(arg1)][address(arg3)] + arg4 < balances[address(arg1)][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    balances[address(arg1)][address(arg3)] += arg4
    emit 0xcd293354: address(arg1), arg4, arg2, arg3
}

function withdrawTokens(address arg1, uint256 arg2) {
    require arg2 > 0
    if arg2 > balances[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balances[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return arg2
}

function depositTokens(address arg1, uint256 arg2) {
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if balances[address(arg1)][address(msg.sender)] + arg2 < balances[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balances[address(arg1)][address(msg.sender)] += arg2
    return arg2
}



}
