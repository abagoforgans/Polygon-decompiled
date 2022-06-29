contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
array of uint256 metadataURI;
address stor7;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'function only available to owner'
    emit OwnershipTransferred(stor7, arg1);
    stor7 = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor7 != msg.sender:
        revert with 0, 'function only available to owner'
    metadataURI[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit UpdatedMetadataURI(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit UpdatedMetadataURI(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}



}
