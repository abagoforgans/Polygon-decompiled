contract main {




// =====================  Runtime code  =====================


#
#  - determineType(address arg1)
#
address supportsInterfaceContractAddress;
array of uint256 stor1;
array of uint256 stor2;

function supportsInterfaceContract() payable {
    return supportsInterfaceContractAddress
}

function _fallback() payable {
    revert
}

function erc721InterfaceIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    return (stor1[0.125 / arg1] / 256^(4 * arg1 % 8) << 224)
}

function erc1155InterfaceIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    return (stor2[0.125 / arg1] / 256^(4 * arg1 % 8) << 224)
}

function supportsInterface(address arg1, bytes4[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd04da39000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(supportsInterfaceContractAddress)
    staticcall supportsInterfaceContractAddress.0xd04da390 with:
            gas gas_remaining wei
           args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if ext_call.success:
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _239 = mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64
        require mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 + 128]) + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], address(arg1) << 64 + 128]
        _243 = mem[(32 * arg2.length) + _239 + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _239 + 128])] = mem[(32 * arg2.length) + _239 + 160 len floor32(mem[(32 * arg2.length) + _239 + 128])]
        mem[(32 * _243) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 32
        mem[(32 * _243) + (32 * arg2.length) + ceil32(return_data.size) + 192] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
        mem[(32 * _243) + (32 * arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
        return 32, mem[(32 * _243) + (32 * arg2.length) + ceil32(return_data.size) + 192 len (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32], 
    if return_data.size < 68:
        require arg2.length <= test266151307()
        if not return_data.size:
            if arg2.length:
                mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                idx = idx + 1
                continue 
            mem[(64 * arg2.length) + 160] = 32
            mem[(64 * arg2.length) + 192] = arg2.length
            mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (64 * arg2.length) + 160
               len (161 * arg2.length) + 64
        if arg2.length:
            mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + ceil32(return_data.size) + 161] = 0
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + ceil32(return_data.size) + 161] = 32
        mem[(64 * arg2.length) + ceil32(return_data.size) + 193] = arg2.length
        mem[(64 * arg2.length) + ceil32(return_data.size) + 225 len floor32(arg2.length)] = mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len floor32(arg2.length)]
        return memory
          from (64 * arg2.length) + ceil32(return_data.size) + 161
           len (161 * arg2.length) + 64
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        require arg2.length <= test266151307()
        if not return_data.size:
            if arg2.length:
                mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                idx = idx + 1
                continue 
            mem[(64 * arg2.length) + 160] = 32
            mem[(64 * arg2.length) + 192] = arg2.length
            mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (64 * arg2.length) + 160
               len (161 * arg2.length) + 64
        if arg2.length:
            mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + ceil32(return_data.size) + 161] = 0
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + ceil32(return_data.size) + 161] = 32
        mem[(64 * arg2.length) + ceil32(return_data.size) + 193] = arg2.length
        mem[(64 * arg2.length) + ceil32(return_data.size) + 225 len floor32(arg2.length)] = mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len floor32(arg2.length)]
        return memory
          from (64 * arg2.length) + ceil32(return_data.size) + 161
           len (161 * arg2.length) + 64
    mem[(32 * arg2.length) + 128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, address(arg1) << 64 > test266151307() or 0, address(arg1) << 64 + 36 > return_data.size:
        require arg2.length <= test266151307()
        if not return_data.size:
            if arg2.length:
                mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                idx = idx + 1
                continue 
            mem[(64 * arg2.length) + 160] = 32
            mem[(64 * arg2.length) + 192] = arg2.length
            mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (64 * arg2.length) + 160
               len (161 * arg2.length) + 64
        if arg2.length:
            mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + ceil32(return_data.size) + 161] = 0
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + ceil32(return_data.size) + 161] = 32
        mem[(64 * arg2.length) + ceil32(return_data.size) + 193] = arg2.length
        mem[(64 * arg2.length) + ceil32(return_data.size) + 225 len floor32(arg2.length)] = mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len floor32(arg2.length)]
        return memory
          from (64 * arg2.length) + ceil32(return_data.size) + 161
           len (161 * arg2.length) + 64
    if mem[(32 * arg2.length) + 0, address(arg1) << 64 + 128] > test266151307():
        require arg2.length <= test266151307()
        if not return_data.size:
            if arg2.length:
                mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                idx = idx + 1
                continue 
            mem[(64 * arg2.length) + 160] = 32
            mem[(64 * arg2.length) + 192] = arg2.length
            mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (64 * arg2.length) + 160
               len (161 * arg2.length) + 64
        if arg2.length:
            mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + ceil32(return_data.size) + 161] = 0
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + ceil32(return_data.size) + 161] = 32
        mem[(64 * arg2.length) + ceil32(return_data.size) + 193] = arg2.length
        mem[(64 * arg2.length) + ceil32(return_data.size) + 225 len floor32(arg2.length)] = mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len floor32(arg2.length)]
        return memory
          from (64 * arg2.length) + ceil32(return_data.size) + 161
           len (161 * arg2.length) + 64
    if 0, address(arg1) << 64 + mem[(32 * arg2.length) + 0, address(arg1) << 64 + 128] + 32 > return_data.size:
        require arg2.length <= test266151307()
        if not return_data.size:
            if arg2.length:
                mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                idx = idx + 1
                continue 
            mem[(64 * arg2.length) + 160] = 32
            mem[(64 * arg2.length) + 192] = arg2.length
            mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (64 * arg2.length) + 160
               len (161 * arg2.length) + 64
        if arg2.length:
            mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + ceil32(return_data.size) + 161] = 0
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + ceil32(return_data.size) + 161] = 32
        mem[(64 * arg2.length) + ceil32(return_data.size) + 193] = arg2.length
        mem[(64 * arg2.length) + ceil32(return_data.size) + 225 len floor32(arg2.length)] = mem[(32 * arg2.length) + ceil32(return_data.size) + 161 len floor32(arg2.length)]
        return memory
          from (64 * arg2.length) + ceil32(return_data.size) + 161
           len (161 * arg2.length) + 64
    mem[64] = (32 * arg2.length) + 0, address(arg1) << 64 + ceil32(mem[(32 * arg2.length) + 0, address(arg1) << 64 + 128]) + 160
    if (32 * arg2.length) + 0, address(arg1) << 64 + 128:
        require arg2.length <= test266151307()
        _268 = mem[64]
        mem[mem[64]] = arg2.length
        mem[64] = mem[64] + (32 * arg2.length) + 32
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                require idx < mem[_268]
                mem[(32 * idx) + _268 + 32] = 0
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_268]
            _522 = mem[_268]
            mem[mem[64] + 64 len floor32(mem[_268])] = mem[_268 + 32 len floor32(mem[_268])]
            return 32, mem[mem[64] + 32 len (32 * _522) + 32]
        mem[_268 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < mem[_268]
            mem[(32 * idx) + _268 + 32] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_268]
        _525 = mem[_268]
        mem[mem[64] + 64 len floor32(mem[_268])] = mem[_268 + 32 len floor32(mem[_268])]
        return 32, mem[mem[64] + 32 len (32 * _525) + 32]
    if not return_data.size:
        require arg2.length <= test266151307()
        _300 = mem[64]
        mem[mem[64]] = arg2.length
        mem[64] = mem[64] + (32 * arg2.length) + 32
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                require idx < mem[_300]
                mem[(32 * idx) + _300 + 32] = 0
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_300]
            _528 = mem[_300]
            mem[mem[64] + 64 len floor32(mem[_300])] = mem[_300 + 32 len floor32(mem[_300])]
            return 32, mem[mem[64] + 32 len (32 * _528) + 32]
        mem[_300 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < mem[_300]
            mem[(32 * idx) + _300 + 32] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_300]
        _531 = mem[_300]
        mem[mem[64] + 64 len floor32(mem[_300])] = mem[_300 + 32 len floor32(mem[_300])]
        return 32, mem[mem[64] + 32 len (32 * _531) + 32]
    _262 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_262] = return_data.size
    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require arg2.length <= test266151307()
    _301 = mem[64]
    mem[mem[64]] = arg2.length
    mem[64] = mem[64] + (32 * arg2.length) + 32
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[_301]
            mem[(32 * idx) + _301 + 32] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_301]
        _534 = mem[_301]
        mem[mem[64] + 64 len floor32(mem[_301])] = mem[_301 + 32 len floor32(mem[_301])]
        return 32, mem[mem[64] + 32 len (32 * _534) + 32]
    mem[_301 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[_301]
        mem[(32 * idx) + _301 + 32] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_301]
    _537 = mem[_301]
    mem[mem[64] + 64 len floor32(mem[_301])] = mem[_301 + 32 len floor32(mem[_301])]
    return 32, mem[mem[64] + 32 len (32 * _537) + 32]
}



}
