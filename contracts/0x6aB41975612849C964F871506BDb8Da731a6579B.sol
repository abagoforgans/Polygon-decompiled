contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
address stor1;
mapping of struct stor2;
uint64 hatchingsNeeded;
uint64 stor3; offset 64
uint64 stor3; offset 128
mapping of struct stor4;

function hatchingsNeeded() {
    return hatchingsNeeded
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setTokenContractAddress(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setPrice(uint32 arg1, uint64 arg2) {
    require msg.sender == owner
    stor4[arg1 << 224].field_0 = arg2
    stor4[arg1 << 224].field_64 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPrice(uint32 arg1) {
    if block.timestamp < 428924 * 3600:
        revert with 0, 'The sale hasn't started yet'
    require stor4[arg1 << 224].field_0 > 0
    if (block.timestamp - (428924 * 3600) / 48 * 24 * 3600) + 70 >= 100:
        return stor4[arg1 << 224].field_0
    return ((70 * stor4[arg1 << 224].field_0) + (block.timestamp - (428924 * 3600) / 48 * 24 * 3600 * stor4[arg1 << 224].field_0) / 100)
}

function getNumMyHatchingUnits() {
    idx = 0
    s = 0
    while idx < hatchingsNeeded:
        mem[0] = idx + uint64(stor3.field_64)
        mem[32] = 2
        if stor2[idx + uint64(stor3.field_64)].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx + uint64(stor3.field_64)
        mem[32] = 2
        idx = idx + 1
        s = stor2[idx + uint64(stor3.field_64)].field_160 + s
        continue 
    return s
}

function giveFreeUnit(address arg1, uint16 arg2) {
    require msg.sender == owner
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = arg1
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 1
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = arg2
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = 0
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
    hatchingsNeeded = uint64(hatchingsNeeded + 1)
}

function hatch() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require not paused
    if hatchingsNeeded <= 0:
        revert with 0, 'nothing to hatch'
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[0] = uint64(stor3.field_64)
    mem[32] = 2
    mem[64] = 576
    mem[416] = stor2[uint64(stor3.field_0)].field_0
    mem[448] = stor2[uint64(stor3.field_0)].field_160
    mem[480] = stor2[uint64(stor3.field_0)].field_176
    mem[512] = stor2[uint64(stor3.field_0)].field_192
    mem[544] = stor2[uint64(stor3.field_0)].field_208
    if stor2[uint64(stor3.field_0)].field_208 >= block.number:
        revert with 0, 'Can't hatch on the same block.'
    s = 0
    s = 0
    s = 0
    idx = 0
    s = block.hash(Mask(248, 8, block.number + -mem[570 len 6] - 1) + mem[570 len 6]) + uint64(stor3.field_128)
    while idx < stor2[uint64(stor3.field_0)].field_160:
        _96 = mem[64]
        mem[mem[64] + 32] = s
        _97 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _99 = mem[_97]
        t = _97 + 32
        u = mem[64]
        s = mem[_97]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_97])] = mem[_97 + floor32(mem[_97]) + -(mem[_97] % 32) + 64 len mem[_97] % 32] or Mask(8 * -(mem[_97] % 32) + 32, -(8 * -(mem[_97] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_97])])
        _182 = sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])
        if not mem[510 len 2]:
            if uint32(Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 100) < 80:
                _187 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_187) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_187) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_187) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            if uint32(Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 100) < 95:
                _195 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_195) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_195) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_195) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            if uint32(Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 100) >= 99:
                _207 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_207) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_207) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_207) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            _211 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_211) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_211) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_211) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        if 1 == mem[510 len 2]:
            if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 20) + 80) < 80:
                _191 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_191) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_191) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_191) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 20) + 80) < 95:
                _203 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_203) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_203) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_203) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 20) + 80) >= 99:
                _220 = mem[512]
                mem[mem[64] + 4] = mem[428 len 20]
                mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_220) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                require ext_code.size(stor1)
                call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_220) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = Mask(144, 112, _182) >> 48 or uint16(_220) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
                s = uint16(_182) % 30
                s = Mask(208, 48, _182) >> 48
                idx = idx + 1
                s = _182
                continue 
            _224 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_224) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_224) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_224) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        if mem[510 len 2] != 2:
            if mem[510 len 2] != 3:
                revert with 0, 'Invalid minimumRarity'
            _242 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_242) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_242) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_242) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 5) + 95) < 80:
            _199 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_199) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_199) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_199) << 208 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 5) + 95) < 95:
            _216 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_216) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_216) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_216) << 208 or 0x1000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        if uint32((Mask(32, 16, sha3(mem[mem[64] len _99 + _96 + -mem[64] + 64])) >> 16 % 5) + 95) >= 99:
            _230 = mem[512]
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_230) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            require ext_code.size(stor1)
            call stor1.mintAndSetData(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_230) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = Mask(144, 112, _182) >> 48 or uint16(_230) << 208 or 0x3000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
            s = uint16(_182) % 30
            s = Mask(208, 48, _182) >> 48
            idx = idx + 1
            s = _182
            continue 
        _234 = mem[512]
        mem[mem[64] + 4] = mem[428 len 20]
        mem[mem[64] + 36] = Mask(144, 112, _182) >> 48 or uint16(_234) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
        require ext_code.size(stor1)
        call stor1.mintAndSetData(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], Mask(144, 112, _182) >> 48 or uint16(_234) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = Mask(144, 112, _182) >> 48 or uint16(_234) << 208 or 0x2000000000000000000000000000000000000000000000000000000 or block.timestamp / 24 * 3600 << 220 or uint16(_182) % 30 << 248
        s = uint16(_182) % 30
        s = Mask(208, 48, _182) >> 48
        idx = idx + 1
        s = _182
        continue 
    if hatchingsNeeded <= 0:
        revert with 0, 'trying to popHatch() an empty stack'
    hatchingsNeeded = uint64(hatchingsNeeded - 1)
    uint64(stor3.field_64) = uint64(uint64(stor3.field_64) + 1)
    uint64(stor3.field_128) = uint64(uint64(stor3.field_128) + 1)
    _108 = mem[448]
    mem[mem[64]] = mem[428 len 20]
    emit Hatched(mem[mem[64]], _108 << 240);
}

