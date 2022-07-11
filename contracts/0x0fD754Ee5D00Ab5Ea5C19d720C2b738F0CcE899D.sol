contract main {




// =====================  Runtime code  =====================


#
#  - decreaseAndDestroy(uint256 arg1, uint256 arg2)
#  - increaseStake(uint256 arg1, uint256 arg2)
#
mapping of struct stor0;
mapping of struct stor13;
array of struct stor25;

function _fallback() payable {
    revert
}

function collateralBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[arg1].field_2816:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CollateralFacet: Does not have an escrow'
    require ext_code.size(stor13[arg1].field_2304)
    staticcall stor13[arg1].field_2304.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_2816
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor13[arg1].field_2304, stor13[arg1].field_2816, ext_call.return_data[0]
}

function collaterals() payable {
    mem[64] = (32 * stor25.length) + 128
    mem[96] = stor25.length
    if not stor25.length:
        mem[(32 * stor25.length) + 128] = 32
        mem[(32 * stor25.length) + 160] = stor25.length
        idx = 0
        s = (32 * stor25.length) + 192
        t = 128
        while idx < stor25.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor25.length) + 128
           len (96 * stor25.length) + 64
    mem[128] = address(stor25.field_0)
    idx = 128
    s = 0
    while (32 * stor25.length) + 96 > idx:
        mem[idx + 32] = stor25[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor25.length) + 128] = 32
    mem[(32 * stor25.length) + 160] = stor25.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor25.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor25.length) + -mem[64] + 192
}

function sub_24a6665e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor25.length:
        revert with 0, 50
    mem[928] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('field', 0, ('stor', ('array', ('param', 'arg1'), ('name', 'stor25', 25)))), ('name', 'stor0', 0)))), ('exp', 256, 0))))
    idx = 928
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('field', 0, ('stor', ('array', ('param', 'arg1'), ('name', 'stor25', 25)))), ('name', 'stor0', 0)))), ('exp', 256, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 1))), 32), ('var', 1)))))))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[1120] = stor25[arg1].field_0
    s = 1152
    idx = 0
    t = 928
    while idx < 6:
        mem[s] = ('signextend', 1, ('mem', ('range', ('var', 2), 32)))
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    return stor25[arg1].field_0, 
           mem[1152 len 192],
           Mask(24, 232, stor0[stor25[arg1].field_0].field_256),
           stor0[stor25[arg1].field_0].field_280 << 232,
           stor0[stor25[arg1].field_0].field_304 << 232,
           stor0[stor25[arg1].field_0].field_256,
           stor0[stor25[arg1].field_0].field_256,
           stor0[stor25[arg1].field_0].field_256,
           bool(stor0[stor25[arg1].field_0].field_360)
}

