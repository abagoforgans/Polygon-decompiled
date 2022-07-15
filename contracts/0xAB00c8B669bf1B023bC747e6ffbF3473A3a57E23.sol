contract main {




// =====================  Runtime code  =====================


#
#  - setBaseURI(string arg1)
#  - equipWearables(uint256 arg1, uint16[16] arg2)
#  - getItemType(uint256 arg1)
#  - getItemTypes(uint256[] arg1)
#  - itemBalancesOfTokenWithTypes(address arg1, uint256 arg2)
#  - useConsumables(uint256 arg1, uint256[] arg2, uint256[] arg3)
#  - itemBalancesWithTypes(address arg1)
#
array of uint256 stor1;
array of uint256 stor10;
address stor29;
mapping of uint256 balanceOfToken;
array of struct stor33;
array of uint256 stor4;
array of struct stor6;
array of struct stor7;
mapping of uint256 balanceOf;
address storC8FC;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return balanceOf[address(arg1)][arg2]
}

function balanceOfToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    return balanceOfToken[address(arg1)][arg2][arg3]
}

function totalWearableSets() payable {
    return stor7.length
}

function _fallback() payable {
    revert
}

function equippedWearables(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[608] = uint16(stor13[arg1].field_0)
    idx = 608
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = uint16(stor13[arg1].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    idx = 0
    s = 608
    t = 1120
    while idx < 16:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 1120
       len 512
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ItemsFacet: _owners length not same as _ids length'
    if arg1.length > test266151307():
        revert with 0, 65
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = cd[((32 * idx) + arg2 + 36)]
        mem[32] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 9)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])][cd[((32 * idx) + arg2 + 36)]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function setWearableSlotPositions(uint256 arg1, bool[16] arg2) payable {
    require calldata.size - 4 >= 544
    require calldata.size >= 548
    if msg.sender != this.address:
        if stor29 != msg.sender:
            if storC8FC != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibAppStorage: Do not have access'
        if arg1 >= stor6.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DAOFacet: _wearableId not found for item'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor29 != mem[calldata.size + 108 len 20]:
            if mem[calldata.size + 108 len 20] != storC8FC:
                revert with 0, 'LibAppStorage: Do not have access'
        if arg1 >= stor6.length:
            revert with 0, 'DAOFacet: _wearableId not found for item'
    ('lt', ('param', 'arg1'), ('stor', ('length', ('name', 'stor6', 6))))
    s = 0
    idx = 36
    while 548 > idx:
        stor6[arg1].field_1024 = bool(cd[idx]) * 256^s or !(255 * 256^s) and stor6[arg1].field_1024
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 16
    s = (11 * arg1) + sha3(6) + 4
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (11 * arg1) + (-14 * None + 3 / 32) + (None * None + 3 / 32) + 4
    while (11 * arg1) + 5 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function itemBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    if stor10[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = stor10[address(arg1)]
    mem[64] = (32 * stor10[address(arg1)]) + 128
    if not stor10[address(arg1)]:
        idx = 0
        while idx < stor10[address(arg1)]:
            if idx >= stor10[address(arg1)]:
                revert with 0, 50
            mem[0] = stor10[address(arg1)][idx]
            mem[32] = sha3(address(arg1), 9)
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = balanceOf[address(arg1)][stor10[address(arg1)][idx]]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = stor10[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            _62 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_62 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _34 + (64 * _39) + -mem[64] + 64
    mem[64] = (32 * stor10[address(arg1)]) + 192
    mem[(32 * stor10[address(arg1)]) + 128] = 0
    mem[(32 * stor10[address(arg1)]) + 160] = 0
    mem[var14001] = (32 * stor10[address(arg1)]) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor10[address(arg1)]) + 128] = 0
        mem[(32 * stor10[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor10[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor10[address(arg1)]:
        if idx >= stor10[address(arg1)]:
            revert with 0, 50
        mem[0] = stor10[address(arg1)][idx]
        mem[32] = sha3(address(arg1), 9)
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128] + 32] = balanceOf[address(arg1)][stor10[address(arg1)][idx]]
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128]] = stor10[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _81 = mem[64]
    mem[mem[64]] = 32
    _86 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _86:
        _94 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_94 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _81 + (64 * _86) + -mem[64] + 64
}

function itemBalancesOfToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 4)
    if stor4[address(arg1)][arg2] > test266151307():
        revert with 0, 65
    mem[96] = stor4[address(arg1)][arg2]
    mem[64] = (32 * stor4[address(arg1)][arg2]) + 128
    if not stor4[address(arg1)][arg2]:
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if idx >= stor4[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = stor4[address(arg1)][arg2][idx]
            mem[0] = stor4[address(arg1)][arg2][idx]
            mem[32] = sha3(arg2, sha3(address(arg1), 3))
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = balanceOfToken[address(arg1)][arg2][stor4[address(arg1)][arg2][idx]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            _71 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_71 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _40 + (64 * _43) + -mem[64] + 64
    mem[64] = (32 * stor4[address(arg1)][arg2]) + 192
    mem[(32 * stor4[address(arg1)][arg2]) + 128] = 0
    mem[(32 * stor4[address(arg1)][arg2]) + 160] = 0
    mem[var14001] = (32 * stor4[address(arg1)][arg2]) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor4[address(arg1)][arg2]) + 128] = 0
        mem[(32 * stor4[address(arg1)][arg2]) + 160] = 0
        mem[s + 32] = (32 * stor4[address(arg1)][arg2]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor4[address(arg1)][arg2]:
        if idx >= stor4[address(arg1)][arg2]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128]] = stor4[address(arg1)][arg2][idx]
        mem[0] = stor4[address(arg1)][arg2][idx]
        mem[32] = sha3(arg2, sha3(address(arg1), 3))
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128] + 32] = balanceOfToken[address(arg1)][arg2][stor4[address(arg1)][arg2][idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _93 = mem[64]
    mem[mem[64]] = 32
    _96 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _96:
        _107 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_107 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _93 + (64 * _96) + -mem[64] + 64
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor6.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ItemsFacet: _id not found for item'
    if bool(stor33.length):
        if bool(stor33.length) == uint255(stor33.length.field_1) < 32:
            revert with 0, 34
        if bool(stor33.length):
            if bool(stor33.length) == uint255(stor33.length.field_1) < 32:
                revert with 0, 34
            if not uint255(stor33.length.field_1):
                if not arg1:
                    mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
                    mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 161] = 32
                    mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193] = mem[ceil32(uint255(stor33.length.field_1)) + 128]
                    mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) <= mem[ceil32(uint255(stor33.length.field_1)) + 128]:
                        return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + 128], data=mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]), 
                    mem[mem[ceil32(uint255(stor33.length.field_1)) + 128] + ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225] = 0
                    return 32, mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                if s:
                    mem[ceil32(uint255(stor33.length.field_1)) + 160 len s] = call.data[calldata.size len s]
                t = s - 1
                idx = arg1
                while idx:
                    if t >= s:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor33.length.field_1)) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
                if ceil32(uint255(stor33.length.field_1)) > uint255(stor33.length.field_1):
                    mem[uint255(stor33.length.field_1) + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192 len ceil32(s)] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(s)]
                mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192] = 32
                mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 224] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]
                mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160], data=mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160] + s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256] = 0
                return 32, mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor33.length.field_1):
                mem[128] = 256 * Mask(248, 0, stor33.length.field_8)
            else:
                mem[128] = uint256(stor33.field_0)
                idx = 128
                s = 0
                while uint255(stor33.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not arg1:
                mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
                mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 161] = 32
                mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193] = mem[ceil32(uint255(stor33.length.field_1)) + 128]
                mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) <= mem[ceil32(uint255(stor33.length.field_1)) + 128]:
                    return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + 128], data=mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]), 
                mem[mem[ceil32(uint255(stor33.length.field_1)) + 128] + ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225] = 0
                return 32, mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) + 32], 
            s = 0
            idx = arg1
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            if s:
                mem[ceil32(uint255(stor33.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s - 1
            idx = arg1
            while idx:
                if t >= s:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor33.length.field_1)) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
            if ceil32(uint255(stor33.length.field_1)) > uint255(stor33.length.field_1):
                mem[uint255(stor33.length.field_1) + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192 len ceil32(s)] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(s)]
            mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192] = 32
            mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 224] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]
            mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]) > mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160] + s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256] = 0
            return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160], data=mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]), 
        if bool(stor33.length) == stor33.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor33.length.field_1 % 128:
            if 31 >= stor33.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor33.length.field_8)
            else:
                mem[128] = uint256(stor33.field_0)
                idx = 128
                s = 0
                while stor33.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if not arg1:
            mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
            mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 161] = 32
            mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193] = mem[ceil32(uint255(stor33.length.field_1)) + 128]
            mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) <= mem[ceil32(uint255(stor33.length.field_1)) + 128]:
                return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + 128], data=mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128])]), 
            mem[mem[ceil32(uint255(stor33.length.field_1)) + 128] + ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 225] = 0
            return 32, mem[ceil32(uint255(stor33.length.field_1)) + uint255(stor33.length.field_1) + 193 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + 128]) + 32], 
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        if s:
            mem[ceil32(uint255(stor33.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            if t >= s:
                revert with 0, 50
            mem[t + ceil32(uint255(stor33.length.field_1)) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor33.length.field_1))] = mem[128 len ceil32(uint255(stor33.length.field_1))]
        if ceil32(uint255(stor33.length.field_1)) > uint255(stor33.length.field_1):
            mem[uint255(stor33.length.field_1) + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192 len ceil32(s)] = mem[ceil32(uint255(stor33.length.field_1)) + 160 len ceil32(s)]
        mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 192] = 32
        mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 224] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]
        mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160], data=mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160])]), 
        mem[mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160] + s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 256] = 0
        return 32, mem[s + ceil32(uint255(stor33.length.field_1)) + ceil32(s) + uint255(stor33.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor33.length.field_1)) + ceil32(s) + 160]) + 32], 
    if bool(stor33.length) == stor33.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor33.length):
        if bool(stor33.length) == uint255(stor33.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor33.length.field_1):
            if 31 >= uint255(stor33.length.field_1):
                mem[128] = 256 * Mask(248, 0, stor33.length.field_8)
            else:
                mem[128] = uint256(stor33.field_0)
                idx = 128
                s = 0
                while uint255(stor33.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if not arg1:
            mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 161] = 32
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 193] = mem[ceil32(stor33.length.field_1 % 128) + 128]
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128]) > mem[ceil32(stor33.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor33.length.field_1 % 128) + 128] + ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225] = 0
            return Array(len=mem[ceil32(stor33.length.field_1 % 128) + 128], data=mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]), 
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        if s:
            mem[ceil32(stor33.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            if t >= s:
                revert with 0, 50
            mem[t + ceil32(stor33.length.field_1 % 128) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
        if ceil32(stor33.length.field_1 % 128) > stor33.length.field_1 % 128:
            mem[stor33.length.field_1 % 128 + ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(s)]
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192] = 32
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 224] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]:
            mem[mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160] + s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256] = 0
        return Array(len=mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160], data=mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]), 
    if bool(stor33.length) == stor33.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor33.length.field_1 % 128:
        if not arg1:
            mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 161] = 32
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 193] = mem[ceil32(stor33.length.field_1 % 128) + 128]
            mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128]) > mem[ceil32(stor33.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor33.length.field_1 % 128) + 128] + ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225] = 0
            return Array(len=mem[ceil32(stor33.length.field_1 % 128) + 128], data=mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]), 
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        if s:
            mem[ceil32(stor33.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            if t >= s:
                revert with 0, 50
            mem[t + ceil32(stor33.length.field_1 % 128) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
        if ceil32(stor33.length.field_1 % 128) > stor33.length.field_1 % 128:
            mem[stor33.length.field_1 % 128 + ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(s)]
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192] = 32
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 224] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]
        mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]:
            mem[mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160] + s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256] = 0
        return Array(len=mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160], data=mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]), 
    if 31 >= stor33.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor33.length.field_8)
    else:
        mem[128] = uint256(stor33.field_0)
        idx = 128
        s = 0
        while stor33.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor33[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if not arg1:
        mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
        mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 161] = 32
        mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 193] = mem[ceil32(stor33.length.field_1 % 128) + 128]
        mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128]) > mem[ceil32(stor33.length.field_1 % 128) + 128]:
            mem[mem[ceil32(stor33.length.field_1 % 128) + 128] + ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225] = 0
        return Array(len=mem[ceil32(stor33.length.field_1 % 128) + 128], data=mem[ceil32(stor33.length.field_1 % 128) + stor33.length.field_1 % 128 + 225 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + 128])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    if s:
        mem[ceil32(stor33.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        if t >= s:
            revert with 0, 50
        mem[t + ceil32(stor33.length.field_1 % 128) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor33.length.field_1 % 128)] = mem[128 len ceil32(stor33.length.field_1 % 128)]
    if ceil32(stor33.length.field_1 % 128) > stor33.length.field_1 % 128:
        mem[stor33.length.field_1 % 128 + ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor33.length.field_1 % 128) + 160 len ceil32(s)]
    mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 192] = 32
    mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 224] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]
    mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160], data=mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160] + s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 256] = 0
    return 32, mem[s + ceil32(stor33.length.field_1 % 128) + ceil32(s) + stor33.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor33.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
}

