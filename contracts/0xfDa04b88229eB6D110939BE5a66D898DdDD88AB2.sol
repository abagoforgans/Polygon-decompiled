contract main {




// =====================  Runtime code  =====================


#
#  - getPost(uint256 arg1)
#
address owner;
array of struct sub_e8a25269;
array of struct ownerName;
mapping of struct stor3;
uint256 sub_e3ca8633;

function ownerName() payable {
    return ownerName[0 len ownerName.length].field_0
}

function owner() payable {
    return owner
}

function sub_e3ca8633(?) payable {
    return sub_e3ca8633
}

function sub_e8a25269(?) payable {
    return sub_e8a25269[0 len sub_e8a25269.length].field_0
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    return owner
}

function sub_ee5a1c12(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor3[arg1].length > 0
    stor3[arg1].field_1280 = 1
}

function sub_4be1c2cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    ownerName[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = ownerName.length
    mem[ceil32(arg1.length) + 160] = uint256(ownerName.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + ownerName.length + 128 > idx:
        mem[idx + 32] = ownerName[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(ownerName.length) + 160] = 32
    mem[ceil32(arg1.length) + ceil32(ownerName.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(ownerName.length) + 224 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        return memory
          from ceil32(arg1.length) + ceil32(ownerName.length) + 160
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 64
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(ownerName.length) + 224] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(ownerName.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    return memory
      from ceil32(arg1.length) + ceil32(ownerName.length) + 160
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96
}

function sub_cb700db6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    sub_e8a25269[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = sub_e8a25269.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_e8a25269.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_e8a25269.length + 128 > idx:
        mem[idx + 32] = sub_e8a25269[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 160] = 32
    mem[ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 224 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        return memory
          from ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 160
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 64
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 224] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_e8a25269.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    return memory
      from ceil32(arg1.length) + ceil32(sub_e8a25269.length) + 160
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96
}

function sub_4c57e97a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224] = 0
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length < 141
    require arg2.length < 1001
    if bool(stor3[stor4].field_1280) == 1:
        sub_e3ca8633++
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = ceil32(arg1.length) + ceil32(arg2.length) + 160
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = 0
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = stor3[stor4].length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = stor3[stor4].field_0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + stor3[stor4].length + 224 > idx:
            mem[idx + 32] = stor3[stor4][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)] >= arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]
                require idx < arg1.length
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]
                require idx < arg1.length
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]:
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]
                require idx < arg1.length
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]
                require idx < arg1.length
                idx = idx + 1
                continue 
        if arg1.length >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]:
            require arg1.length > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 256 len -arg4.length + ceil32(arg4.length)]
        sub_e3ca8633++
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 256] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 288] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 320] = ceil32(arg1.length) + ceil32(arg2.length) + 160
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 352] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 384] = block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(stor3[stor4].length) + 416] = 0
    stor3[stor4][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor3[stor4][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor3[stor4][2][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    stor3[stor4][3][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])
    stor3[stor4].field_1024 = block.timestamp
    stor3[stor4].field_1280 = 0
    emit 0xd6776279: sub_e3ca8633, Array(len=arg1.length, data=arg1[all])
    return sub_e3ca8633
}



}
