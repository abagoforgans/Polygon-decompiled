contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 poolAmount;
uint256 withdrawLimit;
uint8 stor3;
mapping of uint256 deposits;
mapping of uint8 stor5;

function userStatus(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_61ffe858(?) {
    return bool(stor3)
}

function transferLock() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function poolAmount() {
    return poolAmount
}

function sub_c6ee20d2(?) {
    return bool(uint8(stor0.field_168))
}

function withdrawLimit() {
    return withdrawLimit
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function sub_bd674692(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if bool(stor3) == arg1:
        revert with 0, 'Invalid withdraw status'
    stor3 = uint8(arg1)
    return 1
}

function sub_79932301(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if withdrawLimit == arg1:
        revert with 0, 'Invalid withdraw status'
    withdrawLimit = arg1
    return 1
}

function sub_eaad0f25(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if bool(uint8(stor0.field_160)) == arg1:
        revert with 0, 'Invalid transfer status'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    return 1
}

function updateContractStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if bool(uint8(stor0.field_168)) == arg1:
        revert with 0, 'Invalid contract status'
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
    return 1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not uint8(stor0.field_168):
        revert with 0, 'Contract is inactive'
    if not arg1:
        revert with 0, 'Invalid address'
    owner = arg1
    return 1
}

function addBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0, 'Invalid address'
    if stor5[address(arg1)]:
        revert with 0, 'Already in blacklist'
    stor5[address(arg1)] = 1
    return 1
}

function removeBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0, 'Invalid address'
    if not stor5[address(arg1)]:
        revert with 0, 'Not in blacklist'
    stor5[address(arg1)] = 0
    return 1
}

function deposit() payable {
    if not uint8(stor0.field_168):
        revert with 0, 'Contract is inactive'
    if msg.value <= 0:
        revert with 0, 'Invalid amount'
    if deposits[address(msg.sender)] + msg.value < deposits[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    deposits[address(msg.sender)] += msg.value
    if poolAmount + msg.value < poolAmount:
        revert with 0, 'SafeMath: addition overflow'
    poolAmount += msg.value
    emit Deposit(msg.sender, msg.value, block.timestamp);
    return 1
}

function withdraw(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_168):
        revert with 0, 'Contract is inactive'
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not stor3:
        revert with 0, 'Withdraw status inactive'
    if stor5[address(arg2)]:
        revert with 0, 'Invalid user'
    if arg1 <= 0:
        revert with 0, 'Invalid Amount'
    if not arg2:
        revert with 0, 'Invalid address'
    if poolAmount < arg1:
        revert with 0, 'Insufficient balance'
    if not arg3:
        if withdrawLimit < arg1:
            revert with 0, 'Greater than withdrawLimit'
    if arg1 > poolAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    poolAmount -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(address(arg2), arg1, block.timestamp);
    return 1
}



}
