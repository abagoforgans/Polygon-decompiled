contract main {




// =====================  Runtime code  =====================


#
#  - sub_5184c066(?)
#  - sub_51e8bab9(?)
#  - sub_827e902c(?)
#
address ceoAddress;
uint8 paused; offset 160
address workerAddress;
mapping of uint8 sub_776c2b84;
address treasuryAddress;
address pointerContractAddress;
mapping of uint256 sub_e72378ff;
mapping of struct sub_25294949;
mapping of struct sub_4c354436;
mapping of uint8 stor5;
mapping of struct stor6;
mapping of struct stor7;
mapping of struct stor8;
mapping of uint8 stor9;

function ceoAddress() payable {
    return ceoAddress
}

function sub_25294949(?) payable {
    require calldata.size - 4 >= 32
    require sub_25294949[Mask(128, 128, arg1)].field_1536 <= 2
    return sub_25294949[Mask(128, 128, arg1)].field_1024, sub_25294949[Mask(128, 128, arg1)].field_1536
}

function sub_4c354436(?) payable {
    require calldata.size - 4 >= 32
    return sub_4c354436[Mask(128, 128, arg1)].field_0, sub_4c354436[Mask(128, 128, arg1)].field_256
}

function pointerContract() payable {
    return pointerContractAddress
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function sub_697c6415(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(stor5[Mask(128, 128, arg1)])
    return sub_697c6415[uint8(arg2)]
}

function sub_776c2b84(?) payable {
    require calldata.size - 4 >= 64
    require sub_776c2b84[arg1][Mask(128, 128, arg2)] <= 2
    return sub_776c2b84[arg1][Mask(128, 128, arg2)]
}

function sub_9ac6c3ca(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < stor8[arg1][Mask(128, 128, arg2)].field_0
    return sub_9ac6c3ca[uint8(arg3)]
}

function sub_c1e14249(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor6[Mask(128, 128, arg1)].field_0
    return sub_c1e14249[uint8(arg2)]
}

function workerAddress() payable {
    return workerAddress
}

function sub_d4c57543(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor9[arg1][Mask(128, 128, arg2)])
}

function sub_e72378ff(?) payable {
    require calldata.size - 4 >= 96
    return sub_e72378ff[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function sub_659ae43f(?) payable {
    require calldata.size - 4 >= 32
    return arg1 / 13 << 248, uint8(arg1 % 13)
}

function sub_e4c279b7(?) payable {
    require calldata.size - 4 >= 32
    require uint8(arg1 % 13) < 13
    return 0
}

function sub_83cf376d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 == sha3(arg2):
        return 1
    else:
        return 0
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    treasuryAddress = arg1
}

function sub_d8885e4d(?) payable {
    require calldata.size - 4 >= 128
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    sub_e72378ff[arg1][arg2][arg3] = arg4
}

function updatePointer(address arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    pointerContractAddress = arg1
}

function pause() payable {
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    if paused:
        revert with 0, 'AccessControl: currently paused'
    paused = 1
    emit Paused()
}

function unpause() payable {
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    if not paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64416363657373436f6e74726f6c3a2063757272656e6c7479206e6f74207061757365,
                    mem[199 len 29]
    paused = 0
    emit Unpaused()
}

function sub_aa8d7c26(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg2) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg2)] <= 5
    return (stor((Mask(3, 5, arg2) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg2)] == 2)
}

function sub_ddd3d141(?) payable {
    require calldata.size - 4 >= 96
    require arg2 < sub_25294949[Mask(128, 128, arg1)].field_256
    stor[(uint8(arg2) / 2) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = arg3 * 256^(16 * bool(arg2)) or !(test266151307() * 256^(16 * bool(arg2))) and stor[(uint8(arg2) / 2) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
}

function setCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64416363657373436f6e74726f6c3a20696e76616c69642043454f20616464726573,
                    mem[198 len 30]
    ceoAddress = arg1
    emit CEOSet(arg1);
}

function sub_e6fae6be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 1 < arg1.length
    require uint8(mem[191 len 1] % 13) < 13
    require 0 < arg1.length
    require uint8(mem[159 len 1] % 13) < 13
    return (2 == arg1.length)
}

function sub_4d41ddaf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(mem[(32 * uint8(idx)) + 159 len 1] % 13) < 13
        idx = idx + 1
        continue 
    return 0
}

function sub_574a47e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(mem[(32 * uint8(idx)) + 159 len 1] % 13) < 13
        idx = idx + 1
        continue 
    return 0
}

function sub_433010c0(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 256 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + 256] = arg5
    mem[(64 * arg4.length) + 288] = Mask(128, 128, sha3(arg1, arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 256 len (32 * arg4.length) + -floor32(arg4.length) + 32]))
    return memory
      from (64 * arg4.length) + 288
       len (127 * arg4.length) + 32
}

function setWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe416363657373436f6e74726f6c3a20696e76616c696420776f726b657220616464726573,
                    mem[201 len 27]
    if ceoAddress != msg.sender:
        if workerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe416363657373436f6e74726f6c3a20696e76616c696420776f726b657220616464726573,
                        mem[201 len 27]
    workerAddress = arg1
    emit 0x54841e99: arg1
}

