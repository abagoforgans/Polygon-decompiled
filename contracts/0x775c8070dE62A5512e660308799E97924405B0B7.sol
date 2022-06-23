contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;

function name() payable {
    return name[0 len name.length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function changeName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit NameChanged(string arg1):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit NameChanged(string arg1):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                         Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                         mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}



}
