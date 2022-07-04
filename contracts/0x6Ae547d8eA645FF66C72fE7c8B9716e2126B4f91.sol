contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function addMintLog(address arg1, uint256 arg2, string arg3, string arg4, bytes32 arg5) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xd4d6c803: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 160, arg5, arg1
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        emit 0xd4d6c803: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 160, arg5, arg1
}

function addBorrowLog(address arg1, uint256 arg2, string arg3, string arg4, bytes32 arg5) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xe4046613: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 160, arg5, arg1
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        emit 0xe4046613: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 160, arg5, arg1
}

function addRedeemLog(address arg1, uint256 arg2, string arg3, string arg4, bytes32 arg5) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xc3eb9fc5: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 160, arg5, arg1
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        emit 0xc3eb9fc5: arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 160, arg5, arg1
}



}