function getWearableSets() payable {
    mem[64] = (32 * stor7.length) + 128
    mem[96] = stor7.length
    s = 128
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _154 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor7[idx].field_0):
            if bool(stor7[idx].field_0) == uint255(stor7[idx].field_1) < 32:
                revert with 0, 34
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor7[idx].field_1)) + 32
            mem[_158] = uint255(stor7[idx].field_1)
            if bool(stor7[idx].field_0):
                if bool(stor7[idx].field_0) == uint255(stor7[idx].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor7[idx].field_1):
                    mem[_154] = _158
                    _164 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                    mem[_164] = stor7[idx].field_256
                    if not stor7[idx].field_256:
                        mem[_154 + 32] = _164
                        _165 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                        mem[_165] = stor7[idx].field_512
                        if not stor7[idx].field_512:
                            mem[_154 + 64] = _165
                            _170 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_170] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _170
                            u = 0
                            while _170 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _170
                        else:
                            mem[0] = (4 * idx) + sha3(7) + 2
                            mem[_165 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                            t = _165 + 32
                            u = 0
                            while _165 + (32 * stor7[idx].field_512) > t:
                                mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                                t = t + 32
                                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                                continue 
                            mem[_154 + 64] = _165
                            _305 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_305] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _305
                            u = 0
                            while _305 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _305
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 1
                        mem[_164 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                        t = _164 + 32
                        u = 0
                        while _164 + (32 * stor7[idx].field_256) > t:
                            mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 32] = _164
                        _306 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                        mem[_306] = stor7[idx].field_512
                        if not stor7[idx].field_512:
                            mem[_154 + 64] = _306
                            _325 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_325] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _325
                            u = 0
                            while _325 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _325
                        else:
                            mem[0] = (4 * idx) + sha3(7) + 2
                            mem[_306 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                            t = _306 + 32
                            u = 0
                            while _306 + (32 * stor7[idx].field_512) > t:
                                mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                                t = t + 32
                                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                                continue 
                            mem[_154 + 64] = _306
                            _407 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_407] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _407
                            u = 0
                            while _407 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _407
                else:
                    if 31 >= uint255(stor7[idx].field_1):
                        mem[_158 + 32] = 256 * Mask(248, 0, stor7[idx].field_8)
                        mem[_154] = _158
                        _172 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                        mem[_172] = stor7[idx].field_256
                        if not stor7[idx].field_256:
                            mem[_154 + 32] = _172
                            _182 = mem[64]
                            mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                            mem[_182] = stor7[idx].field_512
                            if not stor7[idx].field_512:
                                mem[_154 + 64] = _182
                                _197 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_197] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                                t = _197
                                u = 0
                                while _197 + 160 > t + 32:
                                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                mem[_154 + 96] = _197
                            else:
                                mem[0] = (4 * idx) + sha3(7) + 2
                                mem[_182 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                                t = _182 + 32
                                u = 0
                                while _182 + (32 * stor7[idx].field_512) > t:
                                    mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                                    t = t + 32
                                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                                    continue 
                                mem[_154 + 64] = _182
                                _308 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_308] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                                t = _308
                                u = 0
                                while _308 + 160 > t + 32:
                                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                mem[_154 + 96] = _308
                            mem[s] = _154
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(7) + 1
                        mem[_172 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                        t = _172 + 32
                        u = 0
                        while _172 + (32 * stor7[idx].field_256) > t:
                            mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 32] = _172
                        _309 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                        mem[_309] = stor7[idx].field_512
                        if not stor7[idx].field_512:
                            mem[_154 + 64] = _309
                            _329 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_329] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _329
                            u = 0
                            while _329 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _329
                            mem[s] = _154
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_309 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _309 + 32
                        u = 0
                        while _309 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _309
                        _410 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_410] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _410
                        s = 0
                        while _410 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                            t = t + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        mem[_154 + 96] = _410
                        mem[_410 + 128] = _154
                        t = _410 + 160
                        s = 5
                        continue 
                    mem[0] = (4 * idx) + sha3(7)
                    mem[_158 + 32] = stor7[idx].field_0
                    t = _158 + 32
                    u = sha3(mem[0])
                    while _158 + uint255(stor7[idx].field_1) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_154] = _158
                    _307 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                    mem[_307] = stor7[idx].field_256
                    if not stor7[idx].field_256:
                        mem[_154 + 32] = _307
                        _327 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                        mem[_327] = stor7[idx].field_512
                        if not stor7[idx].field_512:
                            mem[_154 + 64] = _327
                            _351 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_351] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _351
                            u = 0
                            while _351 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _351
                        else:
                            mem[0] = (4 * idx) + sha3(7) + 2
                            mem[_327 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                            t = _327 + 32
                            u = 0
                            while _327 + (32 * stor7[idx].field_512) > t:
                                mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                                t = t + 32
                                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                                continue 
                            mem[_154 + 64] = _327
                            _408 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_408] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _408
                            u = 0
                            while _408 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _408
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 1
                        mem[_307 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                        t = _307 + 32
                        u = 0
                        while _307 + (32 * stor7[idx].field_256) > t:
                            mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 32] = _307
                        _409 = mem[64]
                        mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                        mem[_409] = stor7[idx].field_512
                        if not stor7[idx].field_512:
                            mem[_154 + 64] = _409
                            _423 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_423] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _423
                            u = 0
                            while _423 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _423
                        else:
                            mem[0] = (4 * idx) + sha3(7) + 2
                            mem[_409 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                            t = _409 + 32
                            u = 0
                            while _409 + (32 * stor7[idx].field_512) > t:
                                mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                                t = t + 32
                                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                                continue 
                            mem[_154 + 64] = _409
                            _445 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_445] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                            t = _445
                            u = 0
                            while _445 + 160 > t + 32:
                                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                                t = t + 32
                                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                continue 
                            mem[_154 + 96] = _445
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor7[idx].field_0) == stor7[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor7[idx].field_1 % 128:
                mem[_154] = _158
                _168 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                mem[_168] = stor7[idx].field_256
                if not stor7[idx].field_256:
                    mem[_154 + 32] = _168
                    _173 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_173] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _173
                        _184 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_184] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _184
                        u = 0
                        while _184 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _184
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_173 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _173 + 32
                        u = 0
                        while _173 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _173
                        _310 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_310] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _310
                        u = 0
                        while _310 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _310
                else:
                    mem[0] = (4 * idx) + sha3(7) + 1
                    mem[_168 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                    t = _168 + 32
                    u = 0
                    while _168 + (32 * stor7[idx].field_256) > t:
                        mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 32] = _168
                    _311 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_311] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _311
                        _331 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_331] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _331
                        u = 0
                        while _331 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _331
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_311 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _311 + 32
                        u = 0
                        while _311 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _311
                        _411 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_411] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _411
                        u = 0
                        while _411 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _411
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor7[idx].field_1 % 128:
                mem[_158 + 32] = 256 * Mask(248, 0, stor7[idx].field_8)
                mem[_154] = _158
                _186 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                mem[_186] = stor7[idx].field_256
                if not stor7[idx].field_256:
                    mem[_154 + 32] = _186
                    _199 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_199] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _199
                        _213 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_213] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _213
                        u = 0
                        while _213 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _213
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_199 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _199 + 32
                        u = 0
                        while _199 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _199
                        _313 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_313] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _313
                        u = 0
                        while _313 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _313
                else:
                    mem[0] = (4 * idx) + sha3(7) + 1
                    mem[_186 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                    t = _186 + 32
                    u = 0
                    while _186 + (32 * stor7[idx].field_256) > t:
                        mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 32] = _186
                    _314 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_314] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _314
                        _335 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_335] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _335
                        u = 0
                        while _335 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _335
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_314 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _314 + 32
                        u = 0
                        while _314 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _314
                        _414 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_414] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _414
                        u = 0
                        while _414 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _414
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(7)
            mem[_158 + 32] = stor7[idx].field_0
            t = _158 + 32
            u = sha3(mem[0])
            while _158 + stor7[idx].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_154] = _158
            _312 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
            mem[_312] = stor7[idx].field_256
            if not stor7[idx].field_256:
                mem[_154 + 32] = _312
                _333 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_333] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _333
                    _353 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_353] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _353
                    u = 0
                    while _353 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _353
                    mem[s] = _154
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(7) + 2
                mem[_333 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                t = _333 + 32
                u = 0
                while _333 + (32 * stor7[idx].field_512) > t:
                    mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[_154 + 64] = _333
                _412 = mem[64]
                mem[64] = mem[64] + 160
                mem[_412] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
                t = _412
                s = 0
                while _412 + 160 > t + 32:
                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    t = t + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[_154 + 96] = _412
                mem[_412 + 128] = _154
                t = _412 + 160
                s = 5
                continue 
            mem[0] = (4 * idx) + sha3(7) + 1
            mem[_312 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
            t = _312 + 32
            u = 0
            while _312 + (32 * stor7[idx].field_256) > t:
                mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                t = t + 32
                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                continue 
            mem[_154 + 32] = _312
            _413 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
            mem[_413] = stor7[idx].field_512
            if not stor7[idx].field_512:
                mem[_154 + 64] = _413
                _425 = mem[64]
                mem[64] = mem[64] + 160
                mem[_425] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
                t = _425
                s = 0
                while _425 + 160 > t + 32:
                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    t = t + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[_154 + 96] = _425
                mem[_425 + 128] = _154
                t = _425 + 160
                s = 5
                continue 
            mem[0] = (4 * idx) + sha3(7) + 2
            mem[_413 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
            t = _413 + 32
            u = 0
            while _413 + (32 * stor7[u].field_512) > t:
                mem[t + 32] = uint16(stor[sha3((4 * u) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[_154 + 64] = _413
            _446 = mem[64]
            mem[64] = mem[64] + 160
            mem[_446] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 3)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = _446
            s = 0
            while _446 + 160 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 3)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[_154 + 96] = _446
            mem[t] = _154
            t = t + 32
            u = u + 1
            continue 
        if bool(stor7[idx].field_0) == stor7[idx].field_1 % 128 < 32:
            revert with 0, 34
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(stor7[idx].field_1 % 128) + 32
        mem[_161] = stor7[idx].field_1 % 128
        if bool(stor7[idx].field_0):
            if bool(stor7[idx].field_0) == uint255(stor7[idx].field_1) < 32:
                revert with 0, 34
            if not uint255(stor7[idx].field_1):
                mem[_154] = _161
                _169 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                mem[_169] = stor7[idx].field_256
                if not stor7[idx].field_256:
                    mem[_154 + 32] = _169
                    _176 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_176] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _176
                        _187 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_187] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _187
                        u = 0
                        while _187 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _187
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_176 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _176 + 32
                        u = 0
                        while _176 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _176
                        _315 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_315] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _315
                        u = 0
                        while _315 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _315
                else:
                    mem[0] = (4 * idx) + sha3(7) + 1
                    mem[_169 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                    t = _169 + 32
                    u = 0
                    while _169 + (32 * stor7[idx].field_256) > t:
                        mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 32] = _169
                    _316 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_316] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _316
                        _337 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_337] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _337
                        u = 0
                        while _337 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _337
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_316 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _316 + 32
                        u = 0
                        while _316 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _316
                        _415 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_415] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _415
                        u = 0
                        while _415 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _415
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor7[idx].field_1):
                mem[_161 + 32] = 256 * Mask(248, 0, stor7[idx].field_8)
                mem[_154] = _161
                _189 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
                mem[_189] = stor7[idx].field_256
                if not stor7[idx].field_256:
                    mem[_154 + 32] = _189
                    _201 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_201] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _201
                        _217 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_217] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _217
                        u = 0
                        while _217 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _217
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_201 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _201 + 32
                        u = 0
                        while _201 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _201
                        _318 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_318] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _318
                        u = 0
                        while _318 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _318
                else:
                    mem[0] = (4 * idx) + sha3(7) + 1
                    mem[_189 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                    t = _189 + 32
                    u = 0
                    while _189 + (32 * stor7[idx].field_256) > t:
                        mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 32] = _189
                    _319 = mem[64]
                    mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                    mem[_319] = stor7[idx].field_512
                    if not stor7[idx].field_512:
                        mem[_154 + 64] = _319
                        _341 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_341] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _341
                        u = 0
                        while _341 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _341
                    else:
                        mem[0] = (4 * idx) + sha3(7) + 2
                        mem[_319 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                        t = _319 + 32
                        u = 0
                        while _319 + (32 * stor7[idx].field_512) > t:
                            mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                            t = t + 32
                            u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                            continue 
                        mem[_154 + 64] = _319
                        _418 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_418] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        t = _418
                        u = 0
                        while _418 + 160 > t + 32:
                            mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                            t = t + 32
                            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                            continue 
                        mem[_154 + 96] = _418
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(7)
            mem[_161 + 32] = stor7[idx].field_0
            t = _161 + 32
            u = sha3(mem[0])
            while _161 + uint255(stor7[idx].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_154] = _161
            _317 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
            mem[_317] = stor7[idx].field_256
            if not stor7[idx].field_256:
                mem[_154 + 32] = _317
                _339 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_339] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _339
                    _355 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_355] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _355
                    u = 0
                    while _355 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _355
                    mem[s] = _154
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(7) + 2
                mem[_339 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                t = _339 + 32
                u = 0
                while _339 + (32 * stor7[idx].field_512) > t:
                    mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[_154 + 64] = _339
                _416 = mem[64]
                mem[64] = mem[64] + 160
                mem[_416] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
                t = _416
                s = 0
                while _416 + 160 > t + 32:
                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    t = t + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[_154 + 96] = _416
                mem[_416 + 128] = _154
                t = _416 + 160
                s = 5
                continue 
            mem[0] = (4 * idx) + sha3(7) + 1
            mem[_317 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
            t = _317 + 32
            u = 0
            while _317 + (32 * stor7[idx].field_256) > t:
                mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                t = t + 32
                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                continue 
            mem[_154 + 32] = _317
            _417 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
            mem[_417] = stor7[idx].field_512
            if not stor7[idx].field_512:
                mem[_154 + 64] = _417
                _427 = mem[64]
                mem[64] = mem[64] + 160
                mem[_427] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
                t = _427
                s = 0
                while _427 + 160 > t + 32:
                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    t = t + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[_154 + 96] = _427
                mem[_427 + 128] = _154
                t = _427 + 160
                s = 5
                continue 
            mem[0] = (4 * idx) + sha3(7) + 2
            mem[_417 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
            t = _417 + 32
            u = 0
            while _417 + (32 * stor7[u].field_512) > t:
                mem[t + 32] = uint16(stor[sha3((4 * u) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[_154 + 64] = _417
            _447 = mem[64]
            mem[64] = mem[64] + 160
            mem[_447] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 3)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = _447
            s = 0
            while _447 + 160 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 3)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[_154 + 96] = _447
            mem[t] = _154
            t = t + 32
            u = u + 1
            continue 
        if bool(stor7[idx].field_0) == stor7[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not stor7[idx].field_1 % 128:
            mem[_154] = _161
            _179 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
            mem[_179] = stor7[idx].field_256
            if not stor7[idx].field_256:
                mem[_154 + 32] = _179
                _190 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_190] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _190
                    _203 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_203] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _203
                    u = 0
                    while _203 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _203
                else:
                    mem[0] = (4 * idx) + sha3(7) + 2
                    mem[_190 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                    t = _190 + 32
                    u = 0
                    while _190 + (32 * stor7[idx].field_512) > t:
                        mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                        t = t + 32
                        u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                        continue 
                    mem[_154 + 64] = _190
                    _320 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_320] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _320
                    u = 0
                    while _320 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _320
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(7) + 1
            mem[_179 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
            t = _179 + 32
            u = 0
            while _179 + (32 * stor7[idx].field_256) > t:
                mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                t = t + 32
                u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                continue 
            mem[_154 + 32] = _179
            _321 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
            mem[_321] = stor7[idx].field_512
            if not stor7[idx].field_512:
                mem[_154 + 64] = _321
                _343 = mem[64]
                mem[64] = mem[64] + 160
                mem[_343] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                t = _343
                u = 0
                while _343 + 160 > t + 32:
                    mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                    t = t + 32
                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                    continue 
                mem[_154 + 96] = _343
                mem[s] = _154
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(7) + 2
            mem[_321 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
            t = _321 + 32
            u = 0
            while _321 + (32 * stor7[idx].field_512) > t:
                mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[_154 + 64] = _321
            _419 = mem[64]
            mem[64] = mem[64] + 160
            mem[_419] = ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('field', 768, ('stor', ('name', 'stor7', 7)))), ('exp', 256, 0))))
            t = _419
            s = 0
            while _419 + 160 > t + 32:
                mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)))), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                t = t + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[_154 + 96] = _419
            mem[_419 + 128] = _154
            t = _419 + 160
            s = 5
            continue 
        if 31 >= stor7[idx].field_1 % 128:
            mem[_161 + 32] = 256 * Mask(248, 0, stor7[idx].field_8)
            mem[_154] = _161
            _205 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
            mem[_205] = stor7[idx].field_256
            if not stor7[idx].field_256:
                mem[_154 + 32] = _205
                _219 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_219] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _219
                    _238 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_238] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _238
                    u = 0
                    while _238 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _238
                else:
                    mem[0] = (4 * idx) + sha3(7) + 2
                    mem[_219 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                    t = _219 + 32
                    u = 0
                    while _219 + (32 * stor7[idx].field_512) > t:
                        mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                        t = t + 32
                        u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                        continue 
                    mem[_154 + 64] = _219
                    _323 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_323] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _323
                    u = 0
                    while _323 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _323
            else:
                mem[0] = (4 * idx) + sha3(7) + 1
                mem[_205 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                t = _205 + 32
                u = 0
                while _205 + (32 * stor7[idx].field_256) > t:
                    mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                    t = t + 32
                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                    continue 
                mem[_154 + 32] = _205
                _324 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_324] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _324
                    _347 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_347] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _347
                    u = 0
                    while _347 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _347
                else:
                    mem[0] = (4 * idx) + sha3(7) + 2
                    mem[_324 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                    t = _324 + 32
                    u = 0
                    while _324 + (32 * stor7[idx].field_512) > t:
                        mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                        t = t + 32
                        u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                        continue 
                    mem[_154 + 64] = _324
                    _422 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_422] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _422
                    u = 0
                    while _422 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _422
        else:
            mem[0] = (4 * idx) + sha3(7)
            mem[_161 + 32] = stor7[idx].field_0
            t = _161 + 32
            u = sha3(mem[0])
            while _161 + stor7[idx].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_154] = _161
            _322 = mem[64]
            mem[64] = mem[64] + (32 * stor7[idx].field_256) + 32
            mem[_322] = stor7[idx].field_256
            if not stor7[idx].field_256:
                mem[_154 + 32] = _322
                _345 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_345] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _345
                    _357 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_357] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _357
                    u = 0
                    while _357 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _357
                else:
                    mem[0] = (4 * idx) + sha3(7) + 2
                    mem[_345 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                    t = _345 + 32
                    u = 0
                    while _345 + (32 * stor7[idx].field_512) > t:
                        mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                        t = t + 32
                        u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                        continue 
                    mem[_154 + 64] = _345
                    _420 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_420] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _420
                    u = 0
                    while _420 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _420
            else:
                mem[0] = (4 * idx) + sha3(7) + 1
                mem[_322 + 32] = uint8(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 1)].field_0)
                t = _322 + 32
                u = 0
                while _322 + (32 * stor7[idx].field_256) > t:
                    mem[t + 32] = storsha3((4 * idx) + ('name', 'stor7', 7) + 1)[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                    t = t + 32
                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                    continue 
                mem[_154 + 32] = _322
                _421 = mem[64]
                mem[64] = mem[64] + (32 * stor7[idx].field_512) + 32
                mem[_421] = stor7[idx].field_512
                if not stor7[idx].field_512:
                    mem[_154 + 64] = _421
                    _429 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_429] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _429
                    u = 0
                    while _429 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _429
                else:
                    mem[0] = (4 * idx) + sha3(7) + 2
                    mem[_421 + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_0)
                    t = _421 + 32
                    u = 0
                    while _421 + (32 * stor7[idx].field_512) > t:
                        mem[t + 32] = uint16(stor[sha3((4 * idx) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u))
                        t = t + 32
                        u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                        continue 
                    mem[_154 + 64] = _421
                    _448 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_448] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    t = _448
                    u = 0
                    while _448 + 160 > t + 32:
                        mem[t + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32)), ('var', 3), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 3))), 32), ('var', 3)))))))
                        t = t + 32
                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                        continue 
                    mem[_154 + 96] = _448
        mem[s] = _154
        s = s + 32
        idx = idx + 1
        continue 
    _155 = mem[64]
    mem[mem[64]] = 32
    _156 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _156:
        mem[t] = u + -_155 - 64
        _453 = mem[s]
        _455 = mem[mem[s]]
        mem[u] = 256
        _456 = mem[_455]
        mem[u + 256] = mem[_455]
        v = 0
        while v < _456:
            mem[v + u + 288] = mem[v + _455 + 32]
            v = v + 32
            continue 
        if ceil32(_456) <= _456:
            _475 = mem[_453 + 32]
            mem[u + 32] = ceil32(_456) + 288
            _477 = mem[_475]
            mem[ceil32(_456) + u + 288] = mem[_475]
            v = 0
            w = _475 + 32
            x = ceil32(_456) + u + 320
            while v < _477:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _493 = mem[_453 + 64]
            mem[u + 64] = ceil32(_456) + (32 * _477) + 320
            _494 = mem[_493]
            mem[ceil32(_456) + u + (32 * _477) + 320] = mem[_493]
            w = ceil32(_456) + u + (32 * _477) + 352
            v = 0
            x = _493 + 32
            while v < _494:
                mem[w] = mem[x + 30 len 2]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            v = 0
            w = u + 96
            x = mem[_453 + 96]
            while v < 5:
                mem[w] = ('signextend', 0, ('mem', ('range', ('var', 6), 32)))
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_456) + u + (32 * _477) + (32 * _494) + 352
            continue 
        mem[_456 + u + 288] = 0
        _476 = mem[_453 + 32]
        mem[u + 32] = ceil32(_456) + 288
        _478 = mem[_476]
        mem[ceil32(_456) + u + 288] = mem[_476]
        v = 0
        w = _476 + 32
        x = ceil32(_456) + u + 320
        while v < _478:
            mem[x] = mem[w + 31 len 1]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _495 = mem[_453 + 64]
        mem[u + 64] = ceil32(_456) + (32 * _478) + 320
        _496 = mem[_495]
        mem[ceil32(_456) + u + (32 * _478) + 320] = mem[_495]
        w = ceil32(_456) + u + (32 * _478) + 352
        v = 0
        x = _495 + 32
        while v < _496:
            mem[w] = mem[x + 30 len 2]
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        v = 0
        w = u + 96
        x = mem[_453 + 96]
        while v < 5:
            mem[w] = ('signextend', 0, ('mem', ('range', ('var', 6), 32)))
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_456) + u + (32 * _478) + (32 * _496) + 352
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getWearableSet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 96
    mem[160] = 96
    mem[224 len 160] = call.data[calldata.size len 160]
    mem[192] = 224
    if arg1 >= stor7.length:
        revert with 0, 'ItemsFacet: Wearable set does not exist'
    mem[0] = 7
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 0, 34
        mem[512] = uint255(stor7[arg1].field_1)
        if bool(stor7[arg1].field_0):
            if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
                revert with 0, 34
            if not uint255(stor7[arg1].field_1):
                mem[384] = 512
                mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
                if not stor7[arg1].field_256:
                    mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                    if not stor7[arg1].field_512:
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        s = 0
                        while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                        if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                            idx = 0
                            s = ceil32(uint255(stor7[arg1].field_1)) + 576
                            t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                            while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                                mem[t] = mem[s + 31 len 1]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                            _3134 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                            idx = 0
                            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                            while idx < _3134:
                                mem[s] = mem[t + 30 len 2]
                                s = s + 32
                                idx = idx + 1
                                t = t + 32
                                continue 
                            idx = 0
                            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                            while idx < 5:
                                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3134) + 384
                        mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                        _3136 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                        idx = 0
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                        while idx < _3136:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3136) + 384
                    mem[0] = (4 * arg1) + sha3(7) + 2
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                        mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                        idx = idx + 32
                        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                        continue 
                    mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = ceil32(mem[512]) + mem[64] + 352
                        while idx < stor7[arg1].field_256:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                        _4026 = mem[mem[448]]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _4026:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4026) + -mem[64] + 1152
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _4028 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _4028:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4028) + 384
                mem[0] = (4 * arg1) + sha3(7) + 1
                mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + 576
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
                    mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = ceil32(mem[512]) + mem[64] + 352
                        while idx < stor7[arg1].field_256:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                        _4030 = mem[mem[448]]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _4030:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4030) + -mem[64] + 1152
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _4032 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _4032:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4032) + 384
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4710 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4710:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4710) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4712 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4712:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4712) + 384
            if 31 >= uint255(stor7[arg1].field_1):
                mem[544] = 256 * Mask(248, 0, stor7[arg1].field_8)
                mem[384] = 512
                mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
                if not stor7[arg1].field_256:
                    mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                    if not stor7[arg1].field_512:
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                        idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        s = 0
                        while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                        if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                            idx = 0
                            s = ceil32(uint255(stor7[arg1].field_1)) + 576
                            t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                            while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                                mem[t] = mem[s + 31 len 1]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                            _3142 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                            idx = 0
                            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                            while idx < _3142:
                                mem[s] = mem[t + 30 len 2]
                                s = s + 32
                                idx = idx + 1
                                t = t + 32
                                continue 
                            idx = 0
                            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                            while idx < 5:
                                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3142) + 384
                        mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                        _3144 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                        idx = 0
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                        while idx < _3144:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3144) + 384
                    mem[0] = (4 * arg1) + sha3(7) + 2
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                        mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                        idx = idx + 32
                        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                        continue 
                    mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = ceil32(mem[512]) + mem[64] + 352
                        while idx < stor7[arg1].field_256:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                        _4039 = mem[mem[448]]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _4039:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4039) + -mem[64] + 1152
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _4041 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _4041:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4041) + 384
                mem[0] = (4 * arg1) + sha3(7) + 1
                mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + 576
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
                    mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = ceil32(mem[512]) + mem[64] + 352
                        while idx < stor7[arg1].field_256:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                        _4043 = mem[mem[448]]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _4043:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4043) + -mem[64] + 1152
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _4045 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _4045:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4045) + 384
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4722 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4722:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4722) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4724 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4724:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4724) + 384
            mem[0] = (4 * arg1) + sha3(7)
            mem[544] = stor7[arg1].field_0
            idx = 544
            s = 0
            while uint255(stor7[arg1].field_1) + 512 > idx:
                mem[idx + 32] = stor7[(4 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[384] = 512
            mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
            if not stor7[arg1].field_256:
                mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = ceil32(mem[512]) + mem[64] + 352
                        while idx < stor7[arg1].field_256:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                        _4034 = mem[mem[448]]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _4034:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4034) + -mem[64] + 1152
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _4036 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _4036:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4036) + 384
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4714 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4714:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4714) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4716 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4716:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4716) + 384
            mem[0] = (4 * arg1) + sha3(7) + 1
            mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + 576
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
                mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4718 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4718:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4718) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                _4720 = mem[mem[448]]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4720:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4720) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
            if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                _5102 = mem[mem[448]]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _5102:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _5102) + -mem[64] + 1152
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
            _5104 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
            idx = 0
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            while idx < _5104:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _5104) + 384
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor7[arg1].field_1 % 128:
            mem[384] = 512
            mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
            if not stor7[arg1].field_256:
                mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                        _3147 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                        idx = 0
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                        while idx < _3147:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3147) + 384
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _3149 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _3149:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3149) + 384
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4047 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4047:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4047) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4049 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4049:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4049) + 384
            mem[0] = (4 * arg1) + sha3(7) + 1
            mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + 576
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
                mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4051 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4051:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4051) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4053 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4053:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4053) + 384
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
            if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                _4726 = mem[mem[448]]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4726:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4726) + -mem[64] + 1152
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
            _4728 = mem[mem[448]]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4728:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4728) + -mem[64] + 1152
        if 31 >= stor7[arg1].field_1 % 128:
            mem[544] = 256 * Mask(248, 0, stor7[arg1].field_8)
            mem[384] = 512
            mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
            if not stor7[arg1].field_256:
                mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                    if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + 576
                        t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                        _3155 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                        idx = 0
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                        while idx < _3155:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3155) + 384
                    mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                    _3157 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                    idx = 0
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                    while idx < _3157:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _3157) + 384
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4060 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4060:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4060) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4062 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4062:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4062) + 384
            mem[0] = (4 * arg1) + sha3(7) + 1
            mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + 576
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
                mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4064 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4064:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4064) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4066 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4066:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4066) + 384
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
            if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                _4738 = mem[mem[448]]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4738:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4738) + -mem[64] + 1152
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
            _4740 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
            idx = 0
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            while idx < _4740:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4740) + 384
        mem[0] = (4 * arg1) + sha3(7)
        mem[544] = stor7[arg1].field_0
        idx = 544
        s = 0
        while stor7[arg1].field_1 % 128 + 512 > idx:
            mem[idx + 32] = stor7[(4 * arg1) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[384] = 512
        mem[ceil32(uint255(stor7[arg1].field_1)) + 544] = stor7[arg1].field_256
        if not stor7[arg1].field_256:
            mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
                if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                    _4055 = mem[mem[448]]
                    mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4055:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4055) + -mem[64] + 1152
                mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4057 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
                idx = 0
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
                while idx < _4057:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4057) + 384
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
            if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
                _4730 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
                s = ceil32(mem[512]) + mem[64] + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 384
                idx = 0
                t = mem[448] + 32
                while idx < _4730:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4730) + -mem[64] + 1152
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
            _4732 = mem[mem[448]]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4732:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4732) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 1
        mem[ceil32(uint255(stor7[arg1].field_1)) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
        idx = ceil32(uint255(stor7[arg1].field_1)) + 576
        s = 0
        while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 544 > idx:
            mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[416] = ceil32(uint255(stor7[arg1].field_1)) + 544
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
        if not stor7[arg1].field_512:
            mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
            if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
                _4734 = mem[mem[448]]
                mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4734:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4734) + -mem[64] + 1152
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
            _4736 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
            idx = 0
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
            while idx < _4736:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _4736) + 384
        mem[0] = (4 * arg1) + sha3(7) + 2
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
        idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
        s = 0
        while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
            mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[448] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = uint255(stor7[arg1].field_1)
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(uint255(stor7[arg1].field_1))] = mem[544 len ceil32(uint255(stor7[arg1].field_1))]
        if ceil32(uint255(stor7[arg1].field_1)) <= uint255(stor7[arg1].field_1):
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 320
            _5106 = mem[mem[448]]
            mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _5106:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor7[arg1].field_1))) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _5106) + -mem[64] + 1152
        mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(uint255(stor7[arg1].field_1)) + 288
        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(uint255(stor7[arg1].field_1)) + 576
        t = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(uint255(stor7[arg1].field_1)) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(uint255(stor7[arg1].field_1)) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 320
        _5108 = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
        mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1120] = mem[ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 576]
        s = (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + 1152
        idx = 0
        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + 608
        while idx < _5108:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from ceil32(uint255(stor7[arg1].field_1)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
           len (2 * ceil32(uint255(stor7[arg1].field_1))) + (32 * mem[ceil32(uint255(stor7[arg1].field_1)) + 544]) + (32 * _5108) + 384
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[512] = stor7[arg1].field_1 % 128
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 0, 34
        if not uint255(stor7[arg1].field_1):
            mem[384] = 512
            mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
            if not stor7[arg1].field_256:
                mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                    if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(stor7[arg1].field_1 % 128) + 576
                        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                        _3160 = mem[mem[448]]
                        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _3160:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3160) + -mem[64] + 1152
                    mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                    _3162 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _3162:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3162) + -mem[64] + 1152
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                    _4068 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4068:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4068) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _4070 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4070:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4070) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 1
            mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + 576
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
                mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                    _4072 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4072:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4072) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _4074 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4074:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4074) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4742 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4742:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4742) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4744 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4744:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4744) + -mem[64] + 1152
        if 31 >= uint255(stor7[arg1].field_1):
            mem[544] = 256 * Mask(248, 0, stor7[arg1].field_8)
            mem[384] = 512
            mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
            if not stor7[arg1].field_256:
                mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
                if not stor7[arg1].field_512:
                    mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                    mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                    idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    s = 0
                    while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                    if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                        idx = 0
                        s = ceil32(stor7[arg1].field_1 % 128) + 576
                        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                            mem[t] = mem[s + 31 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                        _3168 = mem[mem[448]]
                        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                        idx = 0
                        t = mem[448] + 32
                        while idx < _3168:
                            mem[s] = mem[t + 30 len 2]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        idx = 0
                        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                        t = mem[480]
                        while idx < 5:
                            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3168) + -mem[64] + 1152
                    mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                    _3170 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _3170:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3170) + -mem[64] + 1152
                mem[0] = (4 * arg1) + sha3(7) + 2
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                    mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                    _4081 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4081:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4081) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _4083 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4083:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4083) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 1
            mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + 576
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
                mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = ceil32(mem[512]) + mem[64] + 352
                    while idx < stor7[arg1].field_256:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                    _4085 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4085:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4085) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _4087 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4087:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4087) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4754 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4754:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4754) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4756 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4756:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4756) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7)
        mem[544] = stor7[arg1].field_0
        idx = 544
        s = 0
        while uint255(stor7[arg1].field_1) + 512 > idx:
            mem[idx + 32] = stor7[(4 * arg1) + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[384] = 512
        mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
        if not stor7[arg1].field_256:
            mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                    _4076 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _4076:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return 32, 256, 
                           ceil32(stor7[arg1].field_1 % 128) + 288,
                           ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320,
                           mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896 len ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4076) + 256]
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4078 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4078:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4078) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4746 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4746:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4746) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4748 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4748:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4748) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 1
        mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + 576
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
            mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
        if not stor7[arg1].field_512:
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4750 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4750:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4750) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4752 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4752:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4752) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 2
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
            mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
        if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
            _5110 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _5110:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _5110) + -mem[64] + 1152
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
        _5112 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _5112:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _5112) + -mem[64] + 1152
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if not stor7[arg1].field_1 % 128:
        mem[384] = 512
        mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
        if not stor7[arg1].field_256:
            mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                    _3173 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _3173:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3173) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _3175 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _3175:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3175) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4089 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4089:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4089) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4091 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4091:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4091) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 1
        mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + 576
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
            mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
        if not stor7[arg1].field_512:
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4093 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4093:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4093) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4095 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4095:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4095) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 2
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
            mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
        if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
            _4758 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4758:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4758) + -mem[64] + 1152
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
        _4760 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _4760:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4760) + -mem[64] + 1152
    if 31 >= stor7[arg1].field_1 % 128:
        mem[544] = 256 * Mask(248, 0, stor7[arg1].field_8)
        mem[384] = 512
        mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
        if not stor7[arg1].field_256:
            mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
                mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
                idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                s = 0
                while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                    mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
                if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + 576
                    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                    _3181 = mem[mem[448]]
                    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                    idx = 0
                    t = mem[448] + 32
                    while idx < _3181:
                        mem[s] = mem[t + 30 len 2]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                    t = mem[480]
                    while idx < 5:
                        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3181) + -mem[64] + 1152
                mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
                while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
                _3183 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _3183:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _3183) + -mem[64] + 1152
            mem[0] = (4 * arg1) + sha3(7) + 2
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
                mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4102 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4102:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4102) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4104 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4104:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4104) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 1
        mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + 576
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
            mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
        if not stor7[arg1].field_512:
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4106 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4106:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4106) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4108 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4108:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4108) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 2
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
            mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
        if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
            _4770 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4770:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4770) + -mem[64] + 1152
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
        _4772 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _4772:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4772) + -mem[64] + 1152
    mem[0] = (4 * arg1) + sha3(7)
    mem[544] = stor7[arg1].field_0
    idx = 544
    s = 0
    while stor7[arg1].field_1 % 128 + 512 > idx:
        mem[idx + 32] = stor7[(4 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[384] = 512
    mem[ceil32(stor7[arg1].field_1 % 128) + 544] = stor7[arg1].field_256
    if not stor7[arg1].field_256:
        mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
        if not stor7[arg1].field_512:
            mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
            mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
            idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            s = 0
            while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
                mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
            if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + 576
                t = ceil32(mem[512]) + mem[64] + 352
                while idx < stor7[arg1].field_256:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
                _4097 = mem[mem[448]]
                mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
                s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
                idx = 0
                t = mem[448] + 32
                while idx < _4097:
                    mem[s] = mem[t + 30 len 2]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                idx = 0
                s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
                t = mem[480]
                while idx < 5:
                    mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4097) + -mem[64] + 1152
            mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
            while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
            _4099 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4099:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4099) + -mem[64] + 1152
        mem[0] = (4 * arg1) + sha3(7) + 2
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
            mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
        if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
            _4762 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4762:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4762) + -mem[64] + 1152
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
        _4764 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _4764:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4764) + -mem[64] + 1152
    mem[0] = (4 * arg1) + sha3(7) + 1
    mem[ceil32(stor7[arg1].field_1 % 128) + 576] = uint8(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
    idx = ceil32(stor7[arg1].field_1 % 128) + 576
    s = 0
    while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 544 > idx:
        mem[idx + 32] = storsha3((4 * arg1) + ('name', 'stor7', 7) + 1)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[416] = ceil32(stor7[arg1].field_1 % 128) + 544
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576] = stor7[arg1].field_512
    if not stor7[arg1].field_512:
        mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
        mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
        idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        s = 0
        while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
            mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
        if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + 576
            t = ceil32(mem[512]) + mem[64] + 352
            while idx < stor7[arg1].field_256:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
            _4766 = mem[mem[448]]
            mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
            s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
            idx = 0
            t = mem[448] + 32
            while idx < _4766:
                mem[s] = mem[t + 30 len 2]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            idx = 0
            s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
            t = mem[480]
            while idx < 5:
                mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _4766) + -mem[64] + 1152
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
        while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
        _4768 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _4768:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _4768) + -mem[64] + 1152
    mem[0] = (4 * arg1) + sha3(7) + 2
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_0)
    idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 608
    s = 0
    while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 576 > idx:
        mem[idx + 32] = uint16(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 2)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[448] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 576
    mem[64] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, 0))))
    idx = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
    s = 0
    while ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('signextend', 0, ('div', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'stor7', 7)))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[480] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 608
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 768] = 32
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 800] = 256
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1056] = stor7[arg1].field_1 % 128
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088 len ceil32(stor7[arg1].field_1 % 128)] = mem[544 len ceil32(stor7[arg1].field_1 % 128)]
    if ceil32(stor7[arg1].field_1 % 128) <= stor7[arg1].field_1 % 128:
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + 576
        t = ceil32(mem[512]) + mem[64] + 352
        while idx < stor7[arg1].field_256:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + 320
        _5114 = mem[mem[448]]
        mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120] = mem[mem[448]]
        s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1152
        idx = 0
        t = mem[448] + 32
        while idx < _5114:
            mem[s] = mem[t + 30 len 2]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
        t = mem[480]
        while idx < 5:
            mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (2 * ceil32(stor7[arg1].field_1 % 128)) + (64 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * _5114) + -mem[64] + 1152
    mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = 0
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 832] = ceil32(stor7[arg1].field_1 % 128) + 288
    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1088] = stor7[arg1].field_256
    idx = 0
    s = ceil32(stor7[arg1].field_1 % 128) + 576
    t = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 1120
    while idx < mem[ceil32(stor7[arg1].field_1 % 128) + 544]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 864] = ceil32(stor7[arg1].field_1 % 128) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 320
    _5116 = mem[mem[448]]
    mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1120] = mem[mem[448]]
    s = (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + 1152
    idx = 0
    t = mem[448] + 32
    while idx < _5116:
        mem[s] = mem[t + 30 len 2]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    idx = 0
    s = ceil32(stor7[arg1].field_1 % 128) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + 896
    t = mem[480]
    while idx < 5:
        mem[s] = ('signextend', 0, ('mem', ('range', ('var', 2), 32)))
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (2 * ceil32(stor7[arg1].field_1 % 128)) + (32 * stor7[arg1].field_256) + (32 * stor7[arg1].field_512) + (32 * mem[ceil32(stor7[arg1].field_1 % 128) + 544]) + (32 * _5116) + -mem[64] + 1152
}



}
