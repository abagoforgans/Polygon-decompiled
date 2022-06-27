contract main {




// =====================  Runtime code  =====================


#
#  - sub_3cb2c7fc(?)
#
address adminAddress;
array of uint256 balanceOf;
array of uint256 stor3;
array of struct stor4;

function sub_3e0f9017(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3e0f9017[arg1].field_7424
}

function sub_44d0574e(?) {
    return sub_3e0f9017[arg1][26][0 len sub_3e0f9017[arg1][26].length].field_0
}

function getRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3e0f9017[arg1].field_768
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function sub_ae316cb0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3e0f9017[arg1].field_7168
}

function sub_d57bb397(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return balanceOf[address(arg1)]
}

function sub_d9079d43(?) {
    return sub_3e0f9017[arg1][2][0 len sub_3e0f9017[arg1][2].length].field_0
}

function sub_dbc45050(?) {
    return sub_3e0f9017[arg1][27][0 len sub_3e0f9017[arg1][27].length].field_0
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function sub_35c49a95(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Only admin can stop the voting'
    if sub_3e0f9017[arg1].field_7688 == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Voting process has been already stopped'
    sub_3e0f9017[arg1].field_7688 = 1
}

function sub_2858eff1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    call 0xce11f26849e17a4d1378149365bbd5af26926e40 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balanceOf[address(msg.sender)] -= msg.value
    emit FundTransfer(address(arg1), msg.value, 0);
}

function getWinners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * sub_3e0f9017[arg1].field_6144) + 128
    mem[96] = sub_3e0f9017[arg1].field_6144
    if not sub_3e0f9017[arg1].field_6144:
        mem[(32 * sub_3e0f9017[arg1].field_6144) + 128] = 32
        mem[(32 * sub_3e0f9017[arg1].field_6144) + 160] = sub_3e0f9017[arg1].field_6144
        idx = 0
        s = 128
        t = (32 * sub_3e0f9017[arg1].field_6144) + 192
        while idx < sub_3e0f9017[arg1].field_6144:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_3e0f9017[arg1].field_6144) + 128
           len (96 * sub_3e0f9017[arg1].field_6144) + 64
    mem[128] = sub_3e0f9017[arg1][24].field_0
    idx = 128
    s = 0
    while (32 * sub_3e0f9017[arg1].field_6144) + 96 > idx:
        mem[idx + 32] = sub_3e0f9017[arg1][s + 24].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3e0f9017[arg1].field_6144) + 128] = 32
    mem[(32 * sub_3e0f9017[arg1].field_6144) + 160] = sub_3e0f9017[arg1].field_6144
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_3e0f9017[arg1].field_6144:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_3e0f9017[arg1].field_6144) + -mem[64] + 192
}

function sub_b3859989(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == uint8(arg4)
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg6.length) + 160 <= test266151307() and ceil32(arg6.length) + 160 >= 128
    require arg6 + arg6.length + 36 <= calldata.size
    if sub_3e0f9017[arg1].field_7680 == 1:
        revert with 0, 'Question id already exists'
    stor3[address(msg.sender)][] = Array(len=arg6.length, data=arg6[all])
    if arg5 != 2:
        if arg5 == 1:
            sub_3e0f9017[arg1].field_256 = 1
    else:
        idx = 0
        while uint8(idx) < uint8(arg4):
            require uint8(idx) < 6
            sub_3e0f9017[arg1][uint8(idx)].field_1280 = uint8(idx)
            mem[0] = arg1
            mem[32] = 2
            sub_3e0f9017[arg1][uint8(idx)].field_1536 = 0
            idx = idx + 1
            continue 
        sub_3e0f9017[arg1].field_256 = 2
    sub_3e0f9017[arg1].field_0 = msg.sender
    sub_3e0f9017[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_3e0f9017[arg1].field_768 = arg3
    sub_3e0f9017[arg1].field_5888 = 0
    sub_3e0f9017[arg1].field_7680 = 1
    sub_3e0f9017[arg1].field_7696 = 0
    sub_3e0f9017[arg1].field_7688 = 0
    mem[ceil32(arg2.length) + ceil32(arg6.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg6.length) + 192] = arg1
    emit 0x3cd90f95: Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + arg6.length + 192 len ceil32(arg6.length) + -arg6.length + 32], arg5
}

