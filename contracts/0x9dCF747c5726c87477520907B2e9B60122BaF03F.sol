contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, bytes arg2)
#
const name = '', 0

const decimals = 18

const getChainId = chainid

const symbol = '', 0

const ERC712_VERSION = '', 0


uint128 totalSupply;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
uint8 inited;
uint256 domainSeperator;
mapping of uint256 nonce;
address depositorAddress;

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function inited() {
    return bool(inited)
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[arg1]
}

function depositor() {
    return depositorAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == -1:
        if msg.sender != this.address:
            allowance[address(msg.sender)][address(arg1)] = test266151307()
            emit Approval(test266151307(), msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            allowance[mem[calldata.size + 108 len 20]][address(arg1)] = test266151307()
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit Approval(test266151307(), mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 36, 0x734376703a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[164 len 28] >> 32, 0
        if msg.sender != this.address:
            allowance[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2)
            emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
        else:
            mem[192] = calldata.size
            mem[224 len calldata.size] = call.data[0 len calldata.size]
            allowance[mem[calldata.size + 204 len 20]][address(arg1)] = Mask(96, 0, arg2)
            mem[ceil32(calldata.size) + 224] = calldata.size
            mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
            emit Approval(Mask(96, 0, arg2), mem[calldata.size + ceil32(calldata.size) + 236 len 20], arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cvp::getPriorVotes: not yet determined'
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

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = 0
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    mem[ceil32(arg2.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0x734d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 770] = msg.sender
    mem[ceil32(arg2.length) + 802] = 96
    mem[ceil32(arg2.length) + 834] = arg2.length
    mem[ceil32(arg2.length) + 866 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 866] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 770 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(arg2.length) + 810] = 0
    call this.address.mem[arg2.length + ceil32(arg2.length) + 790 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 794 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function withdraw(uint96 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(96, 0, arg1)
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cvp::_burn: burn from the zero address'
        if Mask(96, 0, arg1) > balanceOf[address(msg.sender)]:
            revert with 0, 32, 39, 0x734376703a3a5f6275726e3a206275726e20616d6f756e7420657863656564732062616c616e63, mem[167 len 25] >> 56, 0
        balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg1)
        if Mask(96, 0, arg1) > totalSupply:
            revert with 0, 
                        32,
                        43,
                        0x654376703a3a5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c537570706c, mem[267 len 21] >> 88,
                        0
        totalSupply = Mask(96, 0, totalSupply - arg1)
        emit Transfer(Mask(96, 0, arg1), msg.sender, 0);
        if delegates[address(msg.sender)]:
            if delegates[address(msg.sender)]:
                if Mask(96, 0, arg1) > 0:
                    if delegates[address(msg.sender)]:
                        if numCheckpoints[stor3[address(msg.sender)]]:
                            if Mask(96, 0, arg1) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                                revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[359 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                        else:
                            if Mask(96, 0, arg1) > 0:
                                revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[359 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg1)
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'Cvp::_burn: burn from the zero address'
        if Mask(96, 0, arg1) > balanceOf[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        39,
                        0x734376703a3a5f6275726e3a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 199 len 25] >> 56,
                        0
        balanceOf[address(mem[calldata.size + 96])] = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] - arg1)
        if Mask(96, 0, arg1) > totalSupply:
            revert with 0, 
                        32,
                        43,
                        0x654376703a3a5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c537570706c, mem[ceil32(calldata.size) + 299 len 21] >> 88,
                        0
        totalSupply = Mask(96, 0, totalSupply - arg1)
        emit Transfer(Mask(96, 0, arg1), mem[calldata.size + 108 len 20], 0);
        if delegates[address(mem[calldata.size + 96])]:
            if delegates[address(mem[calldata.size + 96])]:
                if Mask(96, 0, arg1) > 0:
                    if delegates[address(mem[calldata.size + 96])]:
                        if numCheckpoints[stor3[address(mem[calldata.size + 96])]]:
                            if Mask(96, 0, arg1) > checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            39,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 391 len 25] >> 56,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(mem[calldata.size + 96])]] <= 0:
                                checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 - arg1)
                                numCheckpoints[stor3[address(mem[calldata.size + 96])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 96])]] + 1)
                            else:
                                if checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 - arg1)
                                else:
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 - arg1)
                                    numCheckpoints[stor3[address(mem[calldata.size + 96])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 96])]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 - arg1), delegates[address(mem[calldata.size + 96])]);
                        else:
                            if Mask(96, 0, arg1) > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 391 len 25] >> 56,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(mem[calldata.size + 96])]] <= 0:
                                checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_32 = Mask(96, 0, -arg1)
                                numCheckpoints[stor3[address(mem[calldata.size + 96])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 96])]] + 1)
                            else:
                                if checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]] - 1 << 224].field_32 = Mask(96, 0, -arg1)
                                else:
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(mem[calldata.size + 96])]][stor5[stor3[address(mem[calldata.size + 96])]]].field_32 = Mask(96, 0, -arg1)
                                    numCheckpoints[stor3[address(mem[calldata.size + 96])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 96])]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(mem[calldata.size + 96])]);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 37, 0x734376703a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
        if not arg1:
            revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        53,
                        0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[277 len 11] >> 168,
                        0
        balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
        if Mask(96, 0, arg2 + balanceOf[arg1]) < balanceOf[arg1]:
            revert with 0, 
                        32,
                        47,
                        0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[367 len 17] >> 120,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[arg1])
        emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
        if delegates[address(msg.sender)] != delegates[arg1]:
            if Mask(96, 0, arg2) > 0:
                if not delegates[address(msg.sender)]:
                    if delegates[arg1]:
                        if numCheckpoints[stor3[arg1]]:
                            if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                            revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                            revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
        mem[192] = calldata.size
        mem[224 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 204 len 20]:
            revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
        if not arg1:
            revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg2) > balanceOf[mem[calldata.size + 204 len 20]]:
            revert with 0, 
                        32,
                        53,
                        0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 309 len 11] >> 168,
                        0
        balanceOf[address(mem[calldata.size + 192])] = Mask(96, 0, balanceOf[mem[calldata.size + 204 len 20]] - arg2)
        if Mask(96, 0, arg2 + balanceOf[arg1]) < balanceOf[arg1]:
            revert with 0, 
                        32,
                        47,
                        0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 399 len 17] >> 120,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[arg1])
        emit Transfer(Mask(96, 0, arg2), mem[calldata.size + 204 len 20], arg1);
        if delegates[address(mem[calldata.size + 192])] != delegates[arg1]:
            if Mask(96, 0, arg2) > 0:
                if not delegates[address(mem[calldata.size + 192])]:
                    if delegates[arg1]:
                        if numCheckpoints[stor3[arg1]]:
                            if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            38,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                                revert with 0, 
                                            32,
                                            38,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                    if numCheckpoints[stor3[address(mem[calldata.size + 192])]]:
                        if Mask(96, 0, arg2) > checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        39,
                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(mem[calldata.size + 192])]] <= 0:
                            checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(mem[calldata.size + 192])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 192])]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2), delegates[address(mem[calldata.size + 192])]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                            if checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2)
                                emit DelegateVotesChanged(checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2), delegates[address(mem[calldata.size + 192])]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor3[arg1]]:
                                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_32 = Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2)
                                numCheckpoints[stor3[address(mem[calldata.size + 192])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 192])]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 - arg2), delegates[address(mem[calldata.size + 192])]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor3[arg1]]:
                                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                        39,
                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(mem[calldata.size + 192])]] <= 0:
                            checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(mem[calldata.size + 192])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 192])]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(mem[calldata.size + 192])]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                            if checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(mem[calldata.size + 192])]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor3[arg1]]:
                                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(mem[calldata.size + 192])]][stor5[stor3[address(mem[calldata.size + 192])]]].field_32 = Mask(96, 0, -arg2)
                                numCheckpoints[stor3[address(mem[calldata.size + 192])]] = uint32(numCheckpoints[stor3[address(mem[calldata.size + 192])]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(mem[calldata.size + 192])]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor3[arg1]]:
                                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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