function sub_d4652cf4(?) payable {
    require calldata.size - 4 >= 32
    if sub_25294949[Mask(128, 128, arg1)].field_768:
        mem[128] = sub_25294949[Mask(128, 128, arg1)][3].field_0
        if (32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 32 > 64:
            mem[160] = sub_25294949[Mask(128, 128, arg1)][3].field_8
            idx = 160
            s = 1
            while (32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 96 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    mem[(32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 128] = 32
    mem[(32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 160] = sub_25294949[Mask(128, 128, arg1)].field_768
    mem[(32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 192 len floor32(sub_25294949[Mask(128, 128, arg1)].field_768)] = mem[128 len floor32(sub_25294949[Mask(128, 128, arg1)].field_768)]
    return memory
      from (32 * sub_25294949[Mask(128, 128, arg1)].field_768) + 128
       len (96 * sub_25294949[Mask(128, 128, arg1)].field_768) + 64
}

function sub_c54f0c52(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[Mask(128, 128, arg1)].field_0:
        mem[(32 * stor6[Mask(128, 128, arg1)].field_0) + 128] = 32
        mem[(32 * stor6[Mask(128, 128, arg1)].field_0) + 160] = stor6[Mask(128, 128, arg1)].field_0
        mem[(32 * stor6[Mask(128, 128, arg1)].field_0) + 192 len floor32(stor6[Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor6[Mask(128, 128, arg1)].field_0)]
        return memory
          from (32 * stor6[Mask(128, 128, arg1)].field_0) + 128
           len (96 * stor6[Mask(128, 128, arg1)].field_0) + 64
    mem[128] = stor6[Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor6[Mask(128, 128, arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor6', 6))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor6[Mask(128, 128, arg1)].field_0) + 192 len floor32(stor6[Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor6[Mask(128, 128, arg1)].field_0)]
    return Array(len=stor6[Mask(128, 128, arg1)].field_0, data=mem[128 len floor32(stor6[Mask(128, 128, arg1)].field_0)], mem[(32 * stor6[Mask(128, 128, arg1)].field_0) + floor32(stor6[Mask(128, 128, arg1)].field_0) + 192 len (32 * stor6[Mask(128, 128, arg1)].field_0) - floor32(stor6[Mask(128, 128, arg1)].field_0)]), 
}

function sub_5f7b9257(?) payable {
    require calldata.size - 4 >= 96
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    require sub_25294949[Mask(128, 128, arg1)].field_1536 <= 2
    require sub_25294949[Mask(128, 128, arg1)].field_1536 == 1
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    require not stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
    require 2 == stor7[address(arg2)][Mask(128, 128, arg1)].field_0
    require not stor9[address(arg2)][Mask(128, 128, arg1)]
    require 1 == uint256(stor5[Mask(128, 128, arg1)])
    mem[0] = Mask(128, 128, arg1)
    mem[32] = 5
    mem[64] = (32 * uint256(stor5[Mask(128, 128, arg1)])) + 128
    mem[96] = uint256(stor5[Mask(128, 128, arg1)])
    if not uint256(stor5[Mask(128, 128, arg1)]):
        require uint8(var23001) < uint256(stor5[Mask(128, 128, arg1)])
        if uint8(var23001) < uint256(stor5[Mask(128, 128, arg1)]):
            if uint8(mem[(32 * uint8(var23001)) + 159 len 1] % 13) < 13:
                var23001 = var23001 + 1
                continue 
    else:
        mem[0] = sha3(Mask(128, 128, arg1), 5)
        mem[128] = uint8(stor5[Mask(128, 128, arg1)])
        idx = 128
        s = 0
        while (32 * uint256(stor5[Mask(128, 128, arg1)])) + 96 > idx:
            mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor5', 5))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        require uint8(var27001) < uint256(stor5[Mask(128, 128, arg1)])
        if uint8(var27001) < uint256(stor5[Mask(128, 128, arg1)]):
            if uint8(mem[(32 * uint8(var27001)) + 159 len 1] % 13) < 13:
                var27001 = var27001 + 1
                continue 
    revert
}

function sub_4359cb0f(?) payable {
    require calldata.size - 4 >= 96
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    require sub_25294949[Mask(128, 128, arg1)].field_1536 <= 2
    require sub_25294949[Mask(128, 128, arg1)].field_1536 == 1
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]:
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
        require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
        if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] != 1:
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
    require sub_25294949[Mask(128, 128, arg1)][arg3].field_0 == arg2
    require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] <= 2
    require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] == 1
    stor6[Mask(128, 128, arg1)].field_0++
    stor6[Mask(128, 128, arg1)][stor6[Mask(128, 128, arg1)].field_5].field_0 = stor6[Mask(128, 128, arg1)][stor6[Mask(128, 128, arg1)].field_5].field_0 and !(255 * 256^stor6[Mask(128, 128, arg1)].field_0) or 256^stor6[Mask(128, 128, arg1)].field_0 * arg3
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 3 * 256^(arg3 % 32) or !(255 * 256^(arg3 % 32)) and stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
}

function sub_efc5e73d(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    s = 96
    idx = 4
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[352] = 1
    mem[384] = 0x4300000000000000000000000000000000000000000000000000000000000000
    mem[224] = 352
    mem[416] = 1
    mem[448] = 0x4400000000000000000000000000000000000000000000000000000000000000
    mem[256] = 416
    mem[480] = 1
    mem[512] = 0x4800000000000000000000000000000000000000000000000000000000000000
    mem[288] = 480
    mem[544] = 1
    mem[576] = 0x5300000000000000000000000000000000000000000000000000000000000000
    mem[320] = 544
    mem[608] = 96
    mem[640] = 96
    s = 640
    idx = 12
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[1440] = 1
    mem[1472] = 0x4100000000000000000000000000000000000000000000000000000000000000
    mem[1024] = 1440
    mem[1504] = 1
    mem[1536] = 0x3200000000000000000000000000000000000000000000000000000000000000
    mem[1056] = 1504
    mem[1568] = 1
    mem[1600] = 0x3300000000000000000000000000000000000000000000000000000000000000
    mem[1088] = 1568
    mem[1632] = 1
    mem[1664] = 0x3400000000000000000000000000000000000000000000000000000000000000
    mem[1120] = 1632
    mem[1696] = 1
    mem[1728] = 0x3500000000000000000000000000000000000000000000000000000000000000
    mem[1152] = 1696
    mem[1760] = 1
    mem[1792] = 0x3600000000000000000000000000000000000000000000000000000000000000
    mem[1184] = 1760
    mem[1824] = 1
    mem[1856] = 0x3700000000000000000000000000000000000000000000000000000000000000
    mem[1216] = 1824
    mem[1888] = 1
    mem[1920] = 0x3800000000000000000000000000000000000000000000000000000000000000
    mem[1248] = 1888
    mem[1952] = 1
    mem[1984] = 0x3900000000000000000000000000000000000000000000000000000000000000
    mem[1280] = 1952
    mem[2016] = 1
    mem[2048] = 0x5400000000000000000000000000000000000000000000000000000000000000
    mem[1312] = 2016
    mem[2080] = 1
    mem[2112] = 0x4a00000000000000000000000000000000000000000000000000000000000000
    mem[1344] = 2080
    mem[2144] = 1
    mem[2176] = 0x5100000000000000000000000000000000000000000000000000000000000000
    mem[1376] = 2144
    mem[64] = 2272
    mem[2208] = 1
    mem[2240] = 0x4b00000000000000000000000000000000000000000000000000000000000000
    mem[1408] = 2208
    require uint8(arg1 / 13) < 4
    _20 = mem[(32 * uint8(arg1 / 13)) + 224]
    require uint8(arg1 % 13) < 13
    _21 = mem[(32 * uint8(arg1 % 13)) + 1024]
    mem[2272] = 64
    mem[2336] = mem[_20]
    _24 = mem[_20]
    mem[2368 len ceil32(mem[_20])] = mem[_20 + 32 len ceil32(mem[_20])]
    if not _24 % 32:
        mem[2304] = _24 + 96
        mem[_24 + 2368] = mem[_21]
        _41 = mem[_21]
        mem[_24 + 2400 len ceil32(mem[_21])] = mem[_21 + 32 len ceil32(mem[_21])]
        if not _41 % 32:
            return 64, _24 + 96, mem[2336 len _41 + _24 + 64]
        mem[floor32(_41) + _24 + 2400] = mem[floor32(_41) + _24 + -(_41 % 32) + 2432 len _41 % 32]
        return 64, _24 + 96, mem[2336 len floor32(_41) + _24 + 96]
    mem[floor32(_24) + 2368] = mem[floor32(_24) + -(_24 % 32) + 2400 len _24 % 32]
    mem[2304] = floor32(_24) + 128
    mem[floor32(_24) + 2400] = mem[_21]
    _44 = mem[_21]
    mem[floor32(_24) + 2432 len ceil32(mem[_21])] = mem[_21 + 32 len ceil32(mem[_21])]
    if not _44 % 32:
        return 64, floor32(_24) + 128, mem[2336 len _44 + floor32(_24) + 96]
    mem[floor32(_44) + floor32(_24) + 2432] = mem[floor32(_44) + floor32(_24) + -(_44 % 32) + 2464 len _44 % 32]
    return 64, floor32(_24) + 128, mem[2336 len floor32(_44) + floor32(_24) + 128]
}

function sub_f9bf6de3(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2:
        if not stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
            mem[(32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 128] = 32
            mem[(32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 160] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            mem[(32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)]
            return memory
              from (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 128
               len (96 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 64
        mem[128] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)]
        return Array(len=stor8[address(arg2)][Mask(128, 128, arg1)].field_0, data=mem[128 len floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)], mem[(32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) - floor32(stor8[address(arg2)][Mask(128, 128, arg1)].field_0)]), 
    if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128] = 32
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 160] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)]
        return memory
          from (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128
           len (96 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 64
    mem[128] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)] = mem[128 len floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)]
    return Array(len=stor7[address(arg2)][Mask(128, 128, arg1)].field_0, data=mem[128 len floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)], mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192 len (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) - floor32(stor7[address(arg2)][Mask(128, 128, arg1)].field_0)]), 
}

