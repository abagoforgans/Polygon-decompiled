contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
mapping of uint8 stor2;
array of struct sub_c01352d0;

function authorizedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function sub_c01352d0(?) payable {
    return sub_c01352d0[arg1][0 len sub_c01352d0[arg1].length].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function revokeAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit 0x568441e3: arg1
    stor2[address(arg1)] = 0
}

function sub_3ca1d75f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit AuthorityAdded(arg1);
    stor2[address(arg1)] = 1
    sub_c01352d0[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_247fc0fc(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 1
    mem[96] = stor1[arg1][1].length
    mem[128] = stor1[arg1][1].field_0
    idx = 128
    s = 0
    while stor1[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 160
    mem[ceil32(stor1[arg1][1].length) + 128] = stor1[arg1][2].length
    mem[0] = sha3(arg1, 1) + 2
    mem[ceil32(stor1[arg1][1].length) + 160] = stor1[arg1][2].field_0
    idx = ceil32(stor1[arg1][1].length) + 160
    s = 0
    while ceil32(stor1[arg1][1].length) + stor1[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor1[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 160] = stor1[arg1].field_0
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 256] = stor1[arg1].field_768
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 288] = stor1[arg1].field_1024
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 192] = 160
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 320] = stor1[arg1][1].length
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 352 len ceil32(stor1[arg1][1].length)] = mem[128 len ceil32(stor1[arg1][1].length)]
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 224] = stor1[arg1][1].length + 192
    mem[stor1[arg1][1].length + ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 352] = stor1[arg1][2].length
    mem[stor1[arg1][1].length + ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 384 len ceil32(stor1[arg1][2].length)] = mem[ceil32(stor1[arg1][1].length) + 160 len ceil32(stor1[arg1][2].length)]
    if not stor1[arg1][2].length % 32:
        return stor1[arg1].field_0, 
               Array(len=stor1[arg1][1].length, data=mem[128 len ceil32(stor1[arg1][1].length)], mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 352 len stor1[arg1][2].length + stor1[arg1][1].length + -ceil32(stor1[arg1][1].length) + 32]),
               stor1[arg1][1].length + 192,
               stor1[arg1].field_768,
               stor1[arg1].field_1024
    mem[floor32(stor1[arg1][2].length) + stor1[arg1][1].length + ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + 384] = mem[floor32(stor1[arg1][2].length) + stor1[arg1][1].length + ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + -stor1[arg1][2].length % 32 + 416 len stor1[arg1][2].length % 32]
    return stor1[arg1].field_0, 
           Array(len=stor1[arg1][1].length, data=mem[128 len ceil32(stor1[arg1][1].length)], mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 352 len floor32(stor1[arg1][2].length) + stor1[arg1][1].length + -ceil32(stor1[arg1][1].length) + 64]),
           stor1[arg1][1].length + 192,
           stor1[arg1].field_768,
           stor1[arg1].field_1024
}

function sub_33ad28a5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg4.length + 192] = 0
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Not authorized'
    if arg2 > arg5:
        revert with 0, 
                    32,
                    44,
                    0x73636f6e73656e742063616e6e6f74206265207369676e6564206265666f726520746865206372656174696f,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 304 len 20]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 64
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg1.length + 96
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = sub_c01352d0[msg.sender].length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = sub_c01352d0[msg.sender].field_0
    idx = arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352
    s = 0
    while arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + 352 > idx + 32:
        mem[idx + 32] = sub_c01352d0[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1.length + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 128
    _1138 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]])
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 384] = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]])
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x48a29a70: Array(len=arg1.length, data=arg1[all]), mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 384], msg.sender
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 352] = arg2
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 384] = ceil32(arg1.length) + 128
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 416] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 448] = arg5
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_c01352d0[msg.sender].length + (floor32(sub_c01352d0[msg.sender].length - 1) + -sub_c01352d0[msg.sender].length + 32 % 32) + 480] = msg.sender
    stor1[_1138].field_0 = arg2
    stor1[_1138][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor1[_1138][2][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    stor1[_1138].field_768 = arg5
    stor1[_1138].field_1024 = msg.sender
}



}
