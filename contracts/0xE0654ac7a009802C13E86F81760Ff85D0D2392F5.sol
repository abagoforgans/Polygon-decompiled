contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of struct sub_6fca1744;
mapping of uint8 stor53;
mapping of uint8 stor54;

function isNode(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor53[arg1])
}

function sub_6fca1744(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_6fca1744[arg1][1].field_0
    idx = 128
    s = 0
    while sub_6fca1744[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_6fca1744[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_6fca1744[arg1].field_0, 
           Array(len=sub_6fca1744[arg1][1].length, data=mem[128 len sub_6fca1744[arg1][1].length]),
           sub_6fca1744[arg1].field_512,
           sub_6fca1744[arg1].field_768
}

function owner() payable {
    return owner
}

function sub_e8b1a9b2(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor54[arg1][arg2])
}

function _fallback() payable {
    revert
}

function addNode(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor53[address(arg1)] = 1
}

function deleteNode(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor53[address(arg1)] = 0
}

function sub_5db27a30(?) payable {
    require calldata.size - 4 >= 160
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 == address(signer)
    return address(signer)
}

function sub_49c79763(?) payable {
    require calldata.size - 4 >= 192
    if stor54[address(arg3)][arg2]:
        revert with 0, 'None already used'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 == address(signer)
    stor54[address(arg3)][arg2] = 1
    emit 0x7caed452: address(arg3), arg1
}

function sub_89f09318(?) payable {
    require calldata.size - 4 >= 192
    require arg3 == sub_6fca1744[arg1].field_0
    if stor54[address(arg3)][arg2]:
        revert with 0, 'None already used'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 == address(signer)
    sub_6fca1744[arg1].field_0 = 0
    sub_6fca1744[arg1].field_256 = 0
    if 31 < sub_6fca1744[arg1][1].length:
        idx = 0
        while sub_6fca1744[arg1][1].length + 31 / 32 > idx:
            sub_6fca1744[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_6fca1744[arg1].field_512 = 0
    sub_6fca1744[arg1].field_768 = 0
    stor54[address(arg3)][arg2] = 1
    emit 0x53da5bb6: address(arg3), arg1
}

function initialize(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[(32 * arg1.length) + 242 len 18]
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    owner = msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 53
        stor53[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_00e2f273(?) payable {
    require calldata.size - 4 >= 288
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor54[address(arg6)][arg4]:
        revert with 0, 'None already used'
    if sub_6fca1744[arg1].field_0:
        revert with 0, 32, 33, 0x644f776e657220616c726561647920657869737420666f7220746869732066696c, mem[ceil32(arg5.length) + 229 len 31]
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg5.length) + 128] = 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg6 == address(signer)
    sub_6fca1744[arg1].field_0 = arg6
    sub_6fca1744[arg1][1][].field_0 = Array(len=arg5.length, data=arg5[all])
    sub_6fca1744[arg1].field_512 = arg2
    sub_6fca1744[arg1].field_768 = arg3
    stor54[address(arg6)][arg4] = 1
    emit 0xe7fb71b8: address(arg6), arg1, arg2, arg3
}

function sub_17ea1d55(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 52
        require arg4 == sub_6fca1744[mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    if stor54[address(arg4)][arg3]:
        revert with 0, 'None already used'
    if arg1.length != arg2.length:
        revert with 0, 'Length does not match'
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = (32 * arg1.length) + 128
    mem[(64 * arg1.length) + (32 * arg2.length) + 320] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(64 * arg2.length) + (64 * arg1.length) + 384] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * arg2.length) + (64 * arg1.length) + 412] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 320 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 128, arg3)
    mem[64] = (64 * arg2.length) + (64 * arg1.length) + 476
    signer = erecover(sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 384 len (127 * arg2.length) + (127 * arg1.length) + 60]), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4 == address(signer)
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 52
        sub_6fca1744[mem[(32 * idx) + 128]].field_512 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _159 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _161 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = arg4
        mem[mem[64] + 32] = _159
        mem[mem[64] + 64] = _161
        emit 0x64ff3004: address(arg4), _159, _161
        idx = idx + 1
        continue 
    stor54[address(arg4)][arg3] = 1
}



}