function sub_5bc57af9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    require cd[228] <= 4294967296
    require cd[228] + 36 <= calldata.size
    require ('cd', 228).length <= 4294967296 and cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    mem[0] = Mask(128, 128, cd[4])
    mem[32] = 3
    require sub_25294949[Mask(128, 128, cd[4])].field_1536 <= 2
    require sub_25294949[Mask(128, 128, cd[4])].field_1536 == 1
    if paused:
        revert with 0, 'AccessControl: currently paused'
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    idx = 0
    while idx < ('cd', 196).length:
        mem[0] = cd[100]
        mem[32] = sha3(cd[68], sha3(cd[36], 2))
        mem[mem[64] + 32] = cd[((32 * idx) + cd[196] + 36)]
        _49 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        if sha3(mem[_49 + 32 len mem[_49]]) != sub_e72378ff[cd[36]][cd[68]][cd[100]]:
            revert with 0, 'hash-chain: wrong parent'
        mem[0] = cd[100]
        mem[32] = sha3(cd[68], sha3(cd[36], 2))
        sub_e72378ff[cd[36]][cd[68]][cd[100]] = cd[((32 * idx) + cd[196] + 36)]
        idx = idx + 1
        continue 
    sub_25294949[Mask(128, 128, cd[4])].field_1536 = 2
    idx = 0
    while ('cd', 132).length > uint8(idx):
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_512
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_0
        require uint8(idx) < ('cd', 164).length
        require uint8(idx) < ('cd', 132).length
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x31297992 with:
             gas gas_remaining wei
            args stor[(uint8(idx) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('cd', 4)), ('name', 'sub_25294949', 3)))].field_(8 * idx % 32) - 248, sub_25294949[Mask(128, 128, cd[4])][uint8(idx)].field_0, uint128(uint128(cd[((32 * uint8(idx)) + cd[132] + 36)]) + uint128(cd[((32 * uint8(idx)) + cd[164] + 36)]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < ('cd', 164).length
        require uint8(idx) < ('cd', 228).length
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_256
        require stor((Mask(7, 1, idx) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('cd', 4)), ('name', 'stor3', 3))))[uint8(idx)] >= uint128(cd[((32 * uint8(idx)) + cd[164] + 36)])
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_0
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_256
        require uint8(idx) < sub_25294949[Mask(128, 128, cd[4])].field_512
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.getTokenAddress(uint8 arg1) with:
                gas gas_remaining wei
               args stor[(uint8(idx) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('cd', 4)), ('name', 'sub_25294949', 3)))].field_(8 * idx % 32) - 248
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = Mask(128, 128, cd[4])
        mem[32] = 3
        mem[mem[64] + 68] = address(ext_call.return_data[0])
        mem[mem[64] + 100] = sub_25294949[Mask(128, 128, cd[4])].field_0
        mem[mem[64] + 132] = uint128(cd[((32 * uint8(idx)) + cd[228] + 36)])
        require ext_code.size(pointerContractAddress)
        call pointerContractAddress.0x6804295 with:
             gas gas_remaining wei
            args sub_25294949[Mask(128, 128, cd[4])][uint8(idx)].field_0, stor((Mask(7, 1, idx) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('cd', 4)), ('name', 'stor3', 3))))[uint8(idx)] - uint128(cd[((32 * uint8(idx)) + cd[164] + 36)]) << 128, address(ext_call.return_data[0]), sub_25294949[Mask(128, 128, cd[4])].field_0, uint128(cd[((32 * uint8(idx)) + cd[228] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        idx = idx + 1
        continue 
    emit 0x8a06fcdc: Mask(128, 128, cd[4])
}

function sub_bb89cc83(?) payable {
    require calldata.size - 4 >= 128
    require arg4 < sub_25294949[Mask(128, 128, arg1)].field_0
    mem[32] = 3
    mem[128] = arg3
    mem[160] = sub_25294949[Mask(128, 128, arg1)].field_768
    mem[96] = 64
    require sub_25294949[Mask(128, 128, arg1)].field_768
    require sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
    require sub_25294949[Mask(128, 128, arg1)].field_768 - 1 < sub_25294949[Mask(128, 128, arg1)].field_768
    require sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
    stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = stor((0.03125 / Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))]) - 1) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(stor3[Mask(128, 128, arg1)].field_768 - 1)] * 256^(sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) or !(255 * 256^(sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32)) and stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
    require sub_25294949[Mask(128, 128, arg1)].field_768
    mem[0] = sha3(Mask(128, 128, arg1), 3) + 3
    stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0 = !(255 * 256^(sub_25294949[Mask(128, 128, arg1)].field_768 - 1 % 32)) and stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0
    sub_25294949[Mask(128, 128, arg1)].field_768--
    mem[192] = 96
    s = 192
    idx = 4
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[448] = 1
    mem[480] = 0x4300000000000000000000000000000000000000000000000000000000000000
    mem[320] = 448
    mem[512] = 1
    mem[544] = 0x4400000000000000000000000000000000000000000000000000000000000000
    mem[352] = 512
    mem[576] = 1
    mem[608] = 0x4800000000000000000000000000000000000000000000000000000000000000
    mem[384] = 576
    mem[640] = 1
    mem[672] = 0x5300000000000000000000000000000000000000000000000000000000000000
    mem[416] = 640
    mem[704] = 96
    mem[736] = 96
    s = 736
    idx = 12
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[1536] = 1
    mem[1568] = 0x4100000000000000000000000000000000000000000000000000000000000000
    mem[1120] = 1536
    mem[1600] = 1
    mem[1632] = 0x3200000000000000000000000000000000000000000000000000000000000000
    mem[1152] = 1600
    mem[1664] = 1
    mem[1696] = 0x3300000000000000000000000000000000000000000000000000000000000000
    mem[1184] = 1664
    mem[1728] = 1
    mem[1760] = 0x3400000000000000000000000000000000000000000000000000000000000000
    mem[1216] = 1728
    mem[1792] = 1
    mem[1824] = 0x3500000000000000000000000000000000000000000000000000000000000000
    mem[1248] = 1792
    mem[1856] = 1
    mem[1888] = 0x3600000000000000000000000000000000000000000000000000000000000000
    mem[1280] = 1856
    mem[1920] = 1
    mem[1952] = 0x3700000000000000000000000000000000000000000000000000000000000000
    mem[1312] = 1920
    mem[1984] = 1
    mem[2016] = 0x3800000000000000000000000000000000000000000000000000000000000000
    mem[1344] = 1984
    mem[2048] = 1
    mem[2080] = 0x3900000000000000000000000000000000000000000000000000000000000000
    mem[1376] = 2048
    mem[2112] = 1
    mem[2144] = 0x5400000000000000000000000000000000000000000000000000000000000000
    mem[1408] = 2112
    mem[2176] = 1
    mem[2208] = 0x4a00000000000000000000000000000000000000000000000000000000000000
    mem[1440] = 2176
    mem[2240] = 1
    mem[2272] = 0x5100000000000000000000000000000000000000000000000000000000000000
    mem[1472] = 2240
    mem[64] = 2368
    mem[2304] = 1
    mem[2336] = 0x4b00000000000000000000000000000000000000000000000000000000000000
    mem[1504] = 2304
    require uint8(stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13) < 4
    _31 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13)) + 320]
    require uint8(stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13) < 13
    _32 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13)) + 1120]
    require arg4 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg4) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg4)] <= 5
    if stor((Mask(3, 5, arg4) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg4)] == 2:
        mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg4].field_0, 8)
        stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0++
        mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg4].field_0, 8))
        stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0) and stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_5].field_0
        mem[2368] = Mask(128, 128, arg1)
        mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg4].field_0
        mem[2432] = arg4
        mem[2464] = stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
        mem[2496] = 192
        mem[2560] = mem[_31]
        _42 = mem[_31]
        mem[2592 len ceil32(mem[_31])] = mem[_31 + 32 len ceil32(mem[_31])]
        if not _42 % 32:
            mem[2528] = _42 + 224
            mem[_42 + 2592] = mem[_32]
            _510 = mem[_32]
            mem[_42 + 2624 len ceil32(mem[_32])] = mem[_32 + 32 len ceil32(mem[_32])]
            if not _510 % 32:
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _42 + 224, mem[2560 len _510 + _42 + 64]
            else:
                mem[floor32(_510) + _42 + 2624] = mem[floor32(_510) + _42 + -(_510 % 32) + 2656 len _510 % 32]
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _42 + 224, mem[2560 len floor32(_510) + _42 + 96]
        else:
            mem[floor32(_42) + 2592] = mem[floor32(_42) + -(_42 % 32) + 2624 len _42 % 32]
            mem[2528] = floor32(_42) + 256
            mem[floor32(_42) + 2624] = mem[_32]
            _516 = mem[_32]
            mem[floor32(_42) + 2656 len ceil32(mem[_32])] = mem[_32 + 32 len ceil32(mem[_32])]
            if not _516 % 32:
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_42) + 256, mem[2560 len _516 + floor32(_42) + 96]
            else:
                mem[floor32(_516) + floor32(_42) + 2656] = mem[floor32(_516) + floor32(_42) + -(_516 % 32) + 2688 len _516 % 32]
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_42) + 256, mem[2560 len floor32(_516) + floor32(_42) + 128]
    else:
        mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg4].field_0, 7)
        stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0++
        mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg4].field_0, 7))
        stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_0) and stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg4].field_0][Mask(128, 128, arg1)].field_5].field_0
        mem[2368] = Mask(128, 128, arg1)
        mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg4].field_0
        mem[2432] = arg4
        mem[2464] = stor((0.03125 / ('map', ('param', 'arg3'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg3, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
        mem[2496] = 192
        mem[2560] = mem[_31]
        _46 = mem[_31]
        mem[2592 len ceil32(mem[_31])] = mem[_31 + 32 len ceil32(mem[_31])]
        if not _46 % 32:
            mem[2528] = _46 + 224
            mem[_46 + 2592] = mem[_32]
            _513 = mem[_32]
            mem[_46 + 2624 len ceil32(mem[_32])] = mem[_32 + 32 len ceil32(mem[_32])]
            if not _513 % 32:
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _46 + 224, mem[2560 len _513 + _46 + 64]
            else:
                mem[floor32(_513) + _46 + 2624] = mem[floor32(_513) + _46 + -(_513 % 32) + 2656 len _513 % 32]
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _46 + 224, mem[2560 len floor32(_513) + _46 + 96]
        else:
            mem[floor32(_46) + 2592] = mem[floor32(_46) + -(_46 % 32) + 2624 len _46 % 32]
            mem[2528] = floor32(_46) + 256
            mem[floor32(_46) + 2624] = mem[_32]
            _518 = mem[_32]
            mem[floor32(_46) + 2656 len ceil32(mem[_32])] = mem[_32 + 32 len ceil32(mem[_32])]
            if not _518 % 32:
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_46) + 256, mem[2560 len _518 + floor32(_46) + 96]
            else:
                mem[floor32(_518) + floor32(_46) + 2656] = mem[floor32(_518) + floor32(_46) + -(_518 % 32) + 2688 len _518 % 32]
                emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg4].field_0, arg4 << 248, stor[(0.03125 / ('map', ('param', 'arg3'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg3, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_46) + 256, mem[2560 len floor32(_518) + floor32(_46) + 128]
    require arg4 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg4) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg4)] <= 5
    if stor((Mask(3, 5, arg4) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg4)] == 2:
        if stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
            mem[2400] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = 2400
            s = 0
            while (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 2368 > idx:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        idx = 0
        while uint8(idx) < stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
            require uint8(idx) < stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            require uint8(mem[(32 * uint8(idx)) + 2431 len 1] % 13) < 13
            idx = idx + 1
            continue 
    else:
        if stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            mem[2400] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = 2400
            s = 0
            while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 2368 > idx:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        idx = 0
        while uint8(idx) < stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            require uint8(idx) < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            require uint8(mem[(32 * uint8(idx)) + 2431 len 1] % 13) < 13
            idx = idx + 1
            continue 
    emit 0xba94a751: 0
    stor6[Mask(128, 128, arg1)].field_0++
    stor6[Mask(128, 128, arg1)][stor6[Mask(128, 128, arg1)].field_5].field_0 = stor6[Mask(128, 128, arg1)][stor6[Mask(128, 128, arg1)].field_5].field_0 and !(255 * 256^stor6[Mask(128, 128, arg1)].field_0) or 256^stor6[Mask(128, 128, arg1)].field_0 * arg4
    require arg4 < sub_25294949[Mask(128, 128, arg1)].field_1280
    stor[(uint8(arg4) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 3 * 256^(arg4 % 32) or !(255 * 256^(arg4 % 32)) and stor[(uint8(arg4) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
    emit 0xe0962519: 0
}

function sub_82c0e522(?) payable {
    require calldata.size - 4 >= 96
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    require sub_25294949[Mask(128, 128, arg1)].field_1536 <= 2
    require sub_25294949[Mask(128, 128, arg1)].field_1536 == 1
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    require not stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
    require sub_25294949[Mask(128, 128, arg1)][arg3].field_0 == arg2
    require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] <= 2
    require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] == 1
    require not stor8[address(arg2)][Mask(128, 128, arg1)].field_0
    if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
        require 1 < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        require uint8(mem[191 len 1] % 13) < 13
        require 0 < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        require uint8(mem[159 len 1] % 13) < 13
        require 2 == stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        sub_25294949[Mask(128, 128, arg1)].field_0++
        sub_25294949[Mask(128, 128, arg1)][sub_25294949[Mask(128, 128, arg1)].field_0].field_0 = arg2
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_256
        sub_25294949[Mask(128, 128, arg1)].field_256++
        stor[sub_25294949[Mask(128, 128, arg1)].field_257 + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^(16 * sub_25294949[Mask(128, 128, arg1)].field_256) * stor(('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (Mask(7, 1, arg3) >> 1))[uint8(arg3)] or stor[sub_25294949[Mask(128, 128, arg1)].field_257 + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 and !(test266151307() * 256^(16 * sub_25294949[Mask(128, 128, arg1)].field_256))
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_512
        sub_25294949[Mask(128, 128, arg1)].field_512++
        stor[sub_25294949[Mask(128, 128, arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^sub_25294949[Mask(128, 128, arg1)].field_512 * stor((Mask(3, 5, arg3) >> 5) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] or stor[sub_25294949[Mask(128, 128, arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 and !(255 * 256^sub_25294949[Mask(128, 128, arg1)].field_512)
        sub_25294949[Mask(128, 128, arg1)].field_1280++
        stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + sub_25294949[Mask(128, 128, arg1)].field_1285].field_0 = stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + sub_25294949[Mask(128, 128, arg1)].field_1285].field_0 and !(255 * 256^sub_25294949[Mask(128, 128, arg1)].field_1280) or 2 * 256^sub_25294949[Mask(128, 128, arg1)].field_1280
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
        stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^(arg3 % 32) or !(255 * 256^(arg3 % 32)) and stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_512
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_256
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x71da23e9 with:
                gas gas_remaining wei
               args stor((Mask(3, 5, arg3) >> 5) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[16 len 16] >= stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x41d4c74f with:
             gas gas_remaining wei
            args stor[(uint8(arg3) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * arg3 % 32) - 248, sub_25294949[Mask(128, 128, arg1)][arg3].field_0, stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x65c4542a: stor[(uint8(arg3) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * arg3 % 32) - 248, sub_25294949[Mask(128, 128, arg1)][arg3].field_0, stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        require stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        stor7[address(arg2)][Mask(128, 128, arg1)][0.03125 / stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1].field_0 = !(255 * 256^(stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1 % 32)) and stor7[address(arg2)][Mask(128, 128, arg1)][0.03125 / stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1].field_0
        stor7[address(arg2)][Mask(128, 128, arg1)].field_0--
        stor8[address(arg2)][Mask(128, 128, arg1)].field_0 = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            idx = 0
            while stor8[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor7[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][s].field_0 = stor7[address(arg2)][Mask(128, 128, arg1)][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor7[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32
            while stor8[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128] = Mask(128, 128, arg1)
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 160] = arg2
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192] = sub_25294949[Mask(128, 128, arg1)].field_0 - 1
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 224] = 160
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 288] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            if not stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, 160, 192, stor7[address(arg2)][Mask(128, 128, arg1)].field_0, stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            else:
                mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
                idx = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352
                s = 0
                while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 > idx + 32:
                    mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, 160, 192, stor7[address(arg2)][Mask(128, 128, arg1)].field_0, stor8[address(arg2)][Mask(128, 128, arg1)].field_0, mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 len 32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0]
        else:
            mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320
            s = 0
            while (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320 > idx + 32:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 256] = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192
            mem[(64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            if not stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, Array(len=stor7[address(arg2)][Mask(128, 128, arg1)].field_0, data=mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320 len (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 32]), (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192
            else:
                mem[(64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
                idx = (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352
                s = 0
                while (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 > idx + 32:
                    mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                emit 0x93675dd8: mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128 len (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 224]
    else:
        mem[128] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        require 1 < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        require uint8(mem[191 len 1] % 13) < 13
        require 0 < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        require uint8(mem[159 len 1] % 13) < 13
        require 2 == stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        sub_25294949[Mask(128, 128, arg1)].field_0++
        sub_25294949[Mask(128, 128, arg1)][sub_25294949[Mask(128, 128, arg1)].field_0].field_0 = arg2
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_256
        sub_25294949[Mask(128, 128, arg1)].field_256++
        stor[sub_25294949[Mask(128, 128, arg1)].field_257 + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^(16 * sub_25294949[Mask(128, 128, arg1)].field_256) * stor(('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (Mask(7, 1, arg3) >> 1))[uint8(arg3)] or stor[sub_25294949[Mask(128, 128, arg1)].field_257 + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 and !(test266151307() * 256^(16 * sub_25294949[Mask(128, 128, arg1)].field_256))
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_512
        sub_25294949[Mask(128, 128, arg1)].field_512++
        stor[sub_25294949[Mask(128, 128, arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^sub_25294949[Mask(128, 128, arg1)].field_512 * stor((Mask(3, 5, arg3) >> 5) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] or stor[sub_25294949[Mask(128, 128, arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 and !(255 * 256^sub_25294949[Mask(128, 128, arg1)].field_512)
        sub_25294949[Mask(128, 128, arg1)].field_1280++
        stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + sub_25294949[Mask(128, 128, arg1)].field_1285].field_0 = stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + sub_25294949[Mask(128, 128, arg1)].field_1285].field_0 and !(255 * 256^sub_25294949[Mask(128, 128, arg1)].field_1280) or 2 * 256^sub_25294949[Mask(128, 128, arg1)].field_1280
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
        stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = 256^(arg3 % 32) or !(255 * 256^(arg3 % 32)) and stor[(uint8(arg3) / 32) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_512
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_256
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x71da23e9 with:
                gas gas_remaining wei
               args stor((Mask(3, 5, arg3) >> 5) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint128(ext_call.return_data[0]) >= stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x41d4c74f with:
             gas gas_remaining wei
            args stor[(uint8(arg3) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * arg3 % 32) - 248, sub_25294949[Mask(128, 128, arg1)][arg3].field_0, stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x65c4542a: stor[(uint8(arg3) / 32) + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * arg3 % 32) - 248, sub_25294949[Mask(128, 128, arg1)][arg3].field_0, stor((Mask(7, 1, arg3) >> 1) + ('array', 1, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]
        require stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        stor7[address(arg2)][Mask(128, 128, arg1)][0.03125 / stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1].field_0 = !(255 * 256^(stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1 % 32)) and stor7[address(arg2)][Mask(128, 128, arg1)][0.03125 / stor7[address(arg2)][Mask(128, 128, arg1)].field_0 - 1].field_0
        stor7[address(arg2)][Mask(128, 128, arg1)].field_0--
        stor8[address(arg2)][Mask(128, 128, arg1)].field_0 = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            idx = 0
            while stor8[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor7[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][s].field_0 = stor7[address(arg2)][Mask(128, 128, arg1)][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor7[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32
            while stor8[address(arg2)][Mask(128, 128, arg1)].field_0 + 31 / 32 > idx:
                stor8[address(arg2)][Mask(128, 128, arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128] = Mask(128, 128, arg1)
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 160] = arg2
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192] = sub_25294949[Mask(128, 128, arg1)].field_0 - 1
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 224] = 160
        mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 288] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
        if not stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            if not stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, 160, 192, stor7[address(arg2)][Mask(128, 128, arg1)].field_0, stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            else:
                mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
                idx = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352
                s = 0
                while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 > idx + 32:
                    mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, 160, 192, stor7[address(arg2)][Mask(128, 128, arg1)].field_0, stor8[address(arg2)][Mask(128, 128, arg1)].field_0, mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 len 32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0]
        else:
            mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320
            s = 0
            while (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320 > idx + 32:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 256] = (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192
            if not stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
                emit 0x93675dd8: Mask(128, 128, arg1), address(arg2), sub_25294949[Mask(128, 128, arg1)].field_0 - 1, Array(len=stor7[address(arg2)][Mask(128, 128, arg1)].field_0, data=mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 320 len 32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0], stor8[address(arg2)][Mask(128, 128, arg1)].field_0), (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192
            else:
                mem[(64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
                idx = (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352
                s = 0
                while (64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 > idx + 32:
                    mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                emit 0x93675dd8: mem[(32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 128 len (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 192], stor8[address(arg2)][Mask(128, 128, arg1)].field_0, mem[(64 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 352 len 32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0]
}

function sub_457457af(?) payable {
    require calldata.size - 4 >= 128
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    require sub_25294949[Mask(128, 128, arg1)].field_1536 <= 2
    require sub_25294949[Mask(128, 128, arg1)].field_1536 == 1
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    if not stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)]:
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
        require sub_25294949[Mask(128, 128, arg1)][arg3].field_0 == arg2
        require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] <= 2
        require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] == 1
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x65afb44f with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
        mem[32] = 3
        mem[128] = arg4
        mem[160] = sub_25294949[Mask(128, 128, arg1)].field_768
        mem[96] = 64
        require sub_25294949[Mask(128, 128, arg1)].field_768
        require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
        require sub_25294949[Mask(128, 128, arg1)].field_768 - 1 < sub_25294949[Mask(128, 128, arg1)].field_768
        require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
        stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = stor((0.03125 / Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))]) - 1) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(stor3[Mask(128, 128, arg1)].field_768 - 1)] * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) or !(255 * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32)) and stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
        require sub_25294949[Mask(128, 128, arg1)].field_768
        mem[0] = sha3(Mask(128, 128, arg1), 3) + 3
        stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0 = !(255 * 256^(sub_25294949[Mask(128, 128, arg1)].field_768 - 1 % 32)) and stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0
        sub_25294949[Mask(128, 128, arg1)].field_768--
        mem[192] = 96
        s = 192
        idx = 4
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        mem[448] = 1
        mem[480] = 0x4300000000000000000000000000000000000000000000000000000000000000
        mem[320] = 448
        mem[512] = 1
        mem[544] = 0x4400000000000000000000000000000000000000000000000000000000000000
        mem[352] = 512
        mem[576] = 1
        mem[608] = 0x4800000000000000000000000000000000000000000000000000000000000000
        mem[384] = 576
        mem[640] = 1
        mem[672] = 0x5300000000000000000000000000000000000000000000000000000000000000
        mem[416] = 640
        mem[704] = 96
        mem[736] = 96
        s = 736
        idx = 12
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        mem[1536] = 1
        mem[1568] = 0x4100000000000000000000000000000000000000000000000000000000000000
        mem[1120] = 1536
        mem[1600] = 1
        mem[1632] = 0x3200000000000000000000000000000000000000000000000000000000000000
        mem[1152] = 1600
        mem[1664] = 1
        mem[1696] = 0x3300000000000000000000000000000000000000000000000000000000000000
        mem[1184] = 1664
        mem[1728] = 1
        mem[1760] = 0x3400000000000000000000000000000000000000000000000000000000000000
        mem[1216] = 1728
        mem[1792] = 1
        mem[1824] = 0x3500000000000000000000000000000000000000000000000000000000000000
        mem[1248] = 1792
        mem[1856] = 1
        mem[1888] = 0x3600000000000000000000000000000000000000000000000000000000000000
        mem[1280] = 1856
        mem[1920] = 1
        mem[1952] = 0x3700000000000000000000000000000000000000000000000000000000000000
        mem[1312] = 1920
        mem[1984] = 1
        mem[2016] = 0x3800000000000000000000000000000000000000000000000000000000000000
        mem[1344] = 1984
        mem[2048] = 1
        mem[2080] = 0x3900000000000000000000000000000000000000000000000000000000000000
        mem[1376] = 2048
        mem[2112] = 1
        mem[2144] = 0x5400000000000000000000000000000000000000000000000000000000000000
        mem[1408] = 2112
        mem[2176] = 1
        mem[2208] = 0x4a00000000000000000000000000000000000000000000000000000000000000
        mem[1440] = 2176
        mem[2240] = 1
        mem[2272] = 0x5100000000000000000000000000000000000000000000000000000000000000
        mem[1472] = 2240
        mem[64] = 2368
        mem[2304] = 1
        mem[2336] = 0x4b00000000000000000000000000000000000000000000000000000000000000
        mem[1504] = 2304
        require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13) < 4
        _121 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13)) + 320]
        require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13) < 13
        _124 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13)) + 1120]
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
        require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
        if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2:
            mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8)
            stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
            mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8))
            stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
            mem[2368] = Mask(128, 128, arg1)
            mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
            mem[2432] = arg3
            mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
            mem[2496] = 192
            mem[2560] = mem[_121]
            _148 = mem[_121]
            mem[2592 len ceil32(mem[_121])] = mem[_121 + 32 len ceil32(mem[_121])]
            if not _148 % 32:
                mem[2528] = _148 + 224
                mem[_148 + 2592] = mem[_124]
                _788 = mem[_124]
                mem[_148 + 2624 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
                if not _788 % 32:
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _148 + 224, mem[2560 len _788 + _148 + 64]
                else:
                    mem[floor32(_788) + _148 + 2624] = mem[floor32(_788) + _148 + -(_788 % 32) + 2656 len _788 % 32]
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _148 + 224, mem[2560 len floor32(_788) + _148 + 96]
            else:
                mem[floor32(_148) + 2592] = mem[floor32(_148) + -(_148 % 32) + 2624 len _148 % 32]
                mem[2528] = floor32(_148) + 256
                mem[floor32(_148) + 2624] = mem[_124]
                _806 = mem[_124]
                mem[floor32(_148) + 2656 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
                if not _806 % 32:
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_148) + 256, mem[2560 len _806 + floor32(_148) + 96]
                else:
                    mem[floor32(_806) + floor32(_148) + 2656] = mem[floor32(_806) + floor32(_148) + -(_806 % 32) + 2688 len _806 % 32]
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_148) + 256, mem[2560 len floor32(_806) + floor32(_148) + 128]
        else:
            mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7)
            stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
            mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7))
            stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
            mem[2368] = Mask(128, 128, arg1)
            mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
            mem[2432] = arg3
            mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
            mem[2496] = 192
            mem[2560] = mem[_121]
            _152 = mem[_121]
            mem[2592 len ceil32(mem[_121])] = mem[_121 + 32 len ceil32(mem[_121])]
            if not _152 % 32:
                mem[2528] = _152 + 224
                mem[_152 + 2592] = mem[_124]
                _791 = mem[_124]
                mem[_152 + 2624 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
                if not _791 % 32:
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _152 + 224, mem[2560 len _791 + _152 + 64]
                else:
                    mem[floor32(_791) + _152 + 2624] = mem[floor32(_791) + _152 + -(_791 % 32) + 2656 len _791 % 32]
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _152 + 224, mem[2560 len floor32(_791) + _152 + 96]
            else:
                mem[floor32(_152) + 2592] = mem[floor32(_152) + -(_152 % 32) + 2624 len _152 % 32]
                mem[2528] = floor32(_152) + 256
                mem[floor32(_152) + 2624] = mem[_124]
                _808 = mem[_124]
                mem[floor32(_152) + 2656 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
                if not _808 % 32:
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_152) + 256, mem[2560 len _808 + floor32(_152) + 96]
                else:
                    mem[floor32(_808) + floor32(_152) + 2656] = mem[floor32(_808) + floor32(_152) + -(_808 % 32) + 2688 len _808 % 32]
                    emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_152) + 256, mem[2560 len floor32(_808) + floor32(_152) + 128]
    else:
        require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
        require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
        if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 1:
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
            require sub_25294949[Mask(128, 128, arg1)][arg3].field_0 == arg2
            require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] <= 2
            require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] == 1
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0x65afb44f with:
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
            mem[32] = 3
            mem[128] = arg4
            mem[160] = sub_25294949[Mask(128, 128, arg1)].field_768
            mem[96] = 64
            require sub_25294949[Mask(128, 128, arg1)].field_768
            require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
            require sub_25294949[Mask(128, 128, arg1)].field_768 - 1 < sub_25294949[Mask(128, 128, arg1)].field_768
            require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
            stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = stor((0.03125 / Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))]) - 1) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(stor3[Mask(128, 128, arg1)].field_768 - 1)] * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) or !(255 * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32)) and stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
            require sub_25294949[Mask(128, 128, arg1)].field_768
            mem[0] = sha3(Mask(128, 128, arg1), 3) + 3
            stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0 = !(255 * 256^(sub_25294949[Mask(128, 128, arg1)].field_768 - 1 % 32)) and stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0
            sub_25294949[Mask(128, 128, arg1)].field_768--
            mem[192] = 96
            s = 192
            idx = 4
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            mem[448] = 1
            mem[480] = 0x4300000000000000000000000000000000000000000000000000000000000000
            mem[320] = 448
            mem[512] = 1
            mem[544] = 0x4400000000000000000000000000000000000000000000000000000000000000
            mem[352] = 512
            mem[576] = 1
            mem[608] = 0x4800000000000000000000000000000000000000000000000000000000000000
            mem[384] = 576
            mem[640] = 1
            mem[672] = 0x5300000000000000000000000000000000000000000000000000000000000000
            mem[416] = 640
            mem[704] = 96
            mem[736] = 96
            s = 736
            idx = 12
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            mem[1536] = 1
            mem[1568] = 0x4100000000000000000000000000000000000000000000000000000000000000
            mem[1120] = 1536
            mem[1600] = 1
            mem[1632] = 0x3200000000000000000000000000000000000000000000000000000000000000
            mem[1152] = 1600
            mem[1664] = 1
            mem[1696] = 0x3300000000000000000000000000000000000000000000000000000000000000
            mem[1184] = 1664
            mem[1728] = 1
            mem[1760] = 0x3400000000000000000000000000000000000000000000000000000000000000
            mem[1216] = 1728
            mem[1792] = 1
            mem[1824] = 0x3500000000000000000000000000000000000000000000000000000000000000
            mem[1248] = 1792
            mem[1856] = 1
            mem[1888] = 0x3600000000000000000000000000000000000000000000000000000000000000
            mem[1280] = 1856
            mem[1920] = 1
            mem[1952] = 0x3700000000000000000000000000000000000000000000000000000000000000
            mem[1312] = 1920
            mem[1984] = 1
            mem[2016] = 0x3800000000000000000000000000000000000000000000000000000000000000
            mem[1344] = 1984
            mem[2048] = 1
            mem[2080] = 0x3900000000000000000000000000000000000000000000000000000000000000
            mem[1376] = 2048
            mem[2112] = 1
            mem[2144] = 0x5400000000000000000000000000000000000000000000000000000000000000
            mem[1408] = 2112
            mem[2176] = 1
            mem[2208] = 0x4a00000000000000000000000000000000000000000000000000000000000000
            mem[1440] = 2176
            mem[2240] = 1
            mem[2272] = 0x5100000000000000000000000000000000000000000000000000000000000000
            mem[1472] = 2240
            mem[64] = 2368
            mem[2304] = 1
            mem[2336] = 0x4b00000000000000000000000000000000000000000000000000000000000000
            mem[1504] = 2304
            require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13) < 4
            _122 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13)) + 320]
            require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13) < 13
            _125 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13)) + 1120]
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
            if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2:
                mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8)
                stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
                mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8))
                stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
                mem[2368] = Mask(128, 128, arg1)
                mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
                mem[2432] = arg3
                mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
                mem[2496] = 192
                mem[2560] = mem[_122]
                _156 = mem[_122]
                mem[2592 len ceil32(mem[_122])] = mem[_122 + 32 len ceil32(mem[_122])]
                if not _156 % 32:
                    mem[2528] = _156 + 224
                    mem[_156 + 2592] = mem[_125]
                    _794 = mem[_125]
                    mem[_156 + 2624 len ceil32(mem[_125])] = mem[_125 + 32 len ceil32(mem[_125])]
                    if not _794 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _156 + 224, mem[2560 len _794 + _156 + 64]
                    else:
                        mem[floor32(_794) + _156 + 2624] = mem[floor32(_794) + _156 + -(_794 % 32) + 2656 len _794 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _156 + 224, mem[2560 len floor32(_794) + _156 + 96]
                else:
                    mem[floor32(_156) + 2592] = mem[floor32(_156) + -(_156 % 32) + 2624 len _156 % 32]
                    mem[2528] = floor32(_156) + 256
                    mem[floor32(_156) + 2624] = mem[_125]
                    _810 = mem[_125]
                    mem[floor32(_156) + 2656 len ceil32(mem[_125])] = mem[_125 + 32 len ceil32(mem[_125])]
                    if not _810 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_156) + 256, mem[2560 len _810 + floor32(_156) + 96]
                    else:
                        mem[floor32(_810) + floor32(_156) + 2656] = mem[floor32(_810) + floor32(_156) + -(_810 % 32) + 2688 len _810 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_156) + 256, mem[2560 len floor32(_810) + floor32(_156) + 128]
            else:
                mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7)
                stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
                mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7))
                stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
                mem[2368] = Mask(128, 128, arg1)
                mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
                mem[2432] = arg3
                mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
                mem[2496] = 192
                mem[2560] = mem[_122]
                _160 = mem[_122]
                mem[2592 len ceil32(mem[_122])] = mem[_122 + 32 len ceil32(mem[_122])]
                if not _160 % 32:
                    mem[2528] = _160 + 224
                    mem[_160 + 2592] = mem[_125]
                    _797 = mem[_125]
                    mem[_160 + 2624 len ceil32(mem[_125])] = mem[_125 + 32 len ceil32(mem[_125])]
                    if not _797 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _160 + 224, mem[2560 len _797 + _160 + 64]
                    else:
                        mem[floor32(_797) + _160 + 2624] = mem[floor32(_797) + _160 + -(_797 % 32) + 2656 len _797 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _160 + 224, mem[2560 len floor32(_797) + _160 + 96]
                else:
                    mem[floor32(_160) + 2592] = mem[floor32(_160) + -(_160 % 32) + 2624 len _160 % 32]
                    mem[2528] = floor32(_160) + 256
                    mem[floor32(_160) + 2624] = mem[_125]
                    _812 = mem[_125]
                    mem[floor32(_160) + 2656 len ceil32(mem[_125])] = mem[_125 + 32 len ceil32(mem[_125])]
                    if not _812 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_160) + 256, mem[2560 len _812 + floor32(_160) + 96]
                    else:
                        mem[floor32(_812) + floor32(_160) + 2656] = mem[floor32(_812) + floor32(_160) + -(_812 % 32) + 2688 len _812 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_160) + 256, mem[2560 len floor32(_812) + floor32(_160) + 128]
        else:
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
            require sub_25294949[Mask(128, 128, arg1)][arg3].field_0 == arg2
            require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] <= 2
            require sub_776c2b84[address(arg2)][Mask(128, 128, arg1)] == 1
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0x65afb44f with:
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_0
            mem[32] = 3
            mem[128] = arg4
            mem[160] = sub_25294949[Mask(128, 128, arg1)].field_768
            mem[96] = 64
            require sub_25294949[Mask(128, 128, arg1)].field_768
            require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
            require sub_25294949[Mask(128, 128, arg1)].field_768 - 1 < sub_25294949[Mask(128, 128, arg1)].field_768
            require sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 < sub_25294949[Mask(128, 128, arg1)].field_768
            stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0 = stor((0.03125 / Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))]) - 1) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(stor3[Mask(128, 128, arg1)].field_768 - 1)] * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) or !(255 * 256^(sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32)) and stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_0
            require sub_25294949[Mask(128, 128, arg1)].field_768
            mem[0] = sha3(Mask(128, 128, arg1), 3) + 3
            stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0 = !(255 * 256^(sub_25294949[Mask(128, 128, arg1)].field_768 - 1 % 32)) and stor[('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))) + (0.03125 / sub_25294949[Mask(128, 128, arg1)].field_768 - 1)].field_0
            sub_25294949[Mask(128, 128, arg1)].field_768--
            mem[192] = 96
            s = 192
            idx = 4
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            mem[448] = 1
            mem[480] = 0x4300000000000000000000000000000000000000000000000000000000000000
            mem[320] = 448
            mem[512] = 1
            mem[544] = 0x4400000000000000000000000000000000000000000000000000000000000000
            mem[352] = 512
            mem[576] = 1
            mem[608] = 0x4800000000000000000000000000000000000000000000000000000000000000
            mem[384] = 576
            mem[640] = 1
            mem[672] = 0x5300000000000000000000000000000000000000000000000000000000000000
            mem[416] = 640
            mem[704] = 96
            mem[736] = 96
            s = 736
            idx = 12
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            mem[1536] = 1
            mem[1568] = 0x4100000000000000000000000000000000000000000000000000000000000000
            mem[1120] = 1536
            mem[1600] = 1
            mem[1632] = 0x3200000000000000000000000000000000000000000000000000000000000000
            mem[1152] = 1600
            mem[1664] = 1
            mem[1696] = 0x3300000000000000000000000000000000000000000000000000000000000000
            mem[1184] = 1664
            mem[1728] = 1
            mem[1760] = 0x3400000000000000000000000000000000000000000000000000000000000000
            mem[1216] = 1728
            mem[1792] = 1
            mem[1824] = 0x3500000000000000000000000000000000000000000000000000000000000000
            mem[1248] = 1792
            mem[1856] = 1
            mem[1888] = 0x3600000000000000000000000000000000000000000000000000000000000000
            mem[1280] = 1856
            mem[1920] = 1
            mem[1952] = 0x3700000000000000000000000000000000000000000000000000000000000000
            mem[1312] = 1920
            mem[1984] = 1
            mem[2016] = 0x3800000000000000000000000000000000000000000000000000000000000000
            mem[1344] = 1984
            mem[2048] = 1
            mem[2080] = 0x3900000000000000000000000000000000000000000000000000000000000000
            mem[1376] = 2048
            mem[2112] = 1
            mem[2144] = 0x5400000000000000000000000000000000000000000000000000000000000000
            mem[1408] = 2112
            mem[2176] = 1
            mem[2208] = 0x4a00000000000000000000000000000000000000000000000000000000000000
            mem[1440] = 2176
            mem[2240] = 1
            mem[2272] = 0x5100000000000000000000000000000000000000000000000000000000000000
            mem[1472] = 2240
            mem[64] = 2368
            mem[2304] = 1
            mem[2336] = 0x4b00000000000000000000000000000000000000000000000000000000000000
            mem[1504] = 2304
            require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13) < 4
            _123 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] / 13)) + 320]
            require uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13) < 13
            _126 = mem[(32 * uint8(stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] % 13)) + 1120]
            require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
            require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
            if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2:
                mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8)
                stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
                mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 8))
                stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor8[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
                mem[2368] = Mask(128, 128, arg1)
                mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
                mem[2432] = arg3
                mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
                mem[2496] = 192
                mem[2560] = mem[_123]
                _164 = mem[_123]
                mem[2592 len ceil32(mem[_123])] = mem[_123 + 32 len ceil32(mem[_123])]
                if not _164 % 32:
                    mem[2528] = _164 + 224
                    mem[_164 + 2592] = mem[_126]
                    _800 = mem[_126]
                    mem[_164 + 2624 len ceil32(mem[_126])] = mem[_126 + 32 len ceil32(mem[_126])]
                    if not _800 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _164 + 224, mem[2560 len _800 + _164 + 64]
                    else:
                        mem[floor32(_800) + _164 + 2624] = mem[floor32(_800) + _164 + -(_800 % 32) + 2656 len _800 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _164 + 224, mem[2560 len floor32(_800) + _164 + 96]
                else:
                    mem[floor32(_164) + 2592] = mem[floor32(_164) + -(_164 % 32) + 2624 len _164 % 32]
                    mem[2528] = floor32(_164) + 256
                    mem[floor32(_164) + 2624] = mem[_126]
                    _814 = mem[_126]
                    mem[floor32(_164) + 2656 len ceil32(mem[_126])] = mem[_126 + 32 len ceil32(mem[_126])]
                    if not _814 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_164) + 256, mem[2560 len _814 + floor32(_164) + 96]
                    else:
                        mem[floor32(_814) + floor32(_164) + 2656] = mem[floor32(_814) + floor32(_164) + -(_814 % 32) + 2688 len _814 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_164) + 256, mem[2560 len floor32(_814) + floor32(_164) + 128]
            else:
                mem[32] = sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7)
                stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0++
                mem[0] = sha3(Mask(128, 128, arg1), sha3(sub_25294949[Mask(128, 128, arg1)][arg3].field_0, 7))
                stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0 = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)] * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0 or !(255 * 256^stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_0) and stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)][stor7[stor3[Mask(128, 128, arg1)][arg3].field_0][Mask(128, 128, arg1)].field_5].field_0
                mem[2368] = Mask(128, 128, arg1)
                mem[2400] = sub_25294949[Mask(128, 128, arg1)][arg3].field_0
                mem[2432] = arg3
                mem[2464] = stor((0.03125 / ('map', ('param', 'arg4'), ('stor', 256, 768, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3)))) % Mask(256, 768, stor[('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))])) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(sha3(arg4, stor3[Mask(128, 128, arg1)].field_768) % stor3[Mask(128, 128, arg1)].field_768)]
                mem[2496] = 192
                mem[2560] = mem[_123]
                _168 = mem[_123]
                mem[2592 len ceil32(mem[_123])] = mem[_123 + 32 len ceil32(mem[_123])]
                if not _168 % 32:
                    mem[2528] = _168 + 224
                    mem[_168 + 2592] = mem[_126]
                    _803 = mem[_126]
                    mem[_168 + 2624 len ceil32(mem[_126])] = mem[_126 + 32 len ceil32(mem[_126])]
                    if not _803 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _168 + 224, mem[2560 len _803 + _168 + 64]
                    else:
                        mem[floor32(_803) + _168 + 2624] = mem[floor32(_803) + _168 + -(_803 % 32) + 2656 len _803 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, _168 + 224, mem[2560 len floor32(_803) + _168 + 96]
                else:
                    mem[floor32(_168) + 2592] = mem[floor32(_168) + -(_168 % 32) + 2624 len _168 % 32]
                    mem[2528] = floor32(_168) + 256
                    mem[floor32(_168) + 2624] = mem[_126]
                    _816 = mem[_126]
                    mem[floor32(_168) + 2656 len ceil32(mem[_126])] = mem[_126 + 32 len ceil32(mem[_126])]
                    if not _816 % 32:
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_168) + 256, mem[2560 len _816 + floor32(_168) + 96]
                    else:
                        mem[floor32(_816) + floor32(_168) + 2656] = mem[floor32(_816) + floor32(_168) + -(_816 % 32) + 2688 len _816 % 32]
                        emit 0x9ba676ec: Mask(128, 128, arg1), sub_25294949[Mask(128, 128, arg1)][arg3].field_0, arg3 << 248, stor[(0.03125 / ('map', ('param', 'arg4'), ('field', 768, ('stor', ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3))))) % sub_25294949[Mask(128, 128, arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_25294949', 3)))].field_(8 * sha3(arg4, sub_25294949[Mask(128, 128, arg1)].field_768) % sub_25294949[Mask(128, 128, arg1)].field_768 % 32) - 248, 192, floor32(_168) + 256, mem[2560 len floor32(_816) + floor32(_168) + 128]
    require arg3 < sub_25294949[Mask(128, 128, arg1)].field_1280
    require stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] <= 5
    if stor((Mask(3, 5, arg3) >> 5) + ('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'stor3', 3))))[uint8(arg3)] == 2:
        if stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
            mem[2400] = stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = 2400
            s = 0
            while (32 * stor8[address(arg2)][Mask(128, 128, arg1)].field_0) + 2368 > idx:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor8', 8)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        idx = 0
        while uint8(idx) < stor8[address(arg2)][Mask(128, 128, arg1)].field_0:
            require uint8(idx) < stor8[address(arg2)][Mask(128, 128, arg1)].field_0
            require uint8(mem[(32 * uint8(idx)) + 2431 len 1] % 13) < 13
            idx = idx + 1
            continue 
    else:
        if stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            mem[2400] = stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            idx = 2400
            s = 0
            while (32 * stor7[address(arg2)][Mask(128, 128, arg1)].field_0) + 2368 > idx:
                mem[idx + 32] = stor('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        idx = 0
        while uint8(idx) < stor7[address(arg2)][Mask(128, 128, arg1)].field_0:
            require uint8(idx) < stor7[address(arg2)][Mask(128, 128, arg1)].field_0
            require uint8(mem[(32 * uint8(idx)) + 2431 len 1] % 13) < 13
            idx = idx + 1
            continue 
}



}
