contract main {




// =====================  Runtime code  =====================


address owner;
array of address markets;
address stor2;

function owner() payable {
    return owner
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function _fallback() payable {
    revert
}

function addMarkets(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        markets.length++
        mem[0] = 1
        markets[markets.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function getUserDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = markets.length
    mem[64] = (32 * markets.length) + 128
    if not markets.length:
        idx = 0
        while idx < markets.length:
            mem[0] = 1
            require ext_code.size(markets[idx])
            staticcall markets[idx].getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _81 = mem[_73 + 32]
            _85 = mem[_73 + 64]
            _89 = mem[_73 + 96]
            _94 = mem[64]
            mem[64] = mem[64] + 160
            mem[_94] = 0
            mem[_94 + 32] = 0
            mem[_94 + 64] = 0
            mem[_94 + 96] = 0
            mem[_94 + 128] = 0
            _98 = mem[64]
            mem[64] = mem[64] + 160
            mem[_98] = _81
            mem[_98 + 32] = _85
            require idx < markets.length
            mem[0] = 1
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = markets[idx]
            require ext_code.size(stor2)
            staticcall stor2.checkMembership(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), markets[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_98 + 64] = bool(mem[_115])
            mem[_98 + 96] = _89
            require idx < markets.length
            mem[0] = 1
            mem[_98 + 128] = markets[idx]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _98
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.compAccrued(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _74 = mem[_72]
        _80 = mem[64]
        mem[mem[64]] = 64
        _84 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _84:
            _125 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_125 + 32]
            mem[t + 64] = bool(mem[_125 + 64])
            mem[t + 96] = mem[_125 + 96]
            mem[t + 128] = mem[_125 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_80 + 32] = _74
        return memory
          from mem[64]
           len _80 + (160 * _84) + -mem[64] + 96
    mem[64] = (32 * markets.length) + 288
    mem[(32 * markets.length) + 128] = 0
    mem[(32 * markets.length) + 160] = 0
    mem[(32 * markets.length) + 192] = 0
    mem[(32 * markets.length) + 224] = 0
    mem[(32 * markets.length) + 256] = 0
    mem[var16001] = (32 * markets.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * markets.length) + 128] = 0
        mem[(32 * markets.length) + 160] = 0
        mem[(32 * markets.length) + 192] = 0
        mem[(32 * markets.length) + 224] = 0
        mem[(32 * markets.length) + 256] = 0
        mem[s + 32] = (32 * markets.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < markets.length:
        mem[0] = 1
        require ext_code.size(markets[idx])
        staticcall markets[idx].getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _172 = mem[_168 + 32]
        _174 = mem[_168 + 64]
        _176 = mem[_168 + 96]
        _179 = mem[64]
        mem[64] = mem[64] + 160
        mem[_179] = 0
        mem[_179 + 32] = 0
        mem[_179 + 64] = 0
        mem[_179 + 96] = 0
        mem[_179 + 128] = 0
        _181 = mem[64]
        mem[64] = mem[64] + 160
        mem[_181] = _172
        mem[_181 + 32] = _174
        require idx < markets.length
        mem[0] = 1
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = markets[idx]
        require ext_code.size(stor2)
        staticcall stor2.checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), markets[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_181 + 64] = bool(mem[_188])
        mem[_181 + 96] = _176
        require idx < markets.length
        mem[0] = 1
        mem[_181 + 128] = markets[idx]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _181
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.compAccrued(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _167 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _169 = mem[_167]
    _171 = mem[64]
    mem[mem[64]] = 64
    _173 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _173:
        _192 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_192 + 32]
        mem[t + 64] = bool(mem[_192 + 64])
        mem[t + 96] = mem[_192 + 96]
        mem[t + 128] = mem[_192 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    mem[_171 + 32] = _169
    return memory
      from mem[64]
       len _171 + (160 * _173) + -mem[64] + 96
}

function sub_0f546562(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = markets.length
    if not markets.length:
        require arg2 < markets.length
        require ext_code.size(markets[arg2])
        staticcall markets[arg2].getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * markets.length) + 128 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[(32 * markets.length) + ceil32(return_data.size) + 128] = 0
        mem[(32 * markets.length) + ceil32(return_data.size) + 160] = 0
        mem[(32 * markets.length) + ceil32(return_data.size) + 192] = 0
        mem[(32 * markets.length) + ceil32(return_data.size) + 224] = 0
        mem[(32 * markets.length) + ceil32(return_data.size) + 256] = 0
        mem[(32 * markets.length) + ceil32(return_data.size) + 288] = ext_call.return_data[32]
        mem[(32 * markets.length) + ceil32(return_data.size) + 320] = ext_call.return_data[64]
        require arg2 < markets.length
        mem[(32 * markets.length) + ceil32(return_data.size) + 452] = arg1
        mem[(32 * markets.length) + ceil32(return_data.size) + 484] = markets[arg2]
        require ext_code.size(stor2)
        staticcall stor2.checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), markets[arg2]
        mem[(32 * markets.length) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * markets.length) + ceil32(return_data.size) + 352] = bool(ext_call.return_data[0])
        mem[(32 * markets.length) + ceil32(return_data.size) + 384] = ext_call.return_data[96]
        require arg2 < markets.length
        mem[0] = 1
        mem[(32 * markets.length) + ceil32(return_data.size) + 416] = markets[arg2]
        require arg2 < markets.length
        mem[(32 * arg2) + 128] = (32 * markets.length) + ceil32(return_data.size) + 288
        mem[(32 * markets.length) + (2 * ceil32(return_data.size)) + 452] = arg1
        require ext_code.size(stor2)
        staticcall stor2.compAccrued(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * markets.length) + (2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * markets.length) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        mem[(32 * markets.length) + (4 * ceil32(return_data.size)) + 448] = 64
        mem[(32 * markets.length) + (4 * ceil32(return_data.size)) + 512] = markets.length
        idx = 0
        s = 128
        t = (32 * markets.length) + (4 * ceil32(return_data.size)) + 544
        while idx < mem[96]:
            _63 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_63 + 32]
            mem[t + 64] = bool(mem[_63 + 64])
            mem[t + 96] = mem[_63 + 96]
            mem[t + 128] = mem[_63 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[(32 * markets.length) + (4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        return memory
          from mem[64]
           len (193 * markets.length) + (4 * ceil32(return_data.size)) + -mem[64] + 544
    mem[64] = (32 * markets.length) + 288
    mem[(32 * markets.length) + 128] = 0
    mem[(32 * markets.length) + 160] = 0
    mem[(32 * markets.length) + 192] = 0
    mem[(32 * markets.length) + 224] = 0
    mem[(32 * markets.length) + 256] = 0
    mem[var20001] = (32 * markets.length) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * markets.length) + 128] = 0
        mem[(32 * markets.length) + 160] = 0
        mem[(32 * markets.length) + 192] = 0
        mem[(32 * markets.length) + 224] = 0
        mem[(32 * markets.length) + 256] = 0
        mem[s + 32] = (32 * markets.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    require arg2 < markets.length
    mem[0] = 1
    require ext_code.size(markets[arg2])
    staticcall markets[arg2].getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _107 = mem[_105 + 32]
    _108 = mem[_105 + 64]
    _109 = mem[_105 + 96]
    _110 = mem[64]
    mem[64] = mem[64] + 160
    mem[_110] = 0
    mem[_110 + 32] = 0
    mem[_110 + 64] = 0
    mem[_110 + 96] = 0
    mem[_110 + 128] = 0
    _111 = mem[64]
    mem[64] = mem[64] + 160
    mem[_111] = _107
    mem[_111 + 32] = _108
    require arg2 < markets.length
    mem[0] = 1
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = markets[arg2]
    require ext_code.size(stor2)
    staticcall stor2.checkMembership(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), markets[arg2]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[_111 + 64] = bool(mem[_115])
    mem[_111 + 96] = _109
    require arg2 < markets.length
    mem[0] = 1
    mem[_111 + 128] = markets[arg2]
    require arg2 < mem[96]
    mem[(32 * arg2) + 128] = _111
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.compAccrued(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _122 = mem[_121]
    _123 = mem[64]
    mem[mem[64]] = 64
    _124 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _124:
        _132 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_132 + 32]
        mem[t + 64] = bool(mem[_132 + 64])
        mem[t + 96] = mem[_132 + 96]
        mem[t + 128] = mem[_132 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    mem[_123 + 32] = _122
    return memory
      from mem[64]
       len _123 + (160 * _124) + -mem[64] + 96
}



}
