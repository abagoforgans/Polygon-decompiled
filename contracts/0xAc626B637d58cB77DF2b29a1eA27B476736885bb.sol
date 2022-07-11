contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint64 sub_07e2da96; offset 160
address uniswapPairAddress;
mapping of uint128 sub_05959117;

function sub_05959117(?) payable {
    require calldata.size - 4 >= 32
    return sub_05959117[arg1]
}

function sub_07e2da96(?) payable {
    return sub_07e2da96
}

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function uniswapPair() payable {
    return uniswapPairAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == operatorAddress)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    operatorAddress = arg1
}

function sub_893355fe(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == operatorAddress
    if sub_07e2da96 >= arg1:
        revert with 0, 'HIGHER_BLOCKS_ONLY'
    sub_05959117[arg1 << 192] = arg2
    sub_07e2da96 = arg1
}

function sub_ad550f60(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < arg1:
        mem[0] = uint64(sub_07e2da96 - uint8(idx))
        mem[32] = 3
        if not sub_05959117[stor2 - uint8(idx) << 192]:
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = uint64(sub_07e2da96 - uint8(idx))
        mem[32] = 3
        idx = idx + 1
        s = s + 1
        t = t + sub_05959117[stor2 - uint8(idx) << 192]
        continue 
    if uint8(s) <= 0:
        revert with 0, 'NO_PRICES_IN_INTERVAL'
    if uint8(s):
        return uint128(t) / uint8(s) << 128, uint8(s)
    revert
}



}
