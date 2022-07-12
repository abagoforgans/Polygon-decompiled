contract main {




// =====================  Runtime code  =====================


array of address stor0;

function _fallback() payable {
    revert
}

function sub_54daa481(?) payable {
    require calldata.size - 4 >= 32
    s = 0
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        mem[100] = msg.sender
        mem[132] = arg1
        require ext_code.size(stor0[uint8(idx)])
        staticcall stor0[uint8(idx)].allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        if uint8(idx) >= stor0.length:
            return 0
        return stor0[uint8(idx)]
    return 0
}

function sub_1167061a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    stor0.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
}



}
