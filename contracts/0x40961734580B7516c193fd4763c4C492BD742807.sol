contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1e7c0197(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x744c1f65: msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x744c1f65: msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128
    return 1
}

function sub_e5fe80b2(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg1.length
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length
        mem[arg1.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x1d5fab7b: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg3.length)) + 320 len arg2.length + arg1.length + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, arg1.length + arg3.length + 160
        else:
            mem[floor32(arg2.length) + arg1.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg2.length) + arg1.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x1d5fab7b: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg3.length)) + 320 len floor32(arg2.length) + arg1.length + arg3.length + -ceil32(arg3.length) + 96]), arg3.length + 128, arg1.length + arg3.length + 160
    else:
        mem[floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
        mem[floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = arg2.length
        mem[floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x1d5fab7b: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg3.length)) + 320 len arg2.length + floor32(arg1.length) + arg3.length + -ceil32(arg3.length) + 96]), arg3.length + 128, floor32(arg1.length) + arg3.length + 192
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg2.length) + floor32(arg1.length) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0x1d5fab7b: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg3.length)) + 320 len floor32(arg2.length) + floor32(arg1.length) + arg3.length + -ceil32(arg3.length) + 128]), arg3.length + 128, floor32(arg1.length) + arg3.length + 192
    return 1
}



}
