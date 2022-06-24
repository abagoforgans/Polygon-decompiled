contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint8 stor1;
mapping of uint8 stor2;
mapping of struct transactions;
mapping of uint8 stor4;
array of struct primaryOwners;
array of struct secondaryOwners;
uint256 required_confirmations;
uint256 requestCount;
uint256 transactionCount;
array of struct signers;
mapping of uint8 stor11;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function isSecondaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(stor1[arg1]))
}

function signers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < signers.length
    return address(signers[arg1].field_0)
}

function primaryOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < primaryOwners.length
    return address(primaryOwners[arg1].field_0)
}

function secondaryOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < secondaryOwners.length
    return address(secondaryOwners[arg1].field_0)
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function isPrimaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function requestCount() {
    return requestCount
}

function isSigner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = transactions[arg1][2].field_0
    idx = 128
    s = 0
    while transactions[arg1][2].length + 96 > idx:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactions[arg1].field_0), 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[128 len transactions[arg1][2].length]),
           bool(uint8(transactions[arg1].field_768))
}

function required_confirmations() {
    return required_confirmations
}

function transactionCount() {
    return transactionCount
}

function transactionConfirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[arg1][arg2])
}

function addSigner(address arg1) {
    require calldata.size - 4 >= 32
    if stor11[address(arg1)]:
        revert with 0, 'Signer already exists'
    if not stor0[msg.sender]:
        require uint8(stor1[msg.sender])
    stor11[address(arg1)] = 1
    signers.length++
    address(signers[signers.length].field_0) = arg1
    emit SignerAddition(arg1);
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    require primaryOwners.length + secondaryOwners.length <= 50
    require arg1 <= primaryOwners.length + secondaryOwners.length
    require arg1
    require primaryOwners.length + secondaryOwners.length
    require stor0[msg.sender]
    required_confirmations = arg1
    emit RequirementChange(arg1);
}

