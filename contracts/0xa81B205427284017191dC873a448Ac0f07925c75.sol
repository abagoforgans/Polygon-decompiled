contract main {




// =====================  Runtime code  =====================


#
#  - sub_c433ec6f(?)
#  - sub_f0436580(?)
#
const sub_473310ac(?) = uint64(block.timestamp)


address ceoAddress;
uint8 paused; offset 160
address workerAddress;
uint8 checkMaximumBetAmount;
uint128 stor2;
uint128 checkMaxSquareBetDefault; offset 8
address stor2; offset 120
uint256 nextRoundTimestamp;
mapping of uint256 maxSquareBets;
mapping of uint256 currentBets;
array of struct bets;
address treasuryAddress;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint128 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;

function ceoAddress() payable {
    return ceoAddress
}

function bets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    return address(bets[arg1].field_0), 
           uint8(bets[arg1].field_0),
           uint8(bets[arg1].field_0),
           uint8(bets[arg1].field_0),
           bets[arg1].field_256
}

function checkMaxSquareBetDefault() payable {
    return checkMaxSquareBetDefault
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function getBetsCount() payable {
    return bets.length
}

function getNextRoundTimestamp() payable {
    return (Mask(120, 0, nextRoundTimestamp) >> 136)
}

function currentBets(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return currentBets[arg1][arg2][arg3]
}

function workerAddress() payable {
    return workerAddress
}

function maxSquareBets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxSquareBets[arg1]
}

function checkMaximumBetAmount() payable {
    return checkMaximumBetAmount
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

function changeTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    treasuryAddress = arg1
}

function changeMaxSquareBet(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == ceoAddress
    maxSquareBets[arg1] = arg2
}

function setCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
    emit CEOSet(arg1);
}

function changeMaximumBetAmount(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    nextRoundTimestamp = checkMaximumBetAmount xor nextRoundTimestamp or arg1
}

function changeMaxSquareBetDefault(uint128 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    Mask(120, 0, stor2.field_0) = Mask(120, 0, arg1)
    Mask(136, 0, stor2.field_120) = 0
}

function setWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    if ceoAddress != msg.sender:
        require msg.sender == workerAddress
    workerAddress = arg1
    emit 0x54841e99: arg1
}

function getBetsCountAndValue() payable {
    idx = 0
    s = 0
    while idx < bets.length:
        mem[0] = 5
        idx = idx + 1
        s = bets[idx].field_256 + s
        continue 
    return bets.length, stor[(2 * stor5.length) + _6 + 1] * bets.length
}

function getPayoutForType(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if arg2 > 36:
            return 0
        return 36
    if arg1 == 1:
        if arg2 > 1:
            return 0
        return 2
    if arg1 == 2:
        if arg2 > 1:
            return 0
        return 2
    if arg1 == 3:
        if arg2 > 1:
            return 0
        return 2
    if arg1 != 4:
        if arg1 != 5:
            return 0
    if arg2 > 2:
        return 0
    return 3
}

function sub_963e02b9(?) payable {
    require calldata.size - 4 >= 160
    require not paused
    require msg.sender == ceoAddress
    currentBets[arg4 << 248][arg2 << 248][arg3 << 248] += arg5
    if not maxSquareBets[arg4 << 248]:
        if checkMaxSquareBetDefault < currentBets[arg4 << 248][arg2 << 248][arg3 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6d526f756c657474653a20657863656564696e67206d6178696d756d20626574206c696d69,
                        mem[201 len 27]
    else:
        if maxSquareBets[arg4 << 248] < currentBets[arg4 << 248][arg2 << 248][arg3 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6d526f756c657474653a20657863656564696e67206d6178696d756d20626574206c696d69,
                        mem[201 len 27]
    bets.length++
    address(stor36B6[stor5.length].field_0) = arg1
    uint8(stor36B6[stor5.length].field_160) = arg2
    uint8(stor36B6[stor5.length].field_168) = arg3
    uint8(stor36B6[stor5.length].field_176) = arg4
    stor36B6[stor5.length] = arg5
}

function getNecessaryBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = 288
    mem[96 len 192] = call.data[calldata.size len 192]
    idx = 0
    while uint8(idx) < bets.length:
        _150 = mem[64]
        mem[64] = mem[64] + 160
        mem[_150] = 0
        mem[_150 + 32] = 0
        mem[_150 + 64] = 0
        mem[_150 + 96] = 0
        mem[_150 + 128] = 0
        mem[0] = 5
        _153 = mem[64]
        mem[64] = mem[64] + 160
        mem[_153] = address(bets[2 * uint8(idx)].field_0)
        mem[_153 + 32] = uint8(bets[2 * uint8(idx)].field_160)
        mem[_153 + 64] = uint8(bets[2 * uint8(idx)].field_168)
        mem[_153 + 96] = uint8(bets[2 * uint8(idx)].field_176)
        mem[_153 + 128] = bets[2 * uint8(idx)].field_256
        if arg1 == uint8(bets[2 * uint8(idx)].field_176):
            if not uint8(bets[2 * uint8(idx)].field_160):
                if uint8(bets[2 * uint8(idx)].field_168) > 36:
                    revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 4))
                if not currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]:
                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                    if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                else:
                    if 36 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] / currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] != 36:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                    if 36 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 36 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]
            else:
                if uint8(bets[2 * uint8(idx)].field_160) == 1:
                    if uint8(bets[2 * uint8(idx)].field_168) > 1:
                        revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                    mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                    mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 4))
                    if not currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                    else:
                        if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] / currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] != 2:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]
                else:
                    if uint8(bets[2 * uint8(idx)].field_160) == 2:
                        if uint8(bets[2 * uint8(idx)].field_168) > 1:
                            revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                        mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                        mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 4))
                        if not currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                        else:
                            if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] / currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] != 2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]
                    else:
                        if uint8(bets[2 * uint8(idx)].field_160) == 3:
                            if uint8(bets[2 * uint8(idx)].field_168) > 1:
                                revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                            mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 4))
                            if not currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                            else:
                                if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] / currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] != 2:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]
                        else:
                            if uint8(bets[2 * uint8(idx)].field_160) != 4:
                                if uint8(bets[2 * uint8(idx)].field_160) != 5:
                                    revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            if uint8(bets[2 * uint8(idx)].field_168) > 2:
                                revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                            mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 4))
                            if not currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                            else:
                                if 3 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] / currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] != 3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 3 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 3 * currentBets[uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)][uint8(stor5[2 * uint8(idx)].field_0)]
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < 6:
        if mem[(32 * uint8(idx)) + 96] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + 96] + s
        continue 
    return (_300 * None)
}



}
