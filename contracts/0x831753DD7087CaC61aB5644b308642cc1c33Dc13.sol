contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0

const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801)

const PERMIT_TYPEHASH = sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', Mask(144, 112, ',uint256 deadline)') >> 112)

const DELEGATION_TYPEHASH = sha3('Delegation(address delegatee,uin', Mask(208, 48, 't256 nonce,uint256 expiry)') >> 48)


uint128 stor0;
address stor0; offset 96
uint256 totalSupply;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
address gatewayAddress;

function gateway() payable {
    return gatewayAddress
}

function totalSupply() payable {
    return totalSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 38, 0x73517569636b3a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 0x1000000000000000000000000:
        revert with 0, 32, 39, 0x73517569636b3a3a77697468647261773a20616d6f756e74206578636565647320393620626974, mem[167 len 25] >> 56, 0
    if not msg.sender:
        revert with 0, 'Quick:: burn from the zero address'
    if Mask(96, 0, arg1) > balanceOf[address(msg.sender)]:
        revert with 0, 32, 35, 0x73517569636b3a3a206275726e20616d6f756e7420657863656564732062616c616e63, mem[259 len 29] >> 24, 0
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg1)
    if totalSupply >= 0x1000000000000000000000000:
        revert with 0, 32, 35, 0x73517569636b3a3a20746f74616c537570706c79206578636565647320393620626974, mem[355 len 29] >> 24, 0
    if Mask(96, 0, arg1) > Mask(96, 0, stor0.field_0):
        revert with 0, 32, 40, 0x73517569636b3a3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[456 len 24] >> 64, 0
    Mask(96, 0, stor0.field_0) = Mask(96, 0, totalSupply - arg1)
    address(stor0.field_96) = 0
    emit Transfer(Mask(96, 0, arg1), msg.sender, 0);
}

function deposit(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if gatewayAddress != msg.sender:
        revert with 0, 'Invalid access'
    require arg2.length >= 32
    require cd[(arg2 + 36)] == cd[(arg2 + 36)]
    if cd[(arg2 + 36)] >= 0x1000000000000000000000000:
        revert with 0, 32, 38, 0x65517569636b3a3a6465706f7369743a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
    if not arg1:
        revert with 0, 'Quick::mint: cannot transfer to the zero address'
    if Mask(96, 0, cd[(arg2 + 36)]) >= 0x1000000000000000000000000:
        revert with 0, 32, 35, 0x73517569636b3a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[259 len 29] >> 24, 0
    if Mask(96, 0, cd[(arg2 + 36)]) + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if Mask(96, 0, cd[(arg2 + 36)]) + totalSupply >= 0x1000000000000000000000000:
        revert with 0, 32, 40, 0x79517569636b3a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974, mem[360 len 24] >> 64, 0
    Mask(96, 0, stor0.field_0) = Mask(96, 0, Mask(96, 0, cd[(arg2 + 36)]) + totalSupply)
    address(stor0.field_96) = 0
    if Mask(96, 0, Mask(96, 0, cd[(arg2 + 36)]) + balanceOf[address(arg1)]) < balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x73517569636b3a3a6d696e743a207472616e7366657220616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
    balanceOf[address(arg1)] = Mask(96, 0, Mask(96, 0, cd[(arg2 + 36)]) + balanceOf[address(arg1)])
    emit Transfer(Mask(96, 0, cd[(arg2 + 36)]), 0, arg1);
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quick::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 == checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 <= checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if arg3 == -1:
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0x84356cec62b4776fab815ae779598e1a4af2765a01721362a1125b8fe66ddb3c, chainid, this.address), sha3(sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', ',uint256 deadline)'), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Quick::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'Quick::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'Quick::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = test266151307()
        emit Approval(test266151307(), arg1, arg2);
    else:
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 32, 37, 0x65517569636b3a3a7065726d69743a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0x84356cec62b4776fab815ae779598e1a4af2765a01721362a1125b8fe66ddb3c, chainid, this.address), sha3(sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', ',uint256 deadline)'), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Quick::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'Quick::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'Quick::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = Mask(96, 0, arg3)
        emit Approval(Mask(96, 0, arg3), arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 39, 0x73517569636b3a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[167 len 25] >> 56, 0
    if not msg.sender:
        revert with 0, 'Quick::_transferTokens: cannot transfer from the zero address'
    if not arg1:
        revert with 0, 'Quick::_transferTokens: cannot transfer to the zero address'
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    55,
                    0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                    0
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, arg2 + balanceOf[arg1]) < balanceOf[arg1]:
        revert with 0, 
                    32,
                    49,
                    0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[369 len 15] >> 136,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[arg1])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[arg1]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[arg1]:
                    if numCheckpoints[stor3[arg1]]:
                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                        0
                        if numCheckpoints[stor3[arg1]] <= 0:
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        else:
                            if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                            else:
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                        0
                        if numCheckpoints[stor3[arg1]] <= 0:
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        else:
                            if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
            else:
                if numCheckpoints[stor3[address(msg.sender)]]:
                    if Mask(96, 0, arg2) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor3[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor3[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[168 len 24] >> 64, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[277 len 11] >> 168,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[168 len 24] >> 64, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[277 len 11] >> 168,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor3[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[169 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[277 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[360 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[469 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[360 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[469 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[169 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[277 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[360 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[469 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[360 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[469 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[424 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[533 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0x84356cec62b4776fab815ae779598e1a4af2765a01721362a1125b8fe66ddb3c, chainid, this.address), sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Quick::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'Quick::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'Quick::delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(192, 0, arg5) >> 64,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[791 len 11] >> 168,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(192, 0, arg5) >> 64,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[791 len 11] >> 168,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor3[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(184, 0, arg5) >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[791 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[874 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[983 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[874 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[983 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(184, 0, arg5) >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[791 len 11] >> 168,
                                    0
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[874 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[983 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[874 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[983 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[938 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1047 len 11] >> 168,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 38, 0x73517569636b3a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'Quick::_transferTokens: cannot transfer from the zero address'
        if not arg2:
            revert with 0, 'Quick::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        55,
                        0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
            revert with 0, 
                        32,
                        49,
                        0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[369 len 15] >> 136,
                        0
        balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[arg2]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if numCheckpoints[stor3[arg2]]:
                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[arg2]] <= 0:
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            else:
                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                else:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[arg2]] <= 0:
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            else:
                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                else:
                    if numCheckpoints[stor3[address(arg1)]]:
                        if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        41,
                                        0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                    0
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    else:
        if allowance[address(arg1)][msg.sender] == test266151307():
            if not arg1:
                revert with 0, 'Quick::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Quick::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            49,
                            0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[369 len 15] >> 136,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[456 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            41,
                                            0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            41,
                                            0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[457 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[565 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[648 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[757 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[712 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[821 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            62,
                            0x73517569636b3a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[286 len 2] >> 240,
                            0
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 'Quick::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Quick::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[375 len 9] >> 184,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            49,
                            0x73517569636b3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[465 len 15] >> 136,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[552 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[661 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[552 len 24] >> 64, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[661 len 11] >> 168,
                                                0
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            41,
                                            0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[553 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[661 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[744 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[853 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[744 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[853 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            41,
                                            0x65517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[553 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[661 len 11] >> 168,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                        0
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[744 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[853 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[744 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[853 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0xfe517569636b3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[808 len 24] >> 64, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x73517569636b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[917 len 11] >> 168,
                                                            0
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    return 1
}



}