function deployContract(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require stor11[msg.sender]
    create contract with ('param', 'arg1') wei
                    code: arg2[all]
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function _fallback() payable {
    require stor11[msg.sender]
    mem[96] = call.data[calldata.size - 32]
    require call.data[calldata.size - 20 len 20]
    mem[96 len calldata.size - 32] = call.data[0 len calldata.size - 32]
    call call.data[calldata.size - 32] with:
       funct call.data[calldata.size - 32 len 4]
       value msg.value wei
         gas gas_remaining wei
        args mem[100 len calldata.size - 36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function addPrimaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    if stor0[address(arg1)]:
        revert with 0, 'Primary Owner already exists'
    if not arg1:
        revert with 0, 'Null address specified'
    require secondaryOwners.length + primaryOwners.length + 1 <= 50
    require required_confirmations <= secondaryOwners.length + primaryOwners.length + 1
    require required_confirmations
    require secondaryOwners.length + primaryOwners.length + 1
    stor0[address(arg1)] = 1
    primaryOwners.length++
    stor36B6[stor5.length] = arg1
    emit 0x44f4c9f7: arg1
}

function acquireTokens(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    idx = 0
    while idx < primaryOwners.length:
        mem[0] = 5
        if address(primaryOwners[idx].field_0) != address(arg1):
            idx = idx + 1
            continue 
        require idx < primaryOwners.length
        address(primaryOwners[idx].field_0) = address(arg2)
        stor0[address(arg1)] = 0
        stor0[address(arg2)] = 1
        emit 0xfa6e7df2: address(arg1)
        emit 0x44f4c9f7: address(arg2)
    stor0[address(arg1)] = 0
    stor0[address(arg2)] = 1
    emit 0xfa6e7df2: address(arg1)
    emit 0x44f4c9f7: address(arg2)
}

function getSigners() {
    if signers.length:
        mem[128] = address(signers.field_0)
        if (32 * signers.length) + 32 > 64:
            mem[160] = address(signers.field_256)
            idx = 160
            s = 1
            while (32 * signers.length) + 96 > idx:
                mem[idx + 32] = address(signers[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * signers.length) + 128] = 32
    mem[(32 * signers.length) + 160] = signers.length
    mem[(32 * signers.length) + 192 len floor32(signers.length)] = mem[128 len floor32(signers.length)]
    return memory
      from (32 * signers.length) + 128
       len (96 * signers.length) + 64
}

function getTransactionConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor5[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = s
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = t + 1
        continue 
    return t
}

function getPrimaryOwners() {
    if primaryOwners.length:
        mem[128] = address(primaryOwners.field_0)
        if (32 * primaryOwners.length) + 32 > 64:
            mem[160] = address(primaryOwners.field_256)
            idx = 160
            s = 1
            while (32 * primaryOwners.length) + 96 > idx:
                mem[idx + 32] = address(primaryOwners[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * primaryOwners.length) + 128] = 32
    mem[(32 * primaryOwners.length) + 160] = primaryOwners.length
    mem[(32 * primaryOwners.length) + 192 len floor32(primaryOwners.length)] = mem[128 len floor32(primaryOwners.length)]
    return memory
      from (32 * primaryOwners.length) + 128
       len (96 * primaryOwners.length) + 64
}

function takeOver() {
    require 1 == bool(stor0[msg.sender])
    idx = 0
    while idx < secondaryOwners.length:
        mem[32] = 1
        uint8(stor1[address(stor6[idx].field_0)]) = 0
        mem[0] = 6
        address(secondaryOwners[idx].field_0) = 0
        idx = idx + 1
        continue 
    secondaryOwners.length = 0
    if secondaryOwners.length > 0:
        idx = 0
        while secondaryOwners.length > idx:
            secondaryOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < signers.length:
        mem[0] = 10
        address(signers[idx].field_0) = 0
        idx = idx + 1
        continue 
    signers.length = 0
    if signers.length > 0:
        idx = 0
        while signers.length > idx:
            signers[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function addSecondaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4f6e6c79205369676e6572436f6e74726f6c20636f6e74726163742063616e20706572666f726d207468697320746173,
                    mem[213 len 15]
    if not arg1:
        revert with 0, 'Null address specified'
    require secondaryOwners.length + primaryOwners.length + 1 <= 50
    require required_confirmations <= secondaryOwners.length + primaryOwners.length + 1
    require required_confirmations
    require secondaryOwners.length + primaryOwners.length + 1
    uint8(stor1[address(arg1)]) = 1
    secondaryOwners.length++
    address(secondaryOwners[secondaryOwners.length].field_0) = arg1
    emit 0x37b40e79: arg1
}

function getTransactionCount(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 3
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 3
            if uint8(transactions[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 3
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getSecondaryOwners() {
    if not secondaryOwners.length:
        mem[(32 * secondaryOwners.length) + 128] = 32
        mem[(32 * secondaryOwners.length) + 160] = secondaryOwners.length
        mem[(32 * secondaryOwners.length) + 192 len floor32(secondaryOwners.length)] = mem[128 len floor32(secondaryOwners.length)]
        return memory
          from (32 * secondaryOwners.length) + 128
           len (96 * secondaryOwners.length) + 64
    mem[128] = address(secondaryOwners.field_0)
    idx = 128
    s = 0
    while (32 * secondaryOwners.length) + 96 > idx:
        mem[idx + 32] = address(secondaryOwners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * secondaryOwners.length) + 192 len floor32(secondaryOwners.length)] = mem[128 len floor32(secondaryOwners.length)]
    return Array(len=secondaryOwners.length, data=mem[128 len floor32(secondaryOwners.length)], mem[(32 * secondaryOwners.length) + floor32(secondaryOwners.length) + 192 len (32 * secondaryOwners.length) - floor32(secondaryOwners.length)]), 
}

function isConfirmedTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor6[idx].field_0)]:
            if s != required_confirmations:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required_confirmations:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    idx = 0
    t = s
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor5[idx].field_0)]:
            if t != required_confirmations:
                idx = idx + 1
                t = t
                continue 
        else:
            if t + 1 != required_confirmations:
                idx = idx + 1
                t = t + 1
                continue 
        return 1
    return 0
}