function decreaseStake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor13[arg1].field_2768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibAppStorage: Only callable on unlocked Aavegotchis'
    if this.address == msg.sender:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if mem[calldata.size + 108 len 20] != stor13[arg1].field_2560:
            revert with 0, 'LibAppStorage: Only aavegotchi owner can call this function'
        if not stor13[arg1].field_2816:
            revert with 0, 'CollateralFacet: Does not have an escrow'
        mem[ceil32(calldata.size) + 132] = stor13[arg1].field_2816
        require ext_code.size(stor13[arg1].field_2304)
        staticcall stor13[arg1].field_2304.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor13[arg1].field_2816
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 17
        if ext_call.return_data[0] - arg2 < stor13[arg1].field_1536:
            revert with 0, 'CollateralFacet: Cannot reduce below minimum stake'
        emit DecreaseStake(arg2, arg1);
        if msg.sender != this.address:
            if not ext_code.size(stor13[arg1].field_2304):
                revert with 0, 'LibERC20: ERC20 token address has no code'
            mem[ceil32(calldata.size) + ceil32(return_data.size) + 260 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), stor13[arg1].field_2816, stor13[arg1].field_2816, msg.sender, arg2, mem[ceil32(calldata.size) + ceil32(return_data.size) + 260 len 28]
            call stor13[arg1].field_2304.mem[ceil32(calldata.size) + ceil32(return_data.size) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(calldata.size) + ceil32(return_data.size) + 264 len 96]
            if not return_data.size:
                if not ext_call.success:
                    if not calldata.size:
                        revert with 0, 'LibERC20: transfer or transferFrom reverted'
                    if ceil32(calldata.size) > calldata.size:
                        revert with 0, 
                                    32,
                                    calldata.size,
                                    Mask(8 * calldata.size, -(8 * calldata.size) + 256, call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256) << (8 * calldata.size) - 256,
                                    Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
                    revert with 0, 
                                32,
                                calldata.size,
                                call.data[0 len calldata.size],
                                Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
                if calldata.size:
                    require calldata.size >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'LibERC20: transfer or transferFrom returned false'
            else:
                mem[ceil32(calldata.size) + ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if not return_data.size:
                        revert with 0, 'LibERC20: transfer or transferFrom reverted'
                    revert with 0, 
                                32,
                                return_data.size,
                                ext_call.return_data[0 len return_data.size],
                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(calldata.size) + ceil32(return_data.size) + 292] == bool(mem[ceil32(calldata.size) + ceil32(return_data.size) + 292])
                    if not mem[ceil32(calldata.size) + ceil32(return_data.size) + 292]:
                        revert with 0, 'LibERC20: transfer or transferFrom returned false'
        mem[ceil32(calldata.size) + ceil32(return_data.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + ceil32(return_data.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if not ext_code.size(stor13[arg1].field_2304):
            revert with 0, 'LibERC20: ERC20 token address has no code'
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 196] = stor13[arg1].field_2816
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 228] = mem[calldata.size + ceil32(calldata.size) + ceil32(return_data.size) + 140 len 20]
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), stor13[arg1].field_2816, stor13[arg1].field_2816, mem[calldata.size + ceil32(calldata.size) + ceil32(return_data.size) + 140 len 20], arg2, mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 292 len 28]
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 392] = 0
        call stor13[arg1].field_2304.mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 292 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 296 len 96]
        if return_data.size:
            mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'LibERC20: transfer or transferFrom reverted'
                revert with 0, 
                            32,
                            return_data.size,
                            ext_call.return_data[0 len return_data.size],
                            Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324] == bool(mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324])
                if not mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 324]:
                    revert with 0, 'LibERC20: transfer or transferFrom returned false'
        if ext_call.success:
            if calldata.size:
                require calldata.size >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'LibERC20: transfer or transferFrom returned false'
        if not calldata.size:
            revert with 0, 'LibERC20: transfer or transferFrom reverted'
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 296] = 32
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 328] = calldata.size
        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 360 len ceil32(calldata.size)] = call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        if ceil32(calldata.size) > calldata.size:
            mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + calldata.size + 360] = 0
        revert with memory
          from (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 292
           len (5 * ceil32(calldata.size)) + 68
    if stor13[arg1].field_2560 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibAppStorage: Only aavegotchi owner can call this function'
    if not stor13[arg1].field_2816:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CollateralFacet: Does not have an escrow'
    mem[100] = stor13[arg1].field_2816
    require ext_code.size(stor13[arg1].field_2304)
    staticcall stor13[arg1].field_2304.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor13[arg1].field_2816
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 17
    if ext_call.return_data[0] - arg2 < stor13[arg1].field_1536:
        revert with 0, 'CollateralFacet: Cannot reduce below minimum stake'
    emit DecreaseStake(arg2, arg1);
    if msg.sender != this.address:
        if not ext_code.size(stor13[arg1].field_2304):
            revert with 0, 'LibERC20: ERC20 token address has no code'
        mem[ceil32(return_data.size) + 132] = stor13[arg1].field_2816
        mem[ceil32(return_data.size) + 164] = msg.sender
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = stor13[arg1].field_2816
        mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[ceil32(return_data.size) + 228 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), stor13[arg1].field_2816, stor13[arg1].field_2816, msg.sender, arg2, mem[ceil32(return_data.size) + 228 len 28]
        mem[ceil32(return_data.size) + 328] = 0
        call stor13[arg1].field_2304.mem[ceil32(return_data.size) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 232 len 96]
        if return_data.size:
            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'LibERC20: transfer or transferFrom reverted'
                revert with 0, 
                            32,
                            return_data.size,
                            ext_call.return_data[0 len return_data.size],
                            Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                if not mem[ceil32(return_data.size) + 260]:
                    revert with 0, 'LibERC20: transfer or transferFrom returned false'
        if ext_call.success:
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require stor13[arg1].field_2816, mem[132 len 28] == bool(stor13[arg1].field_2816, mem[132 len 28])
                if not stor13[arg1].field_2816, mem[132 len 28]:
                    revert with 0, 'LibERC20: transfer or transferFrom returned false'
        if not ext_call.return_data[0]:
            revert with 0, 'LibERC20: transfer or transferFrom reverted'
        mem[ceil32(return_data.size) + 228] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 232] = 32
        mem[ceil32(return_data.size) + 264] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 296 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 296] = 0
        revert with 0, 32, ext_call.return_data[0], mem[ceil32(return_data.size) + 296 len ceil32(ext_call.return_data[0])]
    mem[ceil32(return_data.size) + 96] = calldata.size
    mem[ceil32(return_data.size) + 128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(return_data.size) + calldata.size + 128] = 0
    if not ext_code.size(stor13[arg1].field_2304):
        revert with 0, 'LibERC20: ERC20 token address has no code'
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 164] = stor13[arg1].field_2816
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 196] = mem[calldata.size + ceil32(return_data.size) + 108 len 20]
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 228] = arg2
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 128] = 100
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 164 len 28] = stor13[arg1].field_2816
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 160 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 260 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), stor13[arg1].field_2816, stor13[arg1].field_2816, mem[calldata.size + ceil32(return_data.size) + 108 len 20], arg2, mem[ceil32(return_data.size) + ceil32(calldata.size) + 260 len 28]
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 360] = 0
    call stor13[arg1].field_2304.mem[ceil32(return_data.size) + ceil32(calldata.size) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + ceil32(calldata.size) + 264 len 96]
    if return_data.size:
        mem[ceil32(return_data.size) + ceil32(calldata.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'LibERC20: transfer or transferFrom reverted'
            revert with 0, 
                        32,
                        return_data.size,
                        ext_call.return_data[0 len return_data.size],
                        Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + ceil32(calldata.size) + 292] == bool(mem[ceil32(return_data.size) + ceil32(calldata.size) + 292])
            if not mem[ceil32(return_data.size) + ceil32(calldata.size) + 292]:
                revert with 0, 'LibERC20: transfer or transferFrom returned false'
    if ext_call.success:
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require stor13[arg1].field_2816, mem[132 len 28] == bool(stor13[arg1].field_2816, mem[132 len 28])
            if not stor13[arg1].field_2816, mem[132 len 28]:
                revert with 0, 'LibERC20: transfer or transferFrom returned false'
    if not ext_call.return_data[0]:
        revert with 0, 'LibERC20: transfer or transferFrom reverted'
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 264] = 32
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 296] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + ceil32(calldata.size) + 328 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
        mem[ceil32(return_data.size) + ceil32(calldata.size) + ext_call.return_data[0] + 328] = 0
    revert with 0, 
                32,
                ext_call.return_data[0],
                mem[ceil32(return_data.size) + ceil32(calldata.size) + 328 len ceil32(ext_call.return_data[0])]
}

