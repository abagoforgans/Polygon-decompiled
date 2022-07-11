contract main {




// =====================  Runtime code  =====================


address owner;
uint64 sub_07e2da96; offset 160
address operatorAddress;
mapping of uint64 sub_6ae4e3d7;

function sub_07e2da96(?) payable {
    return sub_07e2da96
}

function operator() payable {
    return operatorAddress
}

function sub_6ae4e3d7(?) payable {
    require calldata.size - 4 >= 64
    return sub_6ae4e3d7[arg1][arg2]
}

function owner() payable {
    return owner
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

function sub_81538ff8(?) payable {
    require calldata.size - 4 >= 288
    require msg.sender == operatorAddress
    if sub_07e2da96 >= arg1:
        revert with 0, 'HIGHER_BLOCKS_ONLY'
    sub_6ae4e3d7[arg1 << 192][0] = arg2
    sub_6ae4e3d7[arg1 << 192][1] = arg3
    sub_6ae4e3d7[arg1 << 192][2] = arg4
    sub_6ae4e3d7[arg1 << 192][3] = arg5
    sub_6ae4e3d7[arg1 << 192][4] = arg6
    sub_6ae4e3d7[arg1 << 192][5] = arg7
    sub_6ae4e3d7[arg1 << 192][6] = arg8
    sub_6ae4e3d7[arg1 << 192][7] = arg9
    sub_07e2da96 = arg1
}

function sub_9ce618fd(?) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < arg2:
        mem[0] = arg1
        mem[32] = sha3(sub_07e2da96 - uint8(idx) << 192, 2)
        if not sub_6ae4e3d7[stor1 - uint8(idx) << 192][arg1 << 248]:
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = arg1
        mem[32] = sha3(sub_07e2da96 - uint8(idx) << 192, 2)
        idx = idx + 1
        s = s + 1
        t = t + sub_6ae4e3d7[stor1 - uint8(idx) << 192][arg1 << 248]
        continue 
    if uint8(s) <= 0:
        revert with 0, 'NO_PRICES_IN_INTERVAL'
    if uint8(s):
        return arg1 << 248, uint64(t) / uint8(s) << 192, uint8(s)
    revert
}



}