function removeSigner(address arg1) {
    require calldata.size - 4 >= 32
    require stor11[address(arg1)]
    if not stor0[msg.sender]:
        require uint8(stor1[msg.sender])
    stor11[address(arg1)] = 0
    idx = 0
    while idx < signers.length - 1:
        require idx < signers.length
        mem[0] = 10
        if address(signers[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require signers.length - 1 < signers.length
        require idx < signers.length
        address(signers[idx].field_0) = address(signers[signers.length].field_0)
        signers.length--
        if signers.length > signers.length - 1:
            idx = signers.length + sha3(10) - 1
            while sha3(10) + signers.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit SignerRemoval(arg1);
    signers.length--
    if signers.length > signers.length - 1:
        idx = signers.length - 1
        while signers.length > idx:
            signers[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit SignerRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[10005 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 3
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 3
            if uint8(transactions[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 3
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[10005 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function getTransactionConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    if primaryOwners.length + secondaryOwners.length:
        mem[128 len 32 * primaryOwners.length + secondaryOwners.length] = code.data[10005 len 32 * primaryOwners.length + secondaryOwners.length]
    idx = 0
    s = 0
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < secondaryOwners.length
        mem[0] = 6
        require s < primaryOwners.length + secondaryOwners.length
        mem[(32 * s) + 128] = address(secondaryOwners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = s
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor5[idx].field_0)]:
            idx = idx + 1
            t = t
            continue 
        require idx < primaryOwners.length
        mem[0] = 5
        require t < primaryOwners.length + secondaryOwners.length
        mem[(32 * t) + 128] = address(primaryOwners[idx].field_0)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * primaryOwners.length + secondaryOwners.length) + 128] = t
    if t:
        mem[(32 * primaryOwners.length + secondaryOwners.length) + 160 len 32 * t] = code.data[10005 len 32 * t]
    s = 0
    while s < t:
        require s < primaryOwners.length + secondaryOwners.length
        require s < t
        mem[(32 * s) + (32 * primaryOwners.length + secondaryOwners.length) + 160] = mem[(32 * s) + 140 len 20]
        s = s + 1
        continue 
    mem[(32 * primaryOwners.length + secondaryOwners.length) + (32 * t) + 224 len floor32(t)] = mem[(32 * primaryOwners.length + secondaryOwners.length) + 160 len floor32(t)]
    return Array(len=t, data=mem[(32 * primaryOwners.length + secondaryOwners.length) + 160 len floor32(t)], mem[(32 * primaryOwners.length + secondaryOwners.length) + (32 * t) + floor32(t) + 224 len (32 * t) - floor32(t)]), 
}

function removePrimaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    require stor0[address(arg1)]
    require secondaryOwners.length + primaryOwners.length - 1 <= 50
    require required_confirmations <= secondaryOwners.length + primaryOwners.length - 1
    require required_confirmations
    require secondaryOwners.length + primaryOwners.length - 1
    stor0[address(arg1)] = 0
    idx = 0
    while idx < primaryOwners.length - 1:
        require idx < primaryOwners.length
        mem[0] = 5
        if address(primaryOwners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require primaryOwners.length - 1 < primaryOwners.length
        require idx < primaryOwners.length
        address(primaryOwners[idx].field_0) = address(primaryOwners[primaryOwners.length].field_0)
        primaryOwners.length--
        if primaryOwners.length > primaryOwners.length - 1:
            idx = primaryOwners.length + sha3(5) - 1
            while sha3(5) + primaryOwners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if secondaryOwners.length + primaryOwners.length < required_confirmations:
            require primaryOwners.length + secondaryOwners.length <= 50
            require secondaryOwners.length + primaryOwners.length
            require primaryOwners.length + secondaryOwners.length
            require stor0[msg.sender]
            required_confirmations = secondaryOwners.length + primaryOwners.length
            emit RequirementChange((secondaryOwners.length + primaryOwners.length));
        emit 0xfa6e7df2: arg1
    primaryOwners.length--
    if primaryOwners.length > primaryOwners.length - 1:
        idx = primaryOwners.length - 1
        while primaryOwners.length > idx:
            primaryOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if secondaryOwners.length + primaryOwners.length < required_confirmations:
        require primaryOwners.length + secondaryOwners.length <= 50
        require secondaryOwners.length + primaryOwners.length
        require primaryOwners.length + secondaryOwners.length
        require stor0[msg.sender]
        required_confirmations = secondaryOwners.length + primaryOwners.length
        emit RequirementChange((secondaryOwners.length + primaryOwners.length));
    emit 0xfa6e7df2: arg1
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(transactions[arg1].field_768):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6b5472616e73616374696f6e2068617320616c7265616479206265656e2065786563757465,
                    mem[201 len 27]
    idx = 0
    s = 0
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor6[idx].field_0)]:
            if s != required_confirmations:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required_confirmations:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 3) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: arg1
        else:
            emit 0x507a14a7: arg1
            uint8(transactions[arg1].field_768) = 0
    idx = 0
    t = s
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor5[idx].field_0)]:
            if t != required_confirmations:
                idx = idx + 1
                t = t
                continue 
        else:
            if t + 1 != required_confirmations:
                idx = idx + 1
                t = t + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 3) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: arg1
        else:
            emit 0x507a14a7: arg1
            uint8(transactions[arg1].field_768) = 0
}

function removeSecondaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4f6e6c79205369676e6572436f6e74726f6c20636f6e74726163742063616e20706572666f726d207468697320746173,
                    mem[213 len 15]
    if not arg1:
        revert with 0, 'Null address specified'
    require secondaryOwners.length + primaryOwners.length - 1 <= 50
    require required_confirmations <= secondaryOwners.length + primaryOwners.length - 1
    require required_confirmations
    require secondaryOwners.length + primaryOwners.length - 1
    uint8(stor1[address(arg1)]) = 0
    idx = 0
    while idx < secondaryOwners.length - 1:
        require idx < secondaryOwners.length
        mem[0] = 6
        if address(secondaryOwners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require secondaryOwners.length - 1 < secondaryOwners.length
        require idx < secondaryOwners.length
        address(secondaryOwners[idx].field_0) = address(secondaryOwners[secondaryOwners.length].field_0)
        secondaryOwners.length--
        if secondaryOwners.length > secondaryOwners.length - 1:
            idx = secondaryOwners.length + sha3(6) - 1
            while sha3(6) + secondaryOwners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if secondaryOwners.length + primaryOwners.length < required_confirmations:
            require primaryOwners.length + secondaryOwners.length <= 50
            require secondaryOwners.length + primaryOwners.length
            require primaryOwners.length + secondaryOwners.length
            require stor0[msg.sender]
            required_confirmations = secondaryOwners.length + primaryOwners.length
            emit RequirementChange((secondaryOwners.length + primaryOwners.length));
        emit 0x5e6ce049: arg1
    secondaryOwners.length--
    if secondaryOwners.length > secondaryOwners.length - 1:
        idx = secondaryOwners.length - 1
        while secondaryOwners.length > idx:
            secondaryOwners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if secondaryOwners.length + primaryOwners.length < required_confirmations:
        require primaryOwners.length + secondaryOwners.length <= 50
        require secondaryOwners.length + primaryOwners.length
        require primaryOwners.length + secondaryOwners.length
        require stor0[msg.sender]
        required_confirmations = secondaryOwners.length + primaryOwners.length
        emit RequirementChange((secondaryOwners.length + primaryOwners.length));
    emit 0x5e6ce049: arg1
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        if not uint8(stor1[address(msg.sender)]):
            revert with 0, 'Not an owner'
    if not address(transactions[arg1].field_0):
        revert with 0, 'Transaction ID does not exist'
    if stor4[arg1][msg.sender]:
        revert with 0, 'Transaction already confirmed'
    stor4[arg1][msg.sender] = 1
    emit 0x3d185bf7: msg.sender, arg1
    if uint8(transactions[arg1].field_768):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6b5472616e73616374696f6e2068617320616c7265616479206265656e2065786563757465,
                    mem[201 len 27]
    idx = 0
    s = 0
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor6[idx].field_0)]:
            if s != required_confirmations:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required_confirmations:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 3) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: arg1
        else:
            emit 0x507a14a7: arg1
            uint8(transactions[arg1].field_768) = 0
    idx = 0
    t = s
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(arg1, 4)
        if not stor4[arg1][address(stor5[idx].field_0)]:
            if t != required_confirmations:
                idx = idx + 1
                t = t
                continue 
        else:
            if t + 1 != required_confirmations:
                idx = idx + 1
                t = t + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 3) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: arg1
        else:
            emit 0x507a14a7: arg1
            uint8(transactions[arg1].field_768) = 0
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'Null address specified'
    address(transactions[stor9].field_0) = arg1
    transactions[stor9].field_256 = arg2
    transactions[stor9][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(transactions[stor9].field_768) = 0
    transactionCount++
    mem[ceil32(arg3.length) + 256] = transactionCount
    emit 0x49f9b5aa: transactionCount
    if not stor0[msg.sender]:
        if not uint8(stor1[address(msg.sender)]):
            revert with 0, 'Not an owner'
    if not address(transactions[stor9].field_0):
        revert with 0, 'Transaction ID does not exist'
    if stor4[stor9][msg.sender]:
        revert with 0, 'Transaction already confirmed'
    stor4[stor9][msg.sender] = 1
    emit 0x3d185bf7: msg.sender, transactionCount
    if uint8(transactions[stor9].field_768):
        revert with 0, 
                    32,
                    37,
                    0x6b5472616e73616374696f6e2068617320616c7265616479206265656e2065786563757465,
                    mem[ceil32(arg3.length) + 361 len 27]
    idx = 0
    s = 0
    while idx < secondaryOwners.length:
        mem[0] = address(secondaryOwners[idx].field_0)
        mem[32] = sha3(transactionCount, 4)
        if not stor4[stor9][address(stor6[idx].field_0)]:
            if s != required_confirmations:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required_confirmations:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[stor9].field_768) = 1
        mem[ceil32(arg3.length) + 256] = transactions[stor9][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 3) + 2)
        while ceil32(arg3.length) + transactions[stor9][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[stor9].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value transactions[stor9].field_256 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 260 len transactions[stor9][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: transactionCount
        else:
            emit 0x507a14a7: transactionCount
            uint8(transactions[stor9].field_768) = 0
        return transactionCount
    idx = 0
    t = s
    while idx < primaryOwners.length:
        mem[0] = address(primaryOwners[idx].field_0)
        mem[32] = sha3(transactionCount, 4)
        if not stor4[stor9][address(stor5[idx].field_0)]:
            if t != required_confirmations:
                idx = idx + 1
                t = t
                continue 
        else:
            if t + 1 != required_confirmations:
                idx = idx + 1
                t = t + 1
                continue 
        uint8(transactions[stor9].field_768) = 1
        mem[ceil32(arg3.length) + 256] = transactions[stor9][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 3) + 2)
        while ceil32(arg3.length) + transactions[stor9][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[stor9].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value transactions[stor9].field_256 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 260 len transactions[stor9][2].length - 4]
        if ext_call.success:
            emit 0xa04152e2: transactionCount
        else:
            emit 0x507a14a7: transactionCount
            uint8(transactions[stor9].field_768) = 0
        return transactionCount
    return transactionCount
}



}
