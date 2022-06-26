contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_611dc058(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor0[arg2].field_0++
    stor0[arg2][stor0[arg2].field_0].field_0 = arg1
    stor0[arg2][stor0[arg2].field_0].field_256 = block.timestamp
    emit 0x89513cdd: arg2, arg1, block.timestamp
}

function sub_598a337e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * stor0[arg1].field_0) + 128
    mem[96] = stor0[arg1].field_0
    s = 128
    idx = 0
    while idx < stor0[arg1].field_0:
        mem[0] = sha3(arg1, 0)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor0[arg1][idx].field_0
        mem[_12 + 32] = stor0[arg1][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}



}
