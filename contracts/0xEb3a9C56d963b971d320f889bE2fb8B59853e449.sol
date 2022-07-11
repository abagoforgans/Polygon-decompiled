contract main {




// =====================  Runtime code  =====================


const CheckBlockTimestamp = block.timestamp


address owner;
address lock_fees_account;
uint256 lockFees;
uint256 lockerNumberOpen;
mapping of struct dXLOCKERLP;
mapping of address lockerRecord;
mapping of uint256 userLockerCount;

function LockerRecord(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lockerRecord[arg1]
}

function lockerNumberOpen() {
    return lockerNumberOpen
}

function owner() {
    return owner
}

function lockFees() {
    return lockFees
}

function DXLOCKERLP(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[128] = dXLOCKERLP[arg1][arg2][1].field_0
    idx = 128
    s = 0
    while dXLOCKERLP[arg1][arg2][1].length + 96 > idx:
        mem[idx + 32] = dXLOCKERLP[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(dXLOCKERLP[arg1][arg2].field_0), 
           bool(dXLOCKERLP[arg1][arg2].field_8),
           Array(len=dXLOCKERLP[arg1][arg2][1].length, data=mem[128 len dXLOCKERLP[arg1][arg2][1].length]),
           dXLOCKERLP[arg1][arg2].field_512,
           dXLOCKERLP[arg1][arg2].field_768,
           dXLOCKERLP[arg1][arg2].field_1024,
           dXLOCKERLP[arg1][arg2].field_1280
}

function UserLockerCount(address arg1) {
    require calldata.size - 4 >= 32
    return userLockerCount[arg1]
}

function Lock_fees_account() {
    return lock_fees_account
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeLockFeesAcc(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'err: LockDep - address cant be 0'
    lock_fees_account = arg1
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x646572723a204c6f636b446570202d2066656573206d7573742062652067726561746572207468616e2030,
                    mem[207 len 21]
    lockFees = arg1
}

function changeLogo(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not dXLOCKERLP[address(msg.sender)][arg1].field_0:
        revert with 0, 
                    32,
                    41,
                    0x216572723a204c6f636b446570202d207573657220646f65736e7420686176652061206c6f636b6572,
                    mem[ceil32(arg2.length) + 237 len 23]
    dXLOCKERLP[address(msg.sender)][arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function increaseLockTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not dXLOCKERLP[address(msg.sender)][arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x216572723a204c6f636b446570202d207573657220646f65736e7420686176652061206c6f636b6572,
                    mem[205 len 23]
    if not dXLOCKERLP[address(msg.sender)][arg2].field_8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x216572723a204c6f636b446570202d2075736572277320746f6b656e7320617265206e6f74206c6f636b6564,
                    mem[208 len 20]
    if arg1 <= dXLOCKERLP[address(msg.sender)][arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x736572723a204c6f636b446570202d204e65772074696d65206d757374206265203e2063757272656e74206c6f636b2074696d,
                    mem[215 len 13]
    dXLOCKERLP[address(msg.sender)][arg2].field_768 = arg1
}

function unlockToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not dXLOCKERLP[address(msg.sender)][arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x216572723a204c6f636b446570202d207573657220646f65736e7420686176652061206c6f636b6572,
                    mem[205 len 23]
    if not dXLOCKERLP[address(msg.sender)][arg1].field_8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x216572723a204c6f636b446570202d2075736572277320746f6b656e7320617265206e6f74206c6f636b6564,
                    mem[208 len 20]
    if dXLOCKERLP[address(msg.sender)][arg1].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x216572723a204c6f636b446570202d206d75737420686176652061746c656173742031207061796f757420766573746564,
                    mem[213 len 15]
    if block.timestamp > dXLOCKERLP[address(msg.sender)][arg1].field_768:
        dXLOCKERLP[address(msg.sender)][arg1].field_8 = 0
    require ext_code.size(dXLOCKERLP[address(msg.sender)][arg1].field_1280)
    staticcall dXLOCKERLP[address(msg.sender)][arg1].field_1280.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < dXLOCKERLP[address(msg.sender)][arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x656572723a204c6f636b6572202d206e6f206d6f726520746f6b656e73206c65667420746f20726566756e,
                    mem[207 len 21]
    require ext_code.size(dXLOCKERLP[address(msg.sender)][arg1].field_1280)
    call dXLOCKERLP[address(msg.sender)][arg1].field_1280.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, dXLOCKERLP[address(msg.sender)][arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x216572723a204c6f636b6572202d20546f6b656e20726566756e6420746f2063726561746f72206661696c6564,
                    mem[209 len 19]
    emit 0x70b37289: address(msg.sender), dXLOCKERLP[address(msg.sender)][arg1].field_1280, dXLOCKERLP[address(msg.sender)][arg1].field_512, block.timestamp
}

function createLocker(address arg1, uint256 arg2, uint256 arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if msg.value < lockFees:
        revert with 0, 
                    32,
                    51,
                    0x216572723a204c6f636b446570202d20706c6561736520707574206d73672e76616c7565203e3d206c6f636b696e6720666565,
                    mem[ceil32(arg4.length) + 247 len 13]
    call lock_fees_account with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_0:
        revert with 0, 
                    32,
                    42,
                    0xfe6572723a204c6f636b446570202d207573657220616c7265616479206d6164652061206c6f636b6572,
                    mem[ceil32(arg4.length) + 238 len 22]
    if arg2 <= block.timestamp:
        revert with 0, 
                    32,
                    49,
                    0x216572723a204c6f636b446570202d204c6f636b2074696d65206d75737420626520686967686572207468616e206e6f77,
                    mem[ceil32(arg4.length) + 245 len 15]
    if arg3 <= 0:
        revert with 0, 
                    32,
                    40,
                    0x216572723a204c6f636b446570202d20746f6b656e20416d6f756e74206d757374206265203e2030,
                    mem[ceil32(arg4.length) + 236 len 24]
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_0 = 1
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_8 = 1
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]][1][].field_0 = Array(len=arg4.length, data=arg4[all])
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_512 = arg3
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_768 = arg2
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_1024 = block.timestamp
    dXLOCKERLP[address(msg.sender)][stor6[address(msg.sender)]].field_1280 = arg1
    lockerRecord[stor3] = msg.sender
    lockerNumberOpen++
    userLockerCount[address(msg.sender)]++
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    48,
                    0x216572723a204c6f636b446570202d20556e61626c6520746f2067657420746f6b656e7320666f72206c6f636b696e67,
                    mem[ceil32(arg4.length) + 692 len 16]
    emit 0x598cd562: msg.sender, address(arg1), arg3, block.timestamp, arg2
}



}