function buy(uint16 arg1, address arg2) payable {
    require not paused
    if block.timestamp < 428924 * 3600:
        revert with 0, 'The sale hasn't started yet'
    require stor4[arg1 << 240].field_0 > 0
    if (block.timestamp - (428924 * 3600) / 48 * 24 * 3600) + 70 >= 100:
        if stor4[arg1 << 240].field_0 > msg.value:
            revert with 0, 'Amount paid is too low'
        if 1 == arg1:
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 1
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
        else:
            if 2 == arg1:
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 5
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
            else:
                if 3 == arg1:
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                    hatchingsNeeded = uint64(hatchingsNeeded + 1)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                else:
                    if 4 == arg1:
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    else:
                        if 5 == arg1:
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                        else:
                            if arg1 != 6:
                                revert with 0, 'Invalid sku'
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 3
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 2
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 7
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
        hatchingsNeeded = uint64(hatchingsNeeded + 1)
        if arg2:
            if arg2 != msg.sender:
                call arg2 with:
                   value stor4[arg1 << 240].field_0 / 20 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit Sold(msg.sender, arg1 << 240, stor4[arg1 << 240].field_0);
    else:
        if (70 * stor4[arg1 << 240].field_0) + (block.timestamp - (428924 * 3600) / 48 * 24 * 3600 * stor4[arg1 << 240].field_0) / 100 > msg.value:
            revert with 0, 'Amount paid is too low'
        if 1 == arg1:
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 1
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
        else:
            if 2 == arg1:
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 5
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
            else:
                if 3 == arg1:
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                    hatchingsNeeded = uint64(hatchingsNeeded + 1)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                else:
                    if 4 == arg1:
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                        stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                    else:
                        if 5 == arg1:
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_256 = 0
                        else:
                            if arg1 != 6:
                                revert with 0, 'Invalid sku'
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 3
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 2
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 10
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
                            hatchingsNeeded = uint64(hatchingsNeeded + 1)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_0 = msg.sender
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_160 = 7
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_168 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_176 = 1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_184 = 0
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_192 = arg1
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_208 = uint32(block.number)
                            stor2[uint64(stor3.field_64) + uint64(stor3.field_0) << 192].field_240 = 0
        hatchingsNeeded = uint64(hatchingsNeeded + 1)
        if arg2:
            if arg2 != msg.sender:
                call arg2 with:
                   value (70 * stor4[arg1 << 240].field_0) + (block.timestamp - (428924 * 3600) / 48 * 24 * 3600 * stor4[arg1 << 240].field_0) / 100 / 20 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit Sold(msg.sender, arg1 << 240, (70 * stor4[arg1 << 240].field_0) + (block.timestamp - (428924 * 3600) / 48 * 24 * 3600 * stor4[arg1 << 240].field_0) / 100);
}



}
