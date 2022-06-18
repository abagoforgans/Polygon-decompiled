contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c47808d(?)
#  - sub_96bf6b27(?)
#
uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct retrieveVanityForWallet;
mapping of bool stor99;

function retrieveVanityForWallet(address arg1) {
    return uint256(retrieveVanityForWallet[address(arg1)][0 len retrieveVanityForWallet[address(arg1)].length].field_0)
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function unpause() {
    require msg.sender == owner
    require paused
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retrieveWalletForVanity(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function checkForValidity(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require arg1.length >= 4
    require arg1.length <= 200
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        continue 
                    if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        continue 
        if Mask(8, 248, mem[idx + 128]) == 0x5f00000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_03547514(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    _35 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _35
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3(_35)])
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_35].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_35) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _69 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _69 % 32:
        return 32, mem[mem[64] + 32 len _69 + 32]
    mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
    return 32, mem[mem[64] + 32 len floor32(_69) + 64]
}

function sub_a3e5c431(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    _35 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _35
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3(_35)])
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_35].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_35) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _69 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _69 % 32:
        return 32, mem[mem[64] + 32 len _69 + 32]
    mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
    return 32, mem[mem[64] + 32 len floor32(_69) + 64]
}

function transferOwnershipForVanityURL(address arg1) {
    require not paused
    require not Mask(255, 1, (256 * not bool(retrieveVanityForWallet[address(arg1)].field_0)) - 1 and uint256(retrieveVanityForWallet[address(arg1)].field_0))
    require Mask(255, 1, (256 * not bool(retrieveVanityForWallet[address(msg.sender)].field_0)) - 1 and uint256(retrieveVanityForWallet[address(msg.sender)].field_0))
    if 31 >= retrieveVanityForWallet[address(msg.sender)].length:
        uint256(retrieveVanityForWallet[address(arg1)].field_0) = uint256(retrieveVanityForWallet[address(msg.sender)].field_0)
        idx = 0
        while retrieveVanityForWallet[address(arg1)].length + 31 / 32 > idx:
            uint256(retrieveVanityForWallet[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[96] = uint256(retrieveVanityForWallet[address(msg.sender)].field_0)
        idx = 96
        s = 0
        while retrieveVanityForWallet[address(msg.sender)].length + 96 > idx + 32:
            mem[idx + 32] = uint256(retrieveVanityForWallet[address(msg.sender)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[retrieveVanityForWallet[address(msg.sender)].length + 96] = 1
        address(stor[sha3(mem[96 len stor2[address(msg.sender)].length + 32])]) = arg1
        mem[224] = uint256(retrieveVanityForWallet[address(msg.sender)].field_0)
        idx = 224
        s = 0
        while retrieveVanityForWallet[address(msg.sender)].length + 224 > idx + 32:
            mem[idx + 32] = uint256(retrieveVanityForWallet[address(msg.sender)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit VanityTransfered(msg.sender, address(arg1), Array(len=retrieveVanityForWallet[address(msg.sender)].length, data=mem[224 len retrieveVanityForWallet[address(msg.sender)].length + (floor32(retrieveVanityForWallet[address(msg.sender)].length - 1) + -retrieveVanityForWallet[address(msg.sender)].length + 32 % 32)]));
        uint256(retrieveVanityForWallet[address(msg.sender)].field_0) = 0
        if 31 < retrieveVanityForWallet[address(msg.sender)].length:
            idx = 0
            while retrieveVanityForWallet[address(msg.sender)].length + 31 / 32 > idx:
                uint256(retrieveVanityForWallet[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        uint256(retrieveVanityForWallet[address(arg1)].field_0) = Mask(255, 1, (256 * not bool(retrieveVanityForWallet[address(msg.sender)].field_0)) - 1 and uint256(retrieveVanityForWallet[address(msg.sender)].field_0)) + 1
        if not Mask(255, 1, (256 * not bool(retrieveVanityForWallet[address(msg.sender)].field_0)) - 1 and uint256(retrieveVanityForWallet[address(msg.sender)].field_0)):
            idx = 0
            while retrieveVanityForWallet[address(arg1)].length + 31 / 32 > idx:
                uint256(retrieveVanityForWallet[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while retrieveVanityForWallet[address(msg.sender)].length + 31 / 32 > idx:
                uint256(retrieveVanityForWallet[address(arg1)][s].field_0) = uint256(retrieveVanityForWallet[address(msg.sender)][idx].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = retrieveVanityForWallet[address(msg.sender)].length + 31 / 32
            while retrieveVanityForWallet[address(arg1)].length + 31 / 32 > idx:
                uint256(retrieveVanityForWallet[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
        mem[96] = uint256(retrieveVanityForWallet[address(msg.sender)].field_0)
        idx = 96
        s = 0
        while retrieveVanityForWallet[address(msg.sender)].length + 96 > idx + 32:
            mem[idx + 32] = uint256(retrieveVanityForWallet[address(msg.sender)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[retrieveVanityForWallet[address(msg.sender)].length + 96] = 1
        address(stor[sha3(mem[96 len stor2[address(msg.sender)].length + 32])]) = arg1
        mem[224] = uint256(retrieveVanityForWallet[address(msg.sender)].field_0)
        idx = 224
        s = 0
        while retrieveVanityForWallet[address(msg.sender)].length + 224 > idx + 32:
            mem[idx + 32] = uint256(retrieveVanityForWallet[address(msg.sender)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit VanityTransfered(msg.sender, address(arg1), Array(len=retrieveVanityForWallet[address(msg.sender)].length, data=mem[224 len retrieveVanityForWallet[address(msg.sender)].length + (floor32(retrieveVanityForWallet[address(msg.sender)].length - 1) + -retrieveVanityForWallet[address(msg.sender)].length + 32 % 32)]));
        uint256(retrieveVanityForWallet[address(msg.sender)].field_0) = 0
        if 31 < retrieveVanityForWallet[address(msg.sender)].length:
            idx = 0
            while retrieveVanityForWallet[address(msg.sender)].length + 31 / 32 > idx:
                uint256(retrieveVanityForWallet[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_58229591(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require not paused
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
    mem[64] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192
    if arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 32 * arg1.length] = code.data[12999 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    require arg1.length >= 4
    require arg1.length <= 200
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) == 0x5f00000000000000000000000000000000000000000000000000000000000000
        else:
            if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) == 0x5f00000000000000000000000000000000000000000000000000000000000000
            else:
                if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                        require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) == 0x5f00000000000000000000000000000000000000000000000000000000000000
                    else:
                        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                require Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192]) == 0x5f00000000000000000000000000000000000000000000000000000000000000
        s = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192])
        idx = idx + 1
        continue 
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = 1
    require not address(stor[sha3(mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len arg1.length + 32])])
    require not Mask(255, 1, (256 * not bool(retrieveVanityForWallet[address(msg.sender)].field_0)) - 1 and uint256(retrieveVanityForWallet[address(msg.sender)].field_0))
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = 4
    require not Mask(255, 1, (256 * not bool(stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])) - 1 and uint256(stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]))
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = 1
    address(stor[sha3(mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len arg1.length + 32])]) = msg.sender
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    mem[arg1.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = 3
    uint256(stor[sha3(sha3(mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len arg1.length + 32]))][]) = Array(len=arg2.length, data=arg2[all])
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = 4
    uint256(stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][]) = Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg1.length])
    uint256(retrieveVanityForWallet[address(msg.sender)][].field_0) = Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg1.length])
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 192] = msg.sender
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 224] = 64
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256] = arg1.length
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(arg1.length)]
    emit VanityReserved(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg1.length]));
}

