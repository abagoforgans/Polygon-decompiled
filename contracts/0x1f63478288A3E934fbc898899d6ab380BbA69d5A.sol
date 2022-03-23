contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


uint8 currentState;
array of uint256 stor1;
uint256 sub_39bd89c2;
mapping of uint8 stor3;
mapping of address contract;
mapping of uint8 stor5;
uint256 sub_6af51c5e;
mapping of struct transactions;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of struct owners;
uint256 required;
uint256 transactionCount;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[Mask(32, 224, arg1)])
}

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1].field_0
}

function getRequired() {
    return required
}

function sub_29e04b51(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor9[arg1][arg2])
}

function getCurrentState() {
    require currentState <= 2
    return currentState
}

function sub_39bd89c2(?) {
    return sub_39bd89c2
}

function sub_6af51c5e(?) {
    return sub_6af51c5e
}

function sub_839f2387(?) {
    return stor1.length
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
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[128 len transactions[arg1][2].length]),
           bool(transactions[arg1].field_768)
}

function getContractAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return contract[arg1]
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function _fallback() payable {
    revert
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function getConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 9)
        if not stor9[arg1][stor11[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 9)
        if not stor9[arg1][stor11[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not stor9[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x2e546865206f776e657220646964206e6f7420636f6e6669726d2074686973207472616e73616374696f6e496420796574,
                    mem[213 len 15]
    if transactions[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e54686973207472616e73616374696f6e496420697320657865637574656420616c7265616479,
                    mem[203 len 25]
    stor9[arg1][msg.sender] = 0
    emit Revocation(msg.sender, arg1);
}

function sub_6d13956b(?) {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = uint16(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = uint16(stor6.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
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
            mem[32] = 8
            if not transactions[idx].field_768:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 8
            if transactions[idx].field_768:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 8
                if not transactions[idx].field_768:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function replaceOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                    mem[215 len 13]
    if not stor10[address(arg1)]:
        revert with 0, 'This address is not an owner.'
    if stor10[address(arg2)]:
        revert with 0, 'This address is an owner.'
    idx = 0
    while idx < owners.length:
        mem[0] = 11
        if owners[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        owners[idx].field_0 = arg2
        stor10[address(arg1)] = 0
        stor10[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor10[address(arg1)] = 0
    stor10[arg2] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function getConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require owners.length <= test266151307()
    if owners.length:
        mem[128 len 32 * owners.length] = call.data[calldata.size len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 9)
        if not stor9[arg1][stor11[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 11
        require s < owners.length
        mem[(32 * s) + 128] = owners[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                    mem[215 len 13]
    if owners.length > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if arg1 > owners.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if not owners.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    required = arg1
    emit RequirementChange(arg1);
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not stor9[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x2e546865206f776e657220646964206e6f7420636f6e6669726d2074686973207472616e73616374696f6e496420796574,
                    mem[213 len 15]
    if transactions[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e54686973207472616e73616374696f6e496420697320657865637574656420616c7265616479,
                    mem[203 len 25]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 9)
        if not stor9[arg1][stor11[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[arg1].field_768 = 1
        mem[128] = transactions[arg1][2].field_0
        idx = 128
        s = sha3(sha3(arg1, 8) + 2)
        while transactions[arg1][2].length + 96 > idx:
            mem[idx + 32] = stor1[s]
            idx = idx + 32
            s = s + 1
            continue 
        call transactions[arg1].field_0.mem[128 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[132 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            transactions[arg1].field_768 = 0
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                    mem[215 len 13]
    if stor10[address(arg1)]:
        revert with 0, 'This address is an owner.'
    if not arg1:
        revert with 0, 'The zero-address is not allowed.'
    if owners.length + 1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if required > owners.length + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if not required:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    if not owners.length + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                    mem[206 len 22]
    stor10[address(arg1)] = 1
    owners.length++
    stor175B[stor11.length] = arg1
    emit OwnerAddition(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require transactionCount <= test266151307()
    if transactionCount:
        mem[128 len 32 * transactionCount] = call.data[calldata.size len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 8
            if not transactions[idx].field_768:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 8
            if transactions[idx].field_768:
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 8
                if not transactions[idx].field_768:
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    require arg2 - arg1 <= test266151307()
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            require idx < transactionCount
            require idx - arg1 < mem[(32 * transactionCount) + 128]
            mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
    else:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        s = arg1
        while s < arg2:
            require s < transactionCount
            require s - arg1 < mem[(32 * transactionCount) + 128]
            mem[(32 * s - arg1) + (32 * transactionCount) + 160] = mem[(32 * s) + 128]
            s = s + 1
            continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not transactions[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe546865207472616e73616374696f6e2064657374696e6174696f6e20646f6573206e6f74206578697374,
                    mem[207 len 21]
    if stor9[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x2e54686973206f776e65722064696420636f6e6669726d2074686973207472616e73616374696f6e496420616c7265616479,
                    mem[214 len 14]
    stor9[arg1][msg.sender] = 1
    emit Confirmation(msg.sender, arg1);
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not stor9[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x2e546865206f776e657220646964206e6f7420636f6e6669726d2074686973207472616e73616374696f6e496420796574,
                    mem[213 len 15]
    if transactions[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e54686973207472616e73616374696f6e496420697320657865637574656420616c7265616479,
                    mem[203 len 25]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 9)
        if not stor9[arg1][stor11[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[arg1].field_768 = 1
        mem[128] = transactions[arg1][2].field_0
        idx = 128
        s = sha3(sha3(arg1, 8) + 2)
        while transactions[arg1][2].length + 96 > idx:
            mem[idx + 32] = stor1[s]
            idx = idx + 32
            s = s + 1
            continue 
        call transactions[arg1].field_0.mem[128 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[132 len transactions[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            transactions[arg1].field_768 = 0
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'The zero-address is not allowed.'
    transactions[stor13].field_0 = arg1
    transactions[stor13].field_256 = arg2
    transactions[stor13][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    transactions[stor13].field_768 = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not transactions[stor13].field_0:
        revert with 0, 
                    32,
                    43,
                    0xfe546865207472616e73616374696f6e2064657374696e6174696f6e20646f6573206e6f74206578697374,
                    mem[ceil32(arg3.length) + 367 len 21]
    if stor9[stor13][msg.sender]:
        revert with 0, 
                    32,
                    50,
                    0x2e54686973206f776e65722064696420636f6e6669726d2074686973207472616e73616374696f6e496420616c7265616479,
                    mem[ceil32(arg3.length) + 374 len 14]
    stor9[stor13][msg.sender] = 1
    emit Confirmation(msg.sender, transactionCount);
    if not stor10[msg.sender]:
        revert with 0, 'This address is not an owner.'
    if not stor9[stor13][msg.sender]:
        revert with 0, 
                    32,
                    49,
                    0x2e546865206f776e657220646964206e6f7420636f6e6669726d2074686973207472616e73616374696f6e496420796574,
                    mem[ceil32(arg3.length) + 373 len 15]
    if transactions[stor13].field_768:
        revert with 0, 
                    32,
                    39,
                    0x2e54686973207472616e73616374696f6e496420697320657865637574656420616c7265616479,
                    mem[ceil32(arg3.length) + 363 len 25]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(transactionCount, 9)
        if not stor9[stor13][stor11[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        transactions[stor13].field_768 = 1
        mem[ceil32(arg3.length) + 288] = transactions[stor13][2].field_0
        idx = ceil32(arg3.length) + 288
        s = sha3(sha3(transactionCount, 8) + 2)
        while ceil32(arg3.length) + transactions[stor13][2].length + 256 > idx:
            mem[idx + 32] = stor1[s]
            idx = idx + 32
            s = s + 1
            continue 
        call transactions[stor13].field_0.mem[ceil32(arg3.length) + 288 len 4] with:
           value transactions[stor13].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 292 len transactions[stor13][2].length - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            transactions[stor13].field_768 = 0
        return transactionCount
    return transactionCount
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                    mem[215 len 13]
    if not stor10[address(arg1)]:
        revert with 0, 'This address is not an owner.'
    stor10[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 11
        if owners[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        owners[idx].field_0 = owners[owners.length].field_0
        require owners.length
        owners[owners.length].field_0 = 0
        owners.length--
        if required > owners.length:
            if msg.sender != this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            51,
                            0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                            mem[215 len 13]
            if owners.length > 50:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                            mem[206 len 22]
            if owners.length > owners.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                            mem[206 len 22]
            if not owners.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                            mem[206 len 22]
            if not owners.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                            mem[206 len 22]
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    require owners.length
    owners[owners.length].field_0 = 0
    owners.length--
    if required > owners.length:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x2e43616e206f6e6c79206265206578656375746564206279207468652077616c6c657420636f6e747261637420697473656c66,
                        mem[215 len 13]
        if owners.length > 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                        mem[206 len 22]
        if owners.length > owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                        mem[206 len 22]
        if not owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                        mem[206 len 22]
        if not owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x2e54686973206368616e676520696e20726571756972656d656e74206973206e6f7420616c6c6f776564,
                        mem[206 len 22]
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function sub_fb479d9b(?) {
    require calldata.size - 4 >= 64
    require currentState <= 2
    if currentState != 2:
        require currentState <= 2
        if currentState != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        64,
                        0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x2e556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if 1 == bool(stor5[arg2]):
        if arg2 != sub_6af51c5e:
            if this.address == arg1:
                sub_6af51c5e = arg2
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 2
                stor1.length++
                require currentState <= 2
                if currentState != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
            contract[arg2] = arg1
        else:
            sub_6af51c5e = 0
            require currentState <= 2
            if currentState:
                require currentState <= 2
                if currentState != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
            currentState = 1
            sub_39bd89c2++
            require currentState <= 2
            if currentState != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            64,
                            0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    else:
        if this.address == arg1:
            if arg2 != sub_6af51c5e:
                if this.address == arg1:
                    sub_6af51c5e = arg2
                    require currentState <= 2
                    if currentState != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                    currentState = 2
                    stor1.length++
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                contract[arg2] = arg1
            else:
                sub_6af51c5e = 0
                require currentState <= 2
                if currentState:
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 1
                sub_39bd89c2++
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
        else:
            if arg2 == sub_6af51c5e:
                sub_6af51c5e = 0
                require currentState <= 2
                if currentState:
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 1
                sub_39bd89c2++
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
}



}
