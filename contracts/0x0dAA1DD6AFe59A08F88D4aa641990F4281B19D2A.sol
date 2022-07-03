contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_25dc18e3(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    staticcall arg2.0x5f1d26c8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.'{{uT' with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0xdedfdfd7 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction underflow'
    else:
        return 0
}

function sub_16908097(?) payable {
    require calldata.size - 4 >= 96
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
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if arg1.length != arg2.length:
        revert with 0, 'Arity Mismatch'
    if arg3.length != arg2.length:
        revert with 0, 'Arity Mismatch'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _51 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].0x5f1d26c8 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].'{{uT' with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = ext_call.return_data[0]
        require ext_code.size(address(_51))
        staticcall address(_51).0xdedfdfd7 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 31
        mem[_64 + 32] = 'SafeMath: subtraction underflow'
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s
            continue 
        _65 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 31
        idx = 0
        while idx < 31:
            mem[idx + _65 + 68] = mem[idx + _64 + 32]
            idx = idx + 32
            continue 
        mem[_65 + 68] = mem[_65 + 69 len 31]
        revert with memory
          from mem[64]
           len _65 + -mem[64] + 100
    return s
}



}
