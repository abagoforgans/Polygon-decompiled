contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint128 stor54;
uint256 totalSupply;
uint128 stor55;
uint256 bridgeSupply;
address dropBridgeAddress;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of uint128 delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
uint256 DOMAIN_TYPEHASH;
uint256 DELEGATION_TYPEHASH;
uint256 UNDELEGATION_TYPEHASH;
mapping of uint256 nonces;
address adminAddress;
uint256 stor66;
mapping of uint8 stor67;
uint8 enableAllTranfers;

function name() payable {
    return name[0 len name.length].field_0
}

function UNDELEGATION_TYPEHASH() payable {
    return UNDELEGATION_TYPEHASH
}

function totalSupply() payable {
    return uint256(totalSupply)
}

function DOMAIN_TYPEHASH() payable {
    return DOMAIN_TYPEHASH
}

function decimals() payable {
    return decimals
}

function isWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor67[arg1])
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

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function bridgeSupply() payable {
    return uint256(bridgeSupply)
}

function enableAllTranfers() payable {
    return bool(enableAllTranfers)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function delegates(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return delegates[arg1][arg2]
}

function DELEGATION_TYPEHASH() payable {
    return DELEGATION_TYPEHASH
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function admin() payable {
    return address(adminAddress)
}

function dropBridge() payable {
    return dropBridgeAddress
}

function _fallback() payable {
    revert
}

function addWhiteListAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0, 'Only admin can whitelist', 0
    stor67[address(arg1)] = 1
    return 1
}

function enableAllTransfers() payable {
    if address(adminAddress) != msg.sender:
        revert with 0, 32, 36, 0x654f6e6c7920656e61626c652063616e20656e61626c6520616c6c207472616e73666572, mem[164 len 28] >> 32, 0
    enableAllTranfers = 1
    return 1
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function changeDropBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0, 32, 33, 0x734f6e6c792061646d696e2063616e206368616e67652064726f70206272696467, mem[161 len 31] / 0.00390625, 0
    dropBridgeAddress = arg1
}

function isWhiteListedTransfer(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if dropBridgeAddress == arg1:
        return 1
    if stor67[address(arg1)]:
        return bool(stor67[address(arg1)])
    if dropBridgeAddress == arg2:
    else:
        if stor67[address(arg2)]:
            return bool(stor67[address(arg2)])
    return bool(enableAllTranfers)
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
            revert with 0, 32, 38, 0x736d506f6e643a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == -1:
        if Mask(96, 0, allowance[msg.sender][address(arg1)] - 1) < allowance[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        50,
                        0x656d506f6e643a20696e637265617365416c6c6f77616e636520616c6c6f77616e63652076616c7565206f766572666c6f77, mem[178 len 14] >> 144,
                        0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, allowance[msg.sender][address(arg1)] - 1)
        emit Approval(Mask(96, 0, allowance[msg.sender][address(arg1)] - 1), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        43,
                        0x736d506f6e643a3a617070726f76653a206164646564416d6f756e74206578636565647320393620626974, mem[171 len 21] >> 88,
                        0
        if Mask(96, 0, arg2 + allowance[msg.sender][address(arg1)]) < allowance[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        50,
                        0x656d506f6e643a20696e637265617365416c6c6f77616e636520616c6c6f77616e63652076616c7565206f766572666c6f77, mem[274 len 14] >> 144,
                        0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2 + allowance[msg.sender][address(arg1)])
        emit Approval(Mask(96, 0, arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == -1:
        if test266151307() > allowance[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        51,
                        0x656d506f6e643a206465637265617365416c6c6f77616e636520616c6c6f77616e63652076616c756520756e646572666c6f77, mem[179 len 13] >> 152,
                        0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, allowance[msg.sender][address(arg1)] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        emit Approval(Mask(96, 0, allowance[msg.sender][address(arg1)] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        45,
                        0x736d506f6e643a3a617070726f76653a2072656d6f766564416d6f756e74206578636565647320393620626974, mem[173 len 19] >> 104,
                        0
        if Mask(96, 0, arg2) > allowance[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        51,
                        0x656d506f6e643a206465637265617365416c6c6f77616e636520616c6c6f77616e63652076616c756520756e646572666c6f77, mem[275 len 13] >> 152,
                        0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, allowance[msg.sender][address(arg1)] - arg2)
        emit Approval(Mask(96, 0, allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'mPond::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 60)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor61[address(arg1)] + -(uint32(stor61[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor61[address(arg1)] + -(uint32(stor61[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 == checkpoints[address(arg1)][stor61[address(arg1)] + -(uint32(stor61[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor61[address(arg1)] + -(uint32(stor61[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 <= checkpoints[address(arg1)][stor61[address(arg1)] + -(uint32(stor61[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    uint8(name.length) = 12
    name.length.field_8 = 'Marlin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 10
    symbol.length.field_8 = 'MPOND' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    uint256(totalSupply) = 10000 * 10^18
    uint256(bridgeSupply) = 7000 * 10^18
    DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)')
    DELEGATION_TYPEHASH = sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry,uint96', ' amount)')
    UNDELEGATION_TYPEHASH = sha3('Unelegation(address delegatee,ui', 'nt256 nonce,uint256 expiry,uint9', '6 amount)')
    uint256(stor66) = msg.sender or Mask(96, 160, uint256(stor66))
    if arg1 == arg2:
        revert with 0, 'Bridge and account should not be the same address'
    balanceOf[address(arg2)] = Mask(96, 0, stor55)
    delegates[address(arg2)][0] = Mask(96, 0, stor55)
    stor67[address(arg2)] = 1
    emit Transfer(uint256(bridgeSupply), 0, arg2);
    if Mask(96, 0, stor55) > Mask(96, 0, stor54):
        revert with 0, 
                    32,
                    46,
                    0x726d506f6e643a205375627472616374696f6e206f766572666c6f7720696e2074686520636f6e7374727563746f, Mask(144, 0, '6 amount)') >> 112,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, uint256(totalSupply) - uint256(bridgeSupply))
    delegates[address(arg1)][0] = Mask(96, 0, uint256(totalSupply) - uint256(bridgeSupply))
    stor67[address(arg1)] = 1
    dropBridgeAddress = arg3
    emit Transfer(Mask(96, 0, uint256(totalSupply) - uint256(bridgeSupply)), 0, arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if dropBridgeAddress != msg.sender:
        if dropBridgeAddress == arg1:
            if not stor67[address(msg.sender)]:
                if not enableAllTranfers:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Atleast one of the address (src or dst) should be whitelisted or all transfers must be enabled via enableAllTransfers()'
        else:
            if not stor67[address(msg.sender)]:
                if not stor67[address(arg1)]:
                    if not enableAllTranfers:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Atleast one of the address (src or dst) should be whitelisted or all transfers must be enabled via enableAllTransfers()'
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 39, 0x736d506f6e643a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[167 len 25] >> 56, 0
    if not msg.sender:
        revert with 0, 'mPond::_transferTokens: cannot transfer from the zero address'
    if delegates[address(msg.sender)][0] < Mask(96, 0, arg2):
        revert with 0, 'mPond: _transferTokens: undelegated amount should be greater than transfer amount'
    if not arg1:
        revert with 0, 'mPond::_transferTokens: cannot transfer to the zero address'
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    55,
                    0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                    0
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, arg2) > delegates[address(msg.sender)][0]:
        revert with 0, 
                    32,
                    51,
                    0xfe6d506f6e643a205f7472616e666572546f6b656e733a20756e64656c6567617465207375627472616374696f6e206572726f, mem[371 len 13] >> 152,
                    0
    delegates[address(msg.sender)][0] = Mask(96, 0, delegates[address(msg.sender)][0] - arg2)
    if Mask(96, 0, arg2 + balanceOf[address(arg1)]) < balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    49,
                    0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[465 len 15] >> 136,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[address(arg1)])
    if Mask(96, 0, arg2 + delegates[address(arg1)][0]) < delegates[address(arg1)][0]:
        revert with 0, 
                    32,
                    49,
                    0x736d506f6e643a205f7472616e73666572546f6b656e733a20756e64656c6567617465206164646974696f6e206572726f, mem[561 len 15] >> 136,
                    0
    delegates[address(arg1)][0] = Mask(96, 0, arg2 + delegates[address(arg1)][0])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function delegate(address arg1, uint96 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(96, 0, arg2)
    if Mask(96, 0, arg2) > delegates[address(msg.sender)][0]:
        revert with 0, 'mPond: delegates underflow', 0
    delegates[address(msg.sender)][0] = Mask(96, 0, delegates[address(msg.sender)][0] - arg2)
    if Mask(96, 0, arg2 + delegates[address(msg.sender)][arg1]) < delegates[address(msg.sender)][arg1]:
        revert with 0, 'mPond: delegates overflow', 0
    delegates[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2 + delegates[address(msg.sender)][arg1])
    emit DelegateChanged(msg.sender, 0, arg1);
    if arg1 != 0:
        if Mask(96, 0, arg2):
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if Mask(96, 0, arg2 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32:
                        revert with 0, 32, 40, 0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[296 len 24] >> 64, 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[405 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg2 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg2 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32), arg1);
                else:
                    if Mask(96, 0, arg2) < 0:
                        revert with 0, 32, 40, 0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[296 len 24] >> 64, 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[405 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg2)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, arg2)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), arg1);
}

function undelegate(address arg1, uint96 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(96, 0, arg2)
    if Mask(96, 0, arg2) > delegates[address(msg.sender)][address(arg1)]:
        revert with 0, 'mPond: undelegates underflow', 0
    delegates[address(msg.sender)][address(arg1)] = Mask(96, 0, delegates[address(msg.sender)][address(arg1)] - arg2)
    if Mask(96, 0, arg2 + delegates[address(msg.sender)][0]) < delegates[address(msg.sender)][0]:
        revert with 0, 'mPond: delegates underflow', 0
    delegates[address(msg.sender)][0] = Mask(96, 0, arg2 + delegates[address(msg.sender)][0])
    emit DelegateChanged(msg.sender, arg1, 0);
    if arg1:
        if Mask(96, 0, arg2):
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if Mask(96, 0, arg2) > checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[297 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[405 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg2)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg2)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg2)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg2), arg1);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[297 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[405 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, Mask(96, 0, -arg2), arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint96 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == Mask(96, 0, arg7)
    if not bool(name.length):
        mem[96] = Mask(248, 8, name.length)
        signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len name.length.field_1]), chainid, this.address), sha3(DELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
    else:
        if bool(name.length) != 1:
            signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len -96]), chainid, this.address), sha3(DELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
        else:
            idx = 0
            s = 0
            while idx < name.length.field_1:
                mem[idx + 96] = name[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len name.length.field_1]), chainid, this.address), sha3(DELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'mPond::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'mPond::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'mPond::delegateBySig: signature expired'
    if Mask(96, 0, arg7) > delegates[address(signer)][0]:
        revert with 0, 'mPond: delegates underflow', 0
    delegates[address(signer)][0] = Mask(96, 0, delegates[address(signer)][0] - arg7)
    if Mask(96, 0, arg7 + delegates[address(signer)][arg1]) < delegates[address(signer)][arg1]:
        revert with 0, 'mPond: delegates overflow', 0
    delegates[address(signer)][address(arg1)] = Mask(96, 0, arg7 + delegates[address(signer)][arg1])
    emit DelegateChanged(address(signer), 0, arg1);
    if arg1 != 0:
        if Mask(96, 0, arg7):
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if Mask(96, 0, arg7 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32:
                        revert with 0, 32, 40, 0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[778 len 24] >> 64, 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[887 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg7 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, arg7 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg7 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0, Mask(96, 0, arg7 + checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32), arg1);
                else:
                    if Mask(96, 0, arg7) < 0:
                        revert with 0, 32, 40, 0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[778 len 24] >> 64, 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[887 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg7)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, arg7)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, arg7)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, Mask(96, 0, arg7), arg1);
}

function undelegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint96 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == Mask(96, 0, arg7)
    if not bool(name.length):
        mem[96] = Mask(248, 8, name.length)
        signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len name.length.field_1]), chainid, this.address), sha3(UNDELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
    else:
        if bool(name.length) != 1:
            signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len -96]), chainid, this.address), sha3(UNDELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
        else:
            idx = 0
            s = 0
            while idx < name.length.field_1:
                mem[idx + 96] = name[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            signer = erecover(sha3(0, sha3(DOMAIN_TYPEHASH, sha3(mem[96 len name.length.field_1]), chainid, this.address), sha3(UNDELEGATION_TYPEHASH, address(arg1), arg2, arg3, Mask(96, 0, arg7))), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'mPond::undelegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'mPond::undelegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'mPond::undelegateBySig: signature expired'
    if Mask(96, 0, arg7) > delegates[address(signer)][address(arg1)]:
        revert with 0, 'mPond: undelegates underflow', 0
    delegates[address(signer)][address(arg1)] = Mask(96, 0, delegates[address(signer)][address(arg1)] - arg7)
    if Mask(96, 0, arg7 + delegates[address(signer)][0]) < delegates[address(signer)][0]:
        revert with 0, 'mPond: delegates underflow', 0
    delegates[address(signer)][0] = Mask(96, 0, arg7 + delegates[address(signer)][0])
    emit DelegateChanged(address(signer), arg1, 0);
    if arg1:
        if Mask(96, 0, arg7):
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if Mask(96, 0, arg7) > checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[779 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[887 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg7)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg7)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg7)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 - arg7), arg1);
                else:
                    if Mask(96, 0, arg7) > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x736d506f6e643a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[779 len 23] >> 72,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x736d506f6e643a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[887 len 11] >> 168,
                                    0
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, -arg7)
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor61[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, -arg7)
                        else:
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor61[address(arg1)]].field_32 = Mask(96, 0, -arg7)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, Mask(96, 0, -arg7), arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if dropBridgeAddress != msg.sender:
        if dropBridgeAddress == arg2:
            if not stor67[address(msg.sender)]:
                if not enableAllTranfers:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Atleast one of the address (src or dst) should be whitelisted or all transfers must be enabled via enableAllTransfers()'
        else:
            if not stor67[address(msg.sender)]:
                if not stor67[address(arg2)]:
                    if not enableAllTranfers:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Atleast one of the address (src or dst) should be whitelisted or all transfers must be enabled via enableAllTransfers()'
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 38, 0x736d506f6e643a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'mPond::_transferTokens: cannot transfer from the zero address'
        if delegates[address(arg1)][0] < Mask(96, 0, arg3):
            revert with 0, 'mPond: _transferTokens: undelegated amount should be greater than transfer amount'
        if not arg2:
            revert with 0, 'mPond::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        55,
                        0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, arg3) > delegates[address(arg1)][0]:
            revert with 0, 
                        32,
                        51,
                        0xfe6d506f6e643a205f7472616e666572546f6b656e733a20756e64656c6567617465207375627472616374696f6e206572726f, mem[371 len 13] >> 152,
                        0
        delegates[address(arg1)][0] = Mask(96, 0, delegates[address(arg1)][0] - arg3)
        if Mask(96, 0, arg3 + balanceOf[address(arg2)]) < balanceOf[address(arg2)]:
            revert with 0, 
                        32,
                        49,
                        0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[465 len 15] >> 136,
                        0
        balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[address(arg2)])
        if Mask(96, 0, arg3 + delegates[address(arg2)][0]) < delegates[address(arg2)][0]:
            revert with 0, 
                        32,
                        49,
                        0x736d506f6e643a205f7472616e73666572546f6b656e733a20756e64656c6567617465206164646974696f6e206572726f, mem[561 len 15] >> 136,
                        0
    else:
        if allowance[address(arg1)][msg.sender] == test266151307():
            if not arg1:
                revert with 0, 'mPond::_transferTokens: cannot transfer from the zero address'
            if delegates[address(arg1)][0] < Mask(96, 0, arg3):
                revert with 0, 'mPond: _transferTokens: undelegated amount should be greater than transfer amount'
            if not arg2:
                revert with 0, 'mPond::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[279 len 9] >> 184,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3) > delegates[address(arg1)][0]:
                revert with 0, 
                            32,
                            51,
                            0xfe6d506f6e643a205f7472616e666572546f6b656e733a20756e64656c6567617465207375627472616374696f6e206572726f, mem[371 len 13] >> 152,
                            0
            delegates[address(arg1)][0] = Mask(96, 0, delegates[address(arg1)][0] - arg3)
            if Mask(96, 0, arg3 + balanceOf[address(arg2)]) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            49,
                            0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[465 len 15] >> 136,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[address(arg2)])
            if Mask(96, 0, arg3 + delegates[address(arg2)][0]) < delegates[address(arg2)][0]:
                revert with 0, 
                            32,
                            49,
                            0x736d506f6e643a205f7472616e73666572546f6b656e733a20756e64656c6567617465206164646974696f6e206572726f, mem[561 len 15] >> 136,
                            0
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            62,
                            0x736d506f6e643a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[286 len 2] >> 240,
                            0
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 'mPond::_transferTokens: cannot transfer from the zero address'
            if delegates[address(arg1)][0] < Mask(96, 0, arg3):
                revert with 0, 'mPond: _transferTokens: undelegated amount should be greater than transfer amount'
            if not arg2:
                revert with 0, 'mPond::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[375 len 9] >> 184,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3) > delegates[address(arg1)][0]:
                revert with 0, 
                            32,
                            51,
                            0xfe6d506f6e643a205f7472616e666572546f6b656e733a20756e64656c6567617465207375627472616374696f6e206572726f, mem[467 len 13] >> 152,
                            0
            delegates[address(arg1)][0] = Mask(96, 0, delegates[address(arg1)][0] - arg3)
            if Mask(96, 0, arg3 + balanceOf[address(arg2)]) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            49,
                            0x726d506f6e643a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[561 len 15] >> 136,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[address(arg2)])
            if Mask(96, 0, arg3 + delegates[address(arg2)][0]) < delegates[address(arg2)][0]:
                revert with 0, 
                            32,
                            49,
                            0x736d506f6e643a205f7472616e73666572546f6b656e733a20756e64656c6567617465206164646974696f6e206572726f, mem[657 len 15] >> 136,
                            0
    ('ge', ('mask_shl', 96, 0, 0, ('add', ('param', 'arg3'), ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'delegates', 59)))))), ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'delegates', 59)))))
    delegates[address(arg2)][0] = Mask(96, 0, arg3 + delegates[address(arg2)][0])
    emit Transfer(Mask(96, 0, arg3), arg1, arg2);
    return 1
}



}
