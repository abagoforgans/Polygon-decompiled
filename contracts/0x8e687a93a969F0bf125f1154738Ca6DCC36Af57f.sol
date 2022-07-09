contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function getCoinInfo(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    _53 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _99 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    _139 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _172 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][3].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][3].length
    mem[0] = _172 + 3
    mem[ceil32(arg1.length) + 160] = stor[sha3(_172 + 3)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_172 + 3].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_172 + 3) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = stor[_53]
    mem[mem[64] + 32] = stor1[_99]
    mem[mem[64] + 64] = stor2[_139]
    mem[mem[64] + 96] = 128
    mem[mem[64] + 128] = stor[_172 + 3].length
    mem[mem[64] + 160 len ceil32(stor[_172 + 3].length)] = mem[ceil32(arg1.length) + 160 len ceil32(stor[_172 + 3].length)]
    return stor[_53], stor1[_99], stor2[_139], Array(len=stor[_172 + 3].length, data=mem[mem[64] + 160 len stor[_172 + 3].length])
}

function updateCoinInfo(string arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 288] = 1
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg3
    stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg4
    stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg5
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][3][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit newCoinInfo(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 480 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 192, arg3, arg4, arg5);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
        emit newCoinInfo(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 480 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 192, arg3, arg4, arg5);
}



}
