contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_40e2c29d;
mapping of uint256 sub_3ecf91cc;

function sub_3ecf91cc(?) payable {
    require calldata.size - 4 >= 32
    require sub_40e2c29d[stor2[arg1]].field_0
    return sub_3ecf91cc[arg1]
}

function sub_40e2c29d(?) payable {
    require calldata.size - 4 >= 64
    require sub_40e2c29d[arg1].field_0
    require sub_40e2c29d[arg1][5][address(arg2)].field_0 > 1
    return sub_40e2c29d[arg1][5][address(arg2)].field_0
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_7c401806(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require sub_40e2c29d[arg1].field_1024 <= 3
    if sub_40e2c29d[arg1].field_1024 != 2:
        require sub_40e2c29d[arg1].field_1024 <= 3
        if sub_40e2c29d[arg1].field_1024 != 1:
            require sub_40e2c29d[arg1].field_1024 <= 3
            require not sub_40e2c29d[arg1].field_1024
    sub_40e2c29d[arg1].field_768 = arg2
    sub_3ecf91cc[arg2] = arg1
    emit 0xe2c44fe9: arg1, arg2
    sub_40e2c29d[arg1].field_512 = block.timestamp
}

function sub_e7dc50ab(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require sub_40e2c29d[arg1].field_0
    if arg4:
        sub_40e2c29d[arg1].field_1024 = 2
        sub_40e2c29d[arg1][5][address(arg3)].field_0 = block.timestamp
        emit 0xb8526e14: arg1, arg2, arg3
        emit 0xc3d15495: arg1, arg2, arg3
    else:
        require sub_40e2c29d[arg1][5][address(arg3)].field_0 == 1
        sub_40e2c29d[arg1].field_256--
        sub_40e2c29d[arg1][5][address(arg3)].field_0 = block.timestamp
        emit 0xb8526e14: arg1, arg2, arg3
        if not sub_40e2c29d[arg1].field_256:
            sub_40e2c29d[arg1].field_1024 = 1
            emit Signed(arg1);
}

function getDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require sub_40e2c29d[arg1].field_0
    require sub_40e2c29d[arg1].field_1024 <= 3
    if not sub_40e2c29d[arg1].field_1024:
        return sub_40e2c29d[arg1].field_0, 
               sub_40e2c29d[arg1].field_256,
               sub_40e2c29d[arg1].field_512,
               sub_40e2c29d[arg1].field_768,
               'pending'
    require sub_40e2c29d[arg1].field_1024 <= 3
    if sub_40e2c29d[arg1].field_1024 == 1:
        return sub_40e2c29d[arg1].field_0, 
               sub_40e2c29d[arg1].field_256,
               sub_40e2c29d[arg1].field_512,
               sub_40e2c29d[arg1].field_768,
               160,
               6,
               0
    require sub_40e2c29d[arg1].field_1024 <= 3
    if sub_40e2c29d[arg1].field_1024 == 2:
        return sub_40e2c29d[arg1].field_0, 
               sub_40e2c29d[arg1].field_256,
               sub_40e2c29d[arg1].field_512,
               sub_40e2c29d[arg1].field_768,
               160,
               9,
               0
    require sub_40e2c29d[arg1].field_1024 <= 3
    if sub_40e2c29d[arg1].field_1024 == 3:
        return sub_40e2c29d[arg1].field_0, 
               sub_40e2c29d[arg1].field_256,
               sub_40e2c29d[arg1].field_512,
               sub_40e2c29d[arg1].field_768,
               160,
               8,
               0
    mem[128] = sub_40e2c29d[arg1].field_256
    mem[160] = sub_40e2c29d[arg1].field_512
    mem[192] = sub_40e2c29d[arg1].field_768
    mem[224] = 160
    mem[256] = sub_40e2c29d[arg1].field_0
    mem[288 len ceil32(sub_40e2c29d[arg1].field_0)] = mem[128 len ceil32(sub_40e2c29d[arg1].field_0)]
    return sub_40e2c29d[arg1].field_0, 
           sub_40e2c29d[arg1].field_256,
           sub_40e2c29d[arg1].field_512,
           sub_40e2c29d[arg1].field_768,
           Array(len=sub_40e2c29d[arg1].field_0, data=mem[288 len sub_40e2c29d[arg1].field_0])
}

function sub_c883c506(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require not sub_40e2c29d[arg1].field_0
    if arg2.length:
        mem[(32 * arg2.length) + 128] = block.timestamp
        mem[(32 * arg2.length) + 160] = arg2.length
        mem[(32 * arg2.length) + 192] = 0
        mem[(32 * arg2.length) + 224] = 0
        mem[(32 * arg2.length) + 256] = 0
        sub_40e2c29d[arg1].field_0 = block.timestamp
        sub_40e2c29d[arg1].field_256 = arg2.length
        sub_40e2c29d[arg1].field_512 = 0
        sub_40e2c29d[arg1].field_768 = 0
        sub_40e2c29d[arg1].field_1024 = 0
        sub_40e2c29d[arg1].field_1280 = 0
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
            mem[32] = sha3(arg1, 1) + 5
            sub_40e2c29d[arg1][5][mem[(32 * uint8(idx)) + 140 len 20]].field_0 = 1
            idx = idx + 1
            continue 
    else:
        if not arg3:
            sub_40e2c29d[arg1].field_0 = block.timestamp
            sub_40e2c29d[arg1].field_256 = 0
            sub_40e2c29d[arg1].field_512 = block.timestamp
            sub_40e2c29d[arg1].field_768 = arg1
            sub_40e2c29d[arg1].field_1024 = 1
            sub_3ecf91cc[arg1] = arg1
        else:
            mem[(32 * arg2.length) + 128] = block.timestamp
            mem[(32 * arg2.length) + 160] = arg2.length
            mem[(32 * arg2.length) + 192] = 0
            mem[(32 * arg2.length) + 224] = 0
            mem[(32 * arg2.length) + 256] = 0
            sub_40e2c29d[arg1].field_0 = block.timestamp
            sub_40e2c29d[arg1].field_256 = arg2.length
            sub_40e2c29d[arg1].field_512 = 0
            sub_40e2c29d[arg1].field_768 = 0
            sub_40e2c29d[arg1].field_1024 = 0
            sub_40e2c29d[arg1].field_1280 = 0
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
                mem[32] = sha3(arg1, 1) + 5
                sub_40e2c29d[arg1][5][mem[(32 * uint8(idx)) + 140 len 20]].field_0 = 1
                idx = idx + 1
                continue 
    emit Created(arg1);
}



}