function releaseVanityUrl(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not paused
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    require address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    uint256(retrieveVanityForWallet[address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])].field_0) = 0
    if 31 >= retrieveVanityForWallet[address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])].length:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 1
        address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 3
        _927 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[_927].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor[_927].length + 128] = 4
        uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_927].length + 32])]) = 0
        if 31 >= stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_927].length + 32])].length:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        else:
            idx = 0
            while stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_927].length + 32])].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(arg1.length) + 128 len stor[_927].length + 32]))]) = 0
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var41001 = floor32(arg1.length) + 128
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 3
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
        if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
            idx = 0
            while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                idx = idx + 1
                continue 
    else:
        idx = 0
        while retrieveVanityForWallet[address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])].length + 31 / 32 > idx:
            uint256(retrieveVanityForWallet[address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])][idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 1
        address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 3
        _1129 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[_1129].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor[_1129].length + 128] = 4
        uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_1129].length + 32])]) = 0
        if 31 >= stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_1129].length + 32])].length:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 128] = 3
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
            if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                idx = 0
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                var48001 = ceil32(arg1.length)
        else:
            idx = 0
            while stor[sha3(mem[ceil32(arg1.length) + 128 len stor[_1129].length + 32])].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(arg1.length) + 128 len stor[_1129].length + 32]))]) = 0
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var47001 = floor32(arg1.length) + 128
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 128] = 3
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
            if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                idx = 0
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                    idx = idx + 1
                    continue 
    emit VanityReleased(Array(len=arg1.length, data=arg1[all]));
}



}
