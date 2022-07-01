contract main {




// =====================  Runtime code  =====================


#
#  - play(address[] arg1, uint256 arg2, uint256 arg3, uint8[] arg4, uint8[] arg5, uint128[] arg6, bytes32 arg7, uint8[] arg8, uint8 arg9, uint8[] arg10)
#
address ceoAddress;
uint8 paused; offset 160
address workerAddress;
uint8 checkMaximumBetAmount;
uint128 stor2;
uint128 checkMaxSquareBetDefault; offset 8
address stor2; offset 120
uint256 nextRoundTimestamp;
mapping of uint256 totalBets;
mapping of uint256 totalPayout;
mapping of uint256 maxSquareBets;
mapping of uint256 currentBets;
array of struct bets;
address treasuryAddress;
address pointerContractAddress;

function ceoAddress() payable {
    return ceoAddress
}

function totalBets(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalBets[arg1]
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

function pointerContract() payable {
    return pointerContractAddress
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

function totalPayout(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalPayout[arg1]
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

function changeTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    treasuryAddress = arg1
}

function updatePointer(address arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    pointerContractAddress = arg1
}

function changeMaxSquareBet(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    maxSquareBets[arg1] = arg2
}

function changeMaximumBetAmount(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    nextRoundTimestamp = checkMaximumBetAmount xor nextRoundTimestamp or arg1
}

function getBetsCountAndValue() payable {
    idx = 0
    s = 0
    while idx < bets.length:
        mem[0] = 7
        idx = idx + 1
        s = bets[idx].field_256 + s
        continue 
    return bets.length, stor[(2 * stor7.length) + _6 + 1] * bets.length
}

function changeMaxSquareBetDefault(uint128 arg1) payable {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'sAccessControl: CEO access denie'
    Mask(120, 0, stor2.field_0) = Mask(120, 0, arg1)
    Mask(136, 0, stor2.field_120) = 0
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
                    0x6d416363657373436f6e74726f6c3a2063757272656e6c7479206e6f74207061757365,
                    mem[199 len 29]
    paused = 0
    emit Unpaused()
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
        mem[0] = 7
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
                mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 6))
                if not currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]:
                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                    if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                else:
                    if 36 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] / currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] != 36:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                    if 36 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 36 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]
            else:
                if uint8(bets[2 * uint8(idx)].field_160) == 1:
                    if uint8(bets[2 * uint8(idx)].field_168) > 1:
                        revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                    mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                    mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 6))
                    if not currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]:
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                    else:
                        if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] / currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] != 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require uint8(bets[2 * uint8(idx)].field_160) < 6
                        if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]
                else:
                    if uint8(bets[2 * uint8(idx)].field_160) == 2:
                        if uint8(bets[2 * uint8(idx)].field_168) > 1:
                            revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                        mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                        mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 6))
                        if not currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]:
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                        else:
                            if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] / currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] != 2:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(bets[2 * uint8(idx)].field_160) < 6
                            if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]
                    else:
                        if uint8(bets[2 * uint8(idx)].field_160) == 3:
                            if uint8(bets[2 * uint8(idx)].field_168) > 1:
                                revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                            mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 6))
                            if not currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                            else:
                                if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] / currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] != 2:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 2 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]
                        else:
                            if uint8(bets[2 * uint8(idx)].field_160) != 4:
                                if uint8(bets[2 * uint8(idx)].field_160) != 5:
                                    revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            if uint8(bets[2 * uint8(idx)].field_168) > 2:
                                revert with 0, 32, 34, 0x74526f756c657474653a20696e636f72726563742062657420747970652f76616c75, mem[mem[64] + 102 len 30]
                            mem[0] = uint8(bets[2 * uint8(idx)].field_168)
                            mem[32] = sha3(uint8(bets[2 * uint8(idx)].field_0), sha3(uint8(bets[2 * uint8(idx)].field_0), 6))
                            if not currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]:
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 0 > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 0
                            else:
                                if 3 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] / currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] != 3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(bets[2 * uint8(idx)].field_160) < 6
                                if 3 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)] > mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96]:
                                    require uint8(bets[2 * uint8(idx)].field_160) < 6
                                    mem[(32 * uint8(uint8(bets[2 * uint8(idx)].field_160))) + 96] = 3 * currentBets[uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)][uint8(stor7[2 * uint8(idx)].field_0)]
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
