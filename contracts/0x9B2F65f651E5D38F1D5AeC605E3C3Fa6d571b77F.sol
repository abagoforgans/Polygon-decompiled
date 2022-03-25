contract main {




// =====================  Runtime code  =====================


#
#  - getPost(uint256 arg1)
#  - sub_4c57e97a(?)
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
    return arg1
}

function sub_ee5a1c12(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor3[arg1].length
    stor3[arg1] = 1
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



}