function sub_2e0bcb43(?) payable {
    mem[96] = stor25.length
    if not stor25.length:
        if stor25.length > test266151307():
            revert with 0, 65
        mem[(32 * stor25.length) + 128] = stor25.length
        mem[64] = (64 * stor25.length) + 160
        if not stor25.length:
            idx = 0
            while idx < stor25.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _46 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160]] = mem[(32 * idx) + 140 len 20]
                mem[0] = address(_46)
                mem[32] = 0
                _52 = mem[64]
                mem[64] = mem[64] + 448
                mem[_52 + 256] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_46')), ('name', 'stor0', 0)))), ('exp', 256, 0))))
                s = _52 + 256
                t = 0
                while _52 + 448 > s + 32:
                    mem[s + 32] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_46')), ('name', 'stor0', 0)))), ('exp', 256, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32), ('var', 2)))))))
                    s = s + 32
                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                    continue 
                mem[_52] = _52 + 256
                mem[_52 + 32] = Mask(24, 232, stor0[address(_46)].field_256)
                mem[_52 + 64] = stor0[address(_46)].field_280 << 232
                mem[_52 + 96] = stor0[address(_46)].field_304 << 232
                mem[_52 + 128] = stor0[address(_46)].field_328
                mem[_52 + 160] = stor0[address(_46)].field_336
                mem[_52 + 192] = stor0[address(_46)].field_344
                mem[_52 + 224] = bool(stor0[address(_46)].field_360)
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160] + 32] = _52
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _49 = mem[(32 * stor25.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor25.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor25.length) + 160
            while idx < _49:
                _151 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                _157 = mem[_151 + 32]
                v = s + 32
                u = 0
                w = mem[mem[_151 + 32]]
                while u < 6:
                    mem[v] = ('signextend', 1, ('mem', ('range', ('var', 5), 32)))
                    v = v + 32
                    u = u + 1
                    w = w + 32
                    continue 
                mem[s + 224] = Mask(24, 232, mem[_157 + 32])
                mem[s + 256] = Mask(24, 232, mem[_157 + 64])
                mem[s + 288] = Mask(24, 232, mem[_157 + 96])
                mem[s + 320] = mem[_157 + 159 len 1]
                mem[s + 352] = mem[_157 + 191 len 1]
                mem[s + 384] = mem[_157 + 222 len 2]
                mem[s + 416] = bool(mem[_157 + 224])
                idx = idx + 1
                s = s + 448
                t = t + 32
                continue 
        else:
            mem[(64 * stor25.length) + 160] = 0
            mem[64] = (64 * stor25.length) + 672
            mem[(64 * stor25.length) + 480 len 192] = call.data[calldata.size len 192]
            mem[(64 * stor25.length) + 224] = (64 * stor25.length) + 480
            mem[(64 * stor25.length) + 256] = 0
            mem[(64 * stor25.length) + 288] = 0
            mem[(64 * stor25.length) + 320] = 0
            mem[(64 * stor25.length) + 352] = 0
            mem[(64 * stor25.length) + 384] = 0
            mem[(64 * stor25.length) + 416] = 0
            mem[(64 * stor25.length) + 448] = 0
            mem[var17002] = (64 * stor25.length) + 224
            mem[var17005] = var17003
            s = (64 * stor25.length) + 224
            s = (64 * stor25.length) + 224
            s = var17002
            s = var17003
            s = var17005
            idx = var17006
            while idx - 1:
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 0
                _228 = mem[64]
                mem[64] = mem[64] + 256
                mem[64] = mem[64] + 192
                mem[(64 * stor25.length) + 480 len 192] = call.data[calldata.size len 192]
                mem[_228] = (64 * stor25.length) + 480
                mem[_228 + 32] = 0
                mem[_228 + 64] = 0
                mem[_228 + 96] = 0
                mem[_228 + 128] = 0
                mem[_228 + 160] = 0
                mem[_228 + 192] = 0
                mem[_228 + 224] = 0
                mem[_226 + 32] = _228
                mem[s + 32] = _226
                s = _228
                s = _228
                s = _226 + 32
                s = _226
                s = s + 32
                idx = idx - 1
                continue 
            _272 = mem[96]
            idx = 0
            while idx < _272:
                if idx >= mem[96]:
                    revert with 0, 50
                _278 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160]] = mem[(32 * idx) + 140 len 20]
                mem[0] = address(_278)
                mem[32] = 0
                _287 = mem[64]
                mem[64] = mem[64] + 448
                mem[_287 + 256] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_278')), ('name', 'stor0', 0)))), ('exp', 256, 0))))
                s = _287 + 256
                t = 0
                while _287 + 448 > s + 32:
                    mem[s + 32] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_278')), ('name', 'stor0', 0)))), ('exp', 256, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32), ('var', 2)))))))
                    s = s + 32
                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                    continue 
                mem[_287] = _287 + 256
                mem[_287 + 32] = Mask(24, 232, stor0[address(_278)].field_256)
                mem[_287 + 64] = stor0[address(_278)].field_280 << 232
                mem[_287 + 96] = stor0[address(_278)].field_304 << 232
                mem[_287 + 128] = stor0[address(_278)].field_328
                mem[_287 + 160] = stor0[address(_278)].field_336
                mem[_287 + 192] = stor0[address(_278)].field_344
                mem[_287 + 224] = bool(stor0[address(_278)].field_360)
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160] + 32] = _287
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _284 = mem[(32 * stor25.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor25.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor25.length) + 160
            while idx < _284:
                _355 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                _359 = mem[_355 + 32]
                v = s + 32
                u = 0
                w = mem[mem[_355 + 32]]
                while u < 6:
                    mem[v] = ('signextend', 1, ('mem', ('range', ('var', 5), 32)))
                    v = v + 32
                    u = u + 1
                    w = w + 32
                    continue 
                mem[s + 224] = Mask(24, 232, mem[_359 + 32])
                mem[s + 256] = Mask(24, 232, mem[_359 + 64])
                mem[s + 288] = Mask(24, 232, mem[_359 + 96])
                mem[s + 320] = mem[_359 + 159 len 1]
                mem[s + 352] = mem[_359 + 191 len 1]
                mem[s + 384] = mem[_359 + 222 len 2]
                mem[s + 416] = bool(mem[_359 + 224])
                idx = idx + 1
                s = s + 448
                t = t + 32
                continue 
    else:
        mem[0] = 25
        mem[128] = address(stor25.field_0)
        idx = 128
        s = 0
        while (32 * stor25.length) + 96 > idx:
            mem[idx + 32] = stor25[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor25.length > test266151307():
            revert with 0, 65
        mem[(32 * stor25.length) + 128] = stor25.length
        mem[64] = (64 * stor25.length) + 160
        if not stor25.length:
            idx = 0
            while idx < stor25.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _160 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160]] = mem[(32 * idx) + 140 len 20]
                mem[0] = address(_160)
                mem[32] = 0
                _166 = mem[64]
                mem[64] = mem[64] + 448
                mem[_166 + 256] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_160')), ('name', 'stor0', 0)))), ('exp', 256, 0))))
                s = _166 + 256
                t = 0
                while _166 + 448 > s + 32:
                    mem[s + 32] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_160')), ('name', 'stor0', 0)))), ('exp', 256, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32), ('var', 2)))))))
                    s = s + 32
                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                    continue 
                mem[_166] = _166 + 256
                mem[_166 + 32] = Mask(24, 232, stor0[address(_160)].field_256)
                mem[_166 + 64] = stor0[address(_160)].field_280 << 232
                mem[_166 + 96] = stor0[address(_160)].field_304 << 232
                mem[_166 + 128] = stor0[address(_160)].field_328
                mem[_166 + 160] = stor0[address(_160)].field_336
                mem[_166 + 192] = stor0[address(_160)].field_344
                mem[_166 + 224] = bool(stor0[address(_160)].field_360)
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160] + 32] = _166
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _163 = mem[(32 * stor25.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor25.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor25.length) + 160
            while idx < _163:
                _275 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                _282 = mem[_275 + 32]
                v = s + 32
                u = 0
                w = mem[mem[_275 + 32]]
                while u < 6:
                    mem[v] = ('signextend', 1, ('mem', ('range', ('var', 5), 32)))
                    v = v + 32
                    u = u + 1
                    w = w + 32
                    continue 
                mem[s + 224] = Mask(24, 232, mem[_282 + 32])
                mem[s + 256] = Mask(24, 232, mem[_282 + 64])
                mem[s + 288] = Mask(24, 232, mem[_282 + 96])
                mem[s + 320] = mem[_282 + 159 len 1]
                mem[s + 352] = mem[_282 + 191 len 1]
                mem[s + 384] = mem[_282 + 222 len 2]
                mem[s + 416] = bool(mem[_282 + 224])
                idx = idx + 1
                s = s + 448
                t = t + 32
                continue 
        else:
            mem[(64 * stor25.length) + 160] = 0
            mem[64] = (64 * stor25.length) + 672
            mem[(64 * stor25.length) + 480 len 192] = call.data[calldata.size len 192]
            mem[(64 * stor25.length) + 224] = (64 * stor25.length) + 480
            mem[(64 * stor25.length) + 256] = 0
            mem[(64 * stor25.length) + 288] = 0
            mem[(64 * stor25.length) + 320] = 0
            mem[(64 * stor25.length) + 352] = 0
            mem[(64 * stor25.length) + 384] = 0
            mem[(64 * stor25.length) + 416] = 0
            mem[(64 * stor25.length) + 448] = 0
            mem[var21002] = (64 * stor25.length) + 224
            mem[var21005] = var21003
            s = (64 * stor25.length) + 224
            s = (64 * stor25.length) + 224
            s = var21002
            s = var21003
            s = var21005
            idx = var21006
            while idx - 1:
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 0
                _328 = mem[64]
                mem[64] = mem[64] + 256
                mem[64] = mem[64] + 192
                mem[(64 * stor25.length) + 480 len 192] = call.data[calldata.size len 192]
                mem[_328] = (64 * stor25.length) + 480
                mem[_328 + 32] = 0
                mem[_328 + 64] = 0
                mem[_328 + 96] = 0
                mem[_328 + 128] = 0
                mem[_328 + 160] = 0
                mem[_328 + 192] = 0
                mem[_328 + 224] = 0
                mem[_327 + 32] = _328
                mem[s + 32] = _327
                s = _328
                s = _328
                s = _327 + 32
                s = _327
                s = s + 32
                idx = idx - 1
                continue 
            _354 = mem[96]
            idx = 0
            while idx < _354:
                if idx >= mem[96]:
                    revert with 0, 50
                _362 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160]] = mem[(32 * idx) + 140 len 20]
                mem[0] = address(_362)
                mem[32] = 0
                _367 = mem[64]
                mem[64] = mem[64] + 448
                mem[_367 + 256] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_362')), ('name', 'stor0', 0)))), ('exp', 256, 0))))
                s = _367 + 256
                t = 0
                while _367 + 448 > s + 32:
                    _354 = mem[96]
                    mem[s + 32] = ('signextend', 1, ('signextend', 1, ('div', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_362')), ('name', 'stor0', 0)))), ('exp', 256, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32), ('var', 2)))))))
                    s = s + 32
                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                    continue 
                mem[_367] = _367 + 256
                mem[_367 + 32] = Mask(24, 232, stor0[address(_362)].field_256)
                mem[_367 + 64] = stor0[address(_362)].field_280 << 232
                mem[_367 + 96] = stor0[address(_362)].field_304 << 232
                mem[_367 + 128] = stor0[address(_362)].field_328
                mem[_367 + 160] = stor0[address(_362)].field_336
                mem[_367 + 192] = stor0[address(_362)].field_344
                mem[_367 + 224] = bool(stor0[address(_362)].field_360)
                if idx >= mem[(32 * stor25.length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * stor25.length) + 160] + 32] = _367
                if idx == -1:
                    revert with 0, 17
                _354 = mem[96]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _364 = mem[(32 * stor25.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor25.length) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor25.length) + 160
            while idx < _364:
                _395 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                _398 = mem[_395 + 32]
                v = s + 32
                u = 0
                w = mem[mem[_395 + 32]]
                while u < 6:
                    mem[v] = ('signextend', 1, ('mem', ('range', ('var', 5), 32)))
                    v = v + 32
                    u = u + 1
                    w = w + 32
                    continue 
                mem[s + 224] = Mask(24, 232, mem[_398 + 32])
                mem[s + 256] = Mask(24, 232, mem[_398 + 64])
                mem[s + 288] = Mask(24, 232, mem[_398 + 96])
                mem[s + 320] = mem[_398 + 159 len 1]
                mem[s + 352] = mem[_398 + 191 len 1]
                mem[s + 384] = mem[_398 + 222 len 2]
                mem[s + 416] = bool(mem[_398 + 224])
                idx = idx + 1
                s = s + 448
                t = t + 32
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
