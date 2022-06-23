contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
mapping of uint256 nonce;
mapping of uint8 stor3;
mapping of uint256 lastWithdrawal;
uint256 maxLimit;
uint256 blockLimit;
address wethAddress;
address walletAddress;

function maxLimit() {
    return maxLimit
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor0[address(arg1)])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function weth() {
    return wethAddress
}

function wallet() {
    return walletAddress
}

function sub_74ecbb7c(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function lastWithdrawal(address arg1) {
    require calldata.size - 4 >= 32
    return lastWithdrawal[arg1]
}

function blockLimit() {
    return blockLimit
}

function _fallback() payable {
    revert
}

function changeMaxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    maxLimit = arg1
}

function changeBlockLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    blockLimit = arg1
}

function withdrawWeth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    require ext_code.size(wethAddress)
    call wethAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args walletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function sub_5ae77064(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if bool(stor3[arg1[all]]) != 1:
        stor3[arg1[all]] = 1
        require ext_code.size(wethAddress)
        call wethAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Deposit(arg3, Array(len=arg1.length, data=arg1[all]), arg2);
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6841646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if arg1 > maxLimit:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x29416d6f756e742067726561746572207468656e206d6178696d756d206c696d69,
                        mem[197 len 31]
        if blockLimit + lastWithdrawal[address(msg.sender)] < lastWithdrawal[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if block.number <= blockLimit + lastWithdrawal[address(msg.sender)]:
            revert with 0, 'Block limit not reached'
        lastWithdrawal[address(msg.sender)] = block.number
        require ext_code.size(wethAddress)
        call wethAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Withdraw(arg1, msg.sender);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 > maxLimit:
            revert with 0, 
                        32,
                        33,
                        0x29416d6f756e742067726561746572207468656e206d6178696d756d206c696d69,
                        mem[ceil32(calldata.size) + 229 len 31]
        if blockLimit + lastWithdrawal[mem[calldata.size + 108 len 20]] < lastWithdrawal[mem[calldata.size + 108 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        if block.number <= blockLimit + lastWithdrawal[mem[calldata.size + 108 len 20]]:
            revert with 0, 'Block limit not reached'
        lastWithdrawal[address(mem[calldata.size + 96])] = block.number
        require ext_code.size(wethAddress)
        call wethAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20], this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Withdraw(arg1, mem[calldata.size + 108 len 20]);
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 448 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 448] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 448]
    signer = erecover(sha3(0, stor1, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 448 len arg2.length % 32]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x735369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[ceil32(arg2.length) + 866 len 4]
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 770] = msg.sender
    mem[ceil32(arg2.length) + 802] = 96
    mem[ceil32(arg2.length) + 834] = arg2.length
    mem[ceil32(arg2.length) + 866 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 770 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 802 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790 len floor32(arg2.length + 20)] = call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 20) + -(arg2.length + 20 % 32) + 822 len arg2.length + 20 % 32] = Mask(8 * (arg2.length + 20 % 32) + -floor32(arg2.length + 20) + arg2.length - 12, 0, arg1), Mask(8 * floor32(arg2.length + 20), -(8 * floor32(arg2.length + 20)) + 256, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]) << (8 * floor32(arg2.length + 20)) - 256, mem[ceil32(arg2.length) + arg2.length + floor32(arg2.length + 20) + 790 len (2 * floor32(arg2.length + 20)) + -arg2.length + 12]
    call this.address.mem[arg2.length + ceil32(arg2.length) + 790 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 794 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successfull'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