function delegate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        delegates[address(msg.sender)] = arg1
        emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
        if delegates[address(msg.sender)] != arg1:
            if balanceOf[address(msg.sender)] > 0:
                if not delegates[address(msg.sender)]:
                    if arg1:
                        if numCheckpoints[address(arg1)]:
                            if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[166 len 26] >> 48, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
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
                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[166 len 26] >> 48, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
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
                            revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[167 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[358 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[358 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                            revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[167 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[358 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[358 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[467 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[422 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[531 len 13] >> 152,
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
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        delegates[mem[calldata.size + 108 len 20]] = arg1
        emit DelegateChanged(mem[calldata.size + 108 len 20], delegates[mem[calldata.size + 108 len 20]], arg1);
        if delegates[mem[calldata.size + 108 len 20]] != arg1:
            if balanceOf[mem[calldata.size + 108 len 20]] > 0:
                if not delegates[mem[calldata.size + 108 len 20]]:
                    if arg1:
                        if numCheckpoints[address(arg1)]:
                            if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            38,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 198 len 26] >> 48,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 307 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                        else:
                            if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 198 len 26] >> 48,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 307 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                else:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                else:
                    if numCheckpoints[stor3[mem[calldata.size + 108 len 20]]]:
                        if balanceOf[mem[calldata.size + 108 len 20]] > checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        39,
                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 199 len 25] >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 307 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] <= 0:
                            checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_0 = uint32(block.number)
                            checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_32 = Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]])
                            numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] = uint32(numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                        else:
                            if checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]])
                                emit DelegateVotesChanged(checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 390 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                    else:
                                        if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 390 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                            else:
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_0 = uint32(block.number)
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_32 = Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]])
                                numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] = uint32(numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 - balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                    else:
                                        if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                    else:
                        if balanceOf[mem[calldata.size + 108 len 20]] > 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 199 len 25] >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 307 len 13] >> 152,
                                        0
                        if numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] <= 0:
                            checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_0 = uint32(block.number)
                            checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_32 = Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]])
                            numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] = uint32(numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                        else:
                            if checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]])
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 390 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                    else:
                                        if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 390 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 499 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
                            else:
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_0 = uint32(block.number)
                                checkpoints[stor3[mem[calldata.size + 108 len 20]]][stor5[stor3[mem[calldata.size + 108 len 20]]]].field_32 = Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]])
                                numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] = uint32(numCheckpoints[stor3[mem[calldata.size + 108 len 20]]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[mem[calldata.size + 108 len 20]]), delegates[mem[calldata.size + 108 len 20]]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[mem[calldata.size + 108 len 20]] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                    else:
                                        if balanceOf[mem[calldata.size + 108 len 20]] < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 454 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 563 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[mem[calldata.size + 108 len 20]]
                                            else:
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[mem[calldata.size + 108 len 20]]
                                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[mem[calldata.size + 108 len 20]], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender != this.address:
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 32, 36, 0x734376703a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[164 len 28] >> 32, 0
        if msg.sender == arg1:
            if not arg1:
                revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            53,
                            0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[277 len 11] >> 168,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            47,
                            0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[367 len 17] >> 120,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                                revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                            revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
            if allowance[address(arg1)][address(msg.sender)] == test266151307():
                if not arg1:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
                if not arg2:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
                if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                53,
                                0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[277 len 11] >> 168,
                                0
                balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
                if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                    revert with 0, 
                                32,
                                47,
                                0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[367 len 17] >> 120,
                                0
                balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
                emit Transfer(Mask(96, 0, arg3), arg1, arg2);
                if delegates[address(arg1)] != delegates[arg2]:
                    if Mask(96, 0, arg3) > 0:
                        if not delegates[address(arg1)]:
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[454 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
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
                                    revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                    revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[455 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[563 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[646 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[755 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[710 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[819 len 13] >> 152,
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
                if Mask(96, 0, arg3) > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                60,
                                0x734376703a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[284 len 4] >> 224,
                                0
                allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3)
                emit Approval(Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                if not arg1:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
                if not arg2:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
                if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                53,
                                0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[373 len 11] >> 168,
                                0
                balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
                if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                    revert with 0, 
                                32,
                                47,
                                0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[463 len 17] >> 120,
                                0
                balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
                emit Transfer(Mask(96, 0, arg3), arg1, arg2);
                if delegates[address(arg1)] != delegates[arg2]:
                    if Mask(96, 0, arg3) > 0:
                        if not delegates[address(arg1)]:
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[550 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[659 len 13] >> 152,
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
                                        revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[550 len 26] >> 48, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[659 len 13] >> 152,
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
                                    revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[551 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[659 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[742 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[851 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[742 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[851 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                    revert with 0, 32, 39, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[551 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[659 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[742 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[851 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[742 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[851 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
                                                    revert with 0, 32, 38, 0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[806 len 26] >> 48, 0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[915 len 13] >> 152,
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
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        36,
                        0x734376703a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[ceil32(calldata.size) + 196 len 28] >> 32,
                        0
        if mem[calldata.size + 108 len 20] == arg1:
            if not arg1:
                revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            53,
                            0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 309 len 11] >> 168,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            47,
                            0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 399 len 17] >> 120,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                                    revert with 0, 
                                                32,
                                                38,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                                            39,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                            39,
                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
            if allowance[address(arg1)][address(mem[calldata.size + 96])] == test266151307():
                if not arg1:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
                if not arg2:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
                if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                53,
                                0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 309 len 11] >> 168,
                                0
                balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
                if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                    revert with 0, 
                                32,
                                47,
                                0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 399 len 17] >> 120,
                                0
                balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
                emit Transfer(Mask(96, 0, arg3), arg1, arg2);
                if delegates[address(arg1)] != delegates[arg2]:
                    if Mask(96, 0, arg3) > 0:
                        if not delegates[address(arg1)]:
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 486 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
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
                                                39,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                39,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 487 len 25] >> 56,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 595 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 678 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 787 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 742 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 851 len 13] >> 152,
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
                if Mask(96, 0, arg3) > allowance[address(arg1)][address(mem[calldata.size + 96])]:
                    revert with 0, 
                                32,
                                60,
                                0x734376703a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[ceil32(calldata.size) + 316 len 4] >> 224,
                                0
                allowance[address(arg1)][address(mem[calldata.size + 96])] = Mask(96, 0, allowance[address(arg1)][address(mem[calldata.size + 96])] - arg3)
                emit Approval(Mask(96, 0, allowance[address(arg1)][address(mem[calldata.size + 96])] - arg3), arg1, mem[calldata.size + 108 len 20]);
                if not arg1:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer from the zero address'
                if not arg2:
                    revert with 0, 'Cvp::_transferTokens: cannot transfer to the zero address'
                if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                53,
                                0x294376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 405 len 11] >> 168,
                                0
                balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
                if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                    revert with 0, 
                                32,
                                47,
                                0x734376703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 495 len 17] >> 120,
                                0
                balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
                emit Transfer(Mask(96, 0, arg3), arg1, arg2);
                if delegates[address(arg1)] != delegates[arg2]:
                    if Mask(96, 0, arg3) > 0:
                        if not delegates[address(arg1)]:
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 582 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 691 len 13] >> 152,
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
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 582 len 26] >> 48,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 691 len 13] >> 152,
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
                                                39,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 583 len 25] >> 56,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 691 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 774 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 883 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 774 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 883 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                39,
                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[ceil32(calldata.size) + 583 len 25] >> 56,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 691 len 13] >> 152,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 774 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 883 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 774 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 883 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x654376703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[ceil32(calldata.size) + 838 len 26] >> 48,
                                                                0
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0xfe4376703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(calldata.size) + 947 len 13] >> 152,
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
