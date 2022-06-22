contract main {




// =====================  Runtime code  =====================


address ceoAddress;
uint8 paused; offset 160
uint8 sub_bd891828; offset 168
uint8 sub_86608326; offset 176
uint128 stor1; offset 176
uint128 stor1; offset 168
address workerAddress;
address distributionTokenAddress;
mapping of uint8 stor3;
mapping of uint256 sub_39c2a538;
mapping of uint256 sub_5870cc70;
mapping of address sub_d2c60a0d;

function ceoAddress() payable {
    return ceoAddress
}

function sub_39c2a538(?) payable {
    require calldata.size - 4 >= 32
    return sub_39c2a538[arg1]
}

function sub_5870cc70(?) payable {
    require calldata.size - 4 >= 32
    return sub_5870cc70[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_86608326(?) payable {
    return bool(sub_86608326)
}

function sub_8ceb38de(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function distributionToken() payable {
    return distributionTokenAddress
}

function sub_bd891828(?) payable {
    return bool(sub_bd891828)
}

function workerAddress() payable {
    return workerAddress
}

function sub_d2c60a0d(?) payable {
    require calldata.size - 4 >= 32
    return sub_d2c60a0d[arg1]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == ceoAddress
    require paused
    paused = 0
    emit Unpaused()
}

function pause() payable {
    require msg.sender == workerAddress
    require not paused
    paused = 1
    emit Paused()
}

function sub_6ad9f718(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == ceoAddress
    sub_5870cc70[address(arg1)] = arg2
}

function sub_9ab24e42(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    stor3[address(arg1)] = 0
    return 0
}

function sub_b4bdeec8(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    stor3[address(arg1)] = 1
    return 0
}

function sub_50216272(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function sub_c568e188(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    Mask(80, 0, stor1.field_176) = Mask(80, 0, arg1)
}

function changeDistributionToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    distributionTokenAddress = arg1
}

function setCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
    emit CEOSet(arg1);
}

function setWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    if ceoAddress != msg.sender:
        require msg.sender == workerAddress
    workerAddress = arg1
    emit 0x54841e99: arg1
}

function sub_324a6d5b(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == workerAddress
    if sub_d2c60a0d[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77506f696e7465723a20706c6179657220616c726561647920616666696c69617465,
                    mem[198 len 30]
    sub_d2c60a0d[address(arg2)] = arg1
    return 0
}

function getMyTokens() payable {
    if bool(sub_86608326) != 1:
        revert with 0, 'Pointer: distribution paused'
    sub_39c2a538[address(msg.sender)] = 0
    require ext_code.size(distributionTokenAddress)
    call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_39c2a538[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_39c2a538[address(msg.sender)]
}

function distributeTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(sub_86608326) != 1:
        revert with 0, 'Pointer: distribution paused'
    sub_39c2a538[address(arg1)] = 0
    require ext_code.size(distributionTokenAddress)
    call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), sub_39c2a538[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_39c2a538[address(arg1)]
}

function sub_c0ff11c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if bool(sub_86608326) != 1:
            revert with 0, 'Pointer: distribution paused'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        sub_39c2a538[mem[(32 * idx) + 140 len 20]] = 0
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = sub_39c2a538[mem[0]]
        require ext_code.size(distributionTokenAddress)
        call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], sub_39c2a538[mem[0]]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_3be254ad(?) payable {
    require calldata.size - 4 >= 96
    if not stor3[address(msg.sender)]:
        return 0
    if not sub_bd891828:
        return 0
    if sub_5870cc70[address(arg3)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5870cc70[address(arg3)]
    if not arg2 / sub_5870cc70[address(arg3)]:
        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d2c60a0d[address(arg1)]:
            sub_39c2a538[stor6[address(arg1)]] = 0
        return 0, 100
    if 100 * arg2 / sub_5870cc70[address(arg3)] / arg2 / sub_5870cc70[address(arg3)] != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (100 * arg2 / sub_5870cc70[address(arg3)] / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_39c2a538[address(arg1)] += 100 * arg2 / sub_5870cc70[address(arg3)] / 100
    if sub_d2c60a0d[address(arg1)]:
        if not 100 * arg2 / sub_5870cc70[address(arg3)] / 100:
            sub_39c2a538[stor6[address(arg1)]] = 0
        else:
            if 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100 * arg2 / sub_5870cc70[address(arg3)] / 100 != 20:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_39c2a538[stor6[address(arg1)]] = 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100
    return 100 * arg2 / sub_5870cc70[address(arg3)] / 100, 100
}

function sub_7d233970(?) payable {
    require calldata.size - 4 >= 128
    if not stor3[address(msg.sender)]:
        return 0
    if not sub_bd891828:
        return 0
    if 1 == arg4:
        if sub_5870cc70[address(arg3)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5870cc70[address(arg3)]
        if not arg2 / sub_5870cc70[address(arg3)]:
            if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d2c60a0d[address(arg1)]:
                sub_39c2a538[stor6[address(arg1)]] = 0
            return 0, 100
        if 100 * arg2 / sub_5870cc70[address(arg3)] / arg2 / sub_5870cc70[address(arg3)] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (100 * arg2 / sub_5870cc70[address(arg3)] / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_39c2a538[address(arg1)] += 100 * arg2 / sub_5870cc70[address(arg3)] / 100
        if sub_d2c60a0d[address(arg1)]:
            if not 100 * arg2 / sub_5870cc70[address(arg3)] / 100:
                sub_39c2a538[stor6[address(arg1)]] = 0
            else:
                if 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100 * arg2 / sub_5870cc70[address(arg3)] / 100 != 20:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_39c2a538[stor6[address(arg1)]] = 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100
        return 100 * arg2 / sub_5870cc70[address(arg3)] / 100, 100
    if arg4 > 4:
        if sub_5870cc70[address(arg3)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5870cc70[address(arg3)]
        if not arg2 / sub_5870cc70[address(arg3)]:
            if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d2c60a0d[address(arg1)]:
                sub_39c2a538[stor6[address(arg1)]] = 0
            return 0, 140
        if 140 * arg2 / sub_5870cc70[address(arg3)] / arg2 / sub_5870cc70[address(arg3)] != 140:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (140 * arg2 / sub_5870cc70[address(arg3)] / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_39c2a538[address(arg1)] += 140 * arg2 / sub_5870cc70[address(arg3)] / 100
        if sub_d2c60a0d[address(arg1)]:
            if not 140 * arg2 / sub_5870cc70[address(arg3)] / 100:
                sub_39c2a538[stor6[address(arg1)]] = 0
            else:
                if 20 * 140 * arg2 / sub_5870cc70[address(arg3)] / 100 / 140 * arg2 / sub_5870cc70[address(arg3)] / 100 != 20:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_39c2a538[stor6[address(arg1)]] = 20 * 140 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100
        return 140 * arg2 / sub_5870cc70[address(arg3)] / 100, 140
    if not arg4:
        if sub_5870cc70[address(arg3)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5870cc70[address(arg3)]
        if not arg2 / sub_5870cc70[address(arg3)]:
            if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d2c60a0d[address(arg1)]:
                sub_39c2a538[stor6[address(arg1)]] = 0
            return 0, 100
        if 100 * arg2 / sub_5870cc70[address(arg3)] / arg2 / sub_5870cc70[address(arg3)] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (100 * arg2 / sub_5870cc70[address(arg3)] / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_39c2a538[address(arg1)] += 100 * arg2 / sub_5870cc70[address(arg3)] / 100
        if sub_d2c60a0d[address(arg1)]:
            if not 100 * arg2 / sub_5870cc70[address(arg3)] / 100:
                sub_39c2a538[stor6[address(arg1)]] = 0
            else:
                if 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100 * arg2 / sub_5870cc70[address(arg3)] / 100 != 20:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_39c2a538[stor6[address(arg1)]] = 20 * 100 * arg2 / sub_5870cc70[address(arg3)] / 100 / 100
        return 100 * arg2 / sub_5870cc70[address(arg3)] / 100, 100
    if 10 * arg4 / arg4 != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * arg4) + 100 < 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_5870cc70[address(arg3)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5870cc70[address(arg3)]
    if not arg2 / sub_5870cc70[address(arg3)]:
        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d2c60a0d[address(arg1)]:
            sub_39c2a538[stor6[address(arg1)]] = 0
        return 0, (10 * arg4) + 100
    if (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / arg2 / sub_5870cc70[address(arg3)] != (10 * arg4) + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_39c2a538[address(arg1)] += (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100
    if sub_d2c60a0d[address(arg1)]:
        if not (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100:
            sub_39c2a538[stor6[address(arg1)]] = 0
        else:
            if 20 * (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100 / (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100 != 20:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_39c2a538[stor6[address(arg1)]] = 20 * (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100 / 100
    return (100 * arg2 / sub_5870cc70[address(arg3)]) + (10 * arg4 * arg2 / sub_5870cc70[address(arg3)]) / 100, (10 * arg4) + 100
}



}
