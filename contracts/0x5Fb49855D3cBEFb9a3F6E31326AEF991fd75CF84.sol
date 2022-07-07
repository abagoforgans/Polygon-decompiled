contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(string arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address owner; offset 8
uint256 price;
uint256 stor4;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor4 - balanceOf[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BadOwner'
    if arg1 <= 0:
        revert with 0, 'Positive price'
    price = arg1
    return 1
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BadOwner'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'NotEnoughBalance'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BadOwner'
    if not arg1:
        revert with 0, 'NoZeroMint'
    require stor4 <= stor5
    if arg1 > stor5 - stor4:
        revert with 0, 'TooManyMintedTokens'
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    require arg1 + stor4 >= stor4
    stor4 += arg1
    emit 0xfeddf252: arg1, 0, msg.sender
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'NotEnoughBalance'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function buy(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    _68 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 128] = arg2
    mem[ceil32(arg1.length) + 160] = msg.value
    emit 0x4215b97f: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32], msg.sender, _68
    if not msg.value:
        revert with 0, 'NoZeroETHBuy'
    if arg2 < 100000:
        revert with 0, 'NoLess10WEBDBuy'
    require arg2 <= stor4
    if stor4 - arg2 < 0:
        revert with 0, 'TooManyWithdrawTotalTokens'
    if arg1.length != 40:
        revert with 0, 'InvalidWebdAddress'
    if not price:
        if msg.value != 0:
            revert with 0, 'BadExchangeRate'
        require arg2 <= stor4
        if stor4 - arg2 < 0:
            revert with 0, 'NotEnoughSupply'
        require arg2 <= balanceOf[stor2]
        if balanceOf[stor2] - arg2 < 0:
            revert with 0, 'NotEnoughBalance'
        require arg2 <= balanceOf[stor2]
        balanceOf[stor2] -= arg2
        require arg2 <= stor4
        stor4 -= arg2
        mem[ceil32(arg1.length) + 128] = arg2
        emit 0xfeddf252: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], owner, 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        _135 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        mem[ceil32(arg1.length) + 128] = arg2
        mem[ceil32(arg1.length) + 160] = msg.value
        emit Buy(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32], msg.sender, _135);
    else:
        require arg2 * price / price == arg2
        if arg2 * price != msg.value:
            revert with 0, 'BadExchangeRate'
        require arg2 <= stor4
        if stor4 - arg2 < 0:
            revert with 0, 'NotEnoughSupply'
        require arg2 <= balanceOf[stor2]
        if balanceOf[stor2] - arg2 < 0:
            revert with 0, 'NotEnoughBalance'
        require arg2 <= balanceOf[stor2]
        balanceOf[stor2] -= arg2
        require arg2 <= stor4
        stor4 -= arg2
        mem[ceil32(arg1.length) + 128] = arg2
        emit 0xfeddf252: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], owner, 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        _129 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        mem[ceil32(arg1.length) + 128] = arg2
        mem[ceil32(arg1.length) + 160] = msg.value
        emit Buy(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32], msg.sender, _129);
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