function vote(uint256 arg1, uint256 arg2, uint256 arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_3e0f9017[arg1].field_7696 == 1:
        revert with 0, 'Voting process has been declared'
    if sub_3e0f9017[arg1].field_7688 == 1:
        revert with 0, 'Voting process has been stopped'
    if arg3 != msg.value:
        revert with 0, 'Amount not equal to sent value'
    if sub_3e0f9017[arg1].field_768 != msg.value:
        revert with 0, 'Participation fees was not equal'
    stor3[address(msg.sender)][] = Array(len=arg4.length, data=arg4[all])
    if sub_3e0f9017[arg1].field_256 != 1:
        if sub_3e0f9017[arg1].field_256 != 2:
            sub_3e0f9017[arg1].field_5888++
            mem[ceil32(arg4.length) + 128] = msg.sender
            mem[ceil32(arg4.length) + 160] = arg1
            emit 0xcf99bd69: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg2
        else:
            stor4[arg1].field_0++
            stor4[arg1][stor4[arg1].field_0].field_0 = msg.sender
            stor4[arg1][stor4[arg1].field_0].field_256 = arg2
            sub_3e0f9017[arg1].field_5888++
            emit 0xcf99bd69: msg.sender, arg1, arg2
    else:
        require arg2 < 6
        sub_3e0f9017[arg1][arg2].field_1792++
        stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_3e0f9017', 2)) + 7) + sub_3e0f9017[arg1][arg2].field_1792].field_0 = msg.sender
        sub_3e0f9017[arg1][arg2].field_1536++
        sub_3e0f9017[arg1].field_5888++
        mem[ceil32(arg4.length) + 128] = msg.sender
        mem[ceil32(arg4.length) + 160] = arg1
        emit 0xcf99bd69: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg2
}

function sub_dafee1f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_3e0f9017[arg1].field_7424 <= test266151307()
    mem[96] = sub_3e0f9017[arg1].field_7424
    mem[64] = (32 * sub_3e0f9017[arg1].field_7424) + 128
    if not sub_3e0f9017[arg1].field_7424:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3e0f9017[arg1].field_7424:
            require idx < sub_3e0f9017[arg1].field_6144
            mem[0] = sub_3e0f9017[arg1][idx + 24].field_0
            mem[32] = 3
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[stor2[arg1][idx + 24].field_0].length) + 32
            mem[_38] = stor3[stor2[arg1][idx + 24].field_0].length
            mem[0] = sha3(sub_3e0f9017[arg1][idx + 24].field_0, 3)
            mem[_38 + 32] = stor3[stor2[arg1][idx + 24].field_0]
            s = _38 + 32
            t = sha3(mem[0])
            while _38 + stor3[stor2[arg1][s + 24].field_0].length > s:
                mem[0] = arg1
                mem[32] = 2
                mem[s + 32] = balanceOf[t]
                s = s + 32
                t = t + 1
                continue 
            require _38 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 32 < mem[96]
            mem[(32 * _38 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 32) + 128] = _38
            mem[0] = arg1
            mem[32] = 2
            s = _38 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 33
            continue 
        _35 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _43:
            mem[u] = t + -_35 - 64
            _64 = mem[s]
            _73 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _73:
                mem[t + v + 32] = mem[_64 + v + 32]
                v = v + 32
                continue 
            if ceil32(_73) > _73:
                mem[t + _73 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_73) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = sub_3e0f9017[arg1].field_7424
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3e0f9017[arg1].field_7424:
            require idx < sub_3e0f9017[arg1].field_6144
            mem[0] = sub_3e0f9017[arg1][idx + 24].field_0
            mem[32] = 3
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[stor2[arg1][idx + 24].field_0].length) + 32
            mem[_70] = stor3[stor2[arg1][idx + 24].field_0].length
            mem[0] = sha3(sub_3e0f9017[arg1][idx + 24].field_0, 3)
            mem[_70 + 32] = stor3[stor2[arg1][idx + 24].field_0]
            s = _70 + 32
            t = sha3(mem[0])
            while _70 + stor3[stor2[arg1][s + 24].field_0].length > s:
                mem[0] = arg1
                mem[32] = 2
                mem[s + 32] = balanceOf[t]
                s = s + 32
                t = t + 1
                continue 
            require _70 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 32 < mem[96]
            mem[(32 * _70 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 32) + 128] = _70
            mem[0] = arg1
            mem[32] = 2
            s = _70 + floor32(stor3[stor2[arg1][s + 24].field_0].length - 1) + 33
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _75:
            mem[u] = t + -_67 - 64
            _84 = mem[s]
            _87 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _87:
                mem[t + v + 32] = mem[_84 + v + 32]
                v = v + 32
                continue 
            if ceil32(_87) > _87:
                mem[t + _87 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_87) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
