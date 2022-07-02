contract main {




// =====================  Runtime code  =====================


#
#  - sub_005c6a6a(?)
#  - sub_63849d68(?)
#
mapping of uint8 stor1;
mapping of uint256 _supplys;
mapping of uint256 maxIndex;
array of uint256 sub_d9983b49;
array of uint256 sub_f104c7e1;
array of uint256 sub_761570e0;
mapping of address sub_114c1c3f;
array of uint256 sub_60b72c16;
array of uint256 sub_39c5bd5f;
array of uint256 sub_55a6b3cc;
address stor13;
mapping of uint256 replayNonce;
mapping of uint8 stor15;
mapping of address ownerOf;
mapping of uint8 stor17;

function maxIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxIndex[arg1]
}

function sub_114c1c3f(?) payable {
    require calldata.size - 4 >= 32
    return sub_114c1c3f[arg1]
}

function sub_39c5bd5f(?) payable {
    return sub_39c5bd5f[arg1][0 len sub_39c5bd5f[arg1].length]
}

function sub_55a6b3cc(?) payable {
    return sub_55a6b3cc[arg1][0 len sub_55a6b3cc[arg1].length]
}

function sub_60b72c16(?) payable {
    return sub_60b72c16[arg1][0 len sub_60b72c16[arg1].length]
}

function sub_612e3b4f(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[address(arg1)])
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function replayNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    return replayNonce[arg1]
}

function sub_6efb5ab2(?) payable {
    require calldata.size - 4 >= 32
    return replayNonce[address(arg1)]
}

function sub_761570e0(?) payable {
    return sub_761570e0[arg1][0 len sub_761570e0[arg1].length]
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _supplys[arg1]
}

function sub_d9983b49(?) payable {
    return sub_d9983b49[arg1][0 len sub_d9983b49[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][address(arg2)])
}

function sub_f104c7e1(?) payable {
    return sub_f104c7e1[arg1][0 len sub_f104c7e1[arg1].length]
}

function _supplys(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _supplys[arg1]
}

function sub_fbc16c87(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function getNonFungibleIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint128(arg1)
}

function getNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(128, 128, arg1)
}

function sub_510c3903(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor17[arg1]) == 1:
        return 1
    else:
        return 0
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] == arg1:
        return 1
    else:
        return 0
}

function sub_6e3d99a4(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor15[address(msg.sender)]) != 1:
        require msg.sender == stor13
    stor17[arg1] = 0
}

function metaTransferHash(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return sha3(this.address, 'metaTransfer', arg1, arg2, arg3)
}

function isNonFungible(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function isNonFungibleItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not not uint128(arg1)
}

function isNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not uint128(arg1)
}

function sub_d7bb938c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if bool(stor15[address(msg.sender)]) != 1:
        require msg.sender == stor13
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_7d3930fe(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == stor13
    idx = 0
    while idx < ('cd', 4).length:
        if address(cd[((32 * idx) + cd[4] + 36)]) != stor13:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 15
            stor15[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[17433 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if Mask(1, 255, cd[((32 * idx) + arg2 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            if uint128(cd[((32 * idx) + arg2 + 36)]):
                require idx < arg1.length
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 16
                require idx < arg1.length
                if ownerOf[cd[((32 * idx) + arg2 + 36)]] == address(cd[((32 * idx) + arg1 + 36)]):
                    mem[(32 * idx) + 128] = 1
                else:
                    mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function sub_df0b917f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if bool(stor15[address(msg.sender)]) != 1:
        require msg.sender == stor13
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaTransfer'
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 244] = arg4
    mem[ceil32(arg1.length) + 128] = 116
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require address(signer) == arg2
    require ownerOf[arg3] == address(signer)
    require arg4 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    stor17[arg3] = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if not stor17[arg3]:
        if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require arg1 == msg.sender
            require ownerOf[arg3] == arg1
            ownerOf[arg3] = arg2
    else:
        if bool(stor17[arg3]) != 1:
            if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require arg1 == msg.sender
                require ownerOf[arg3] == arg1
                ownerOf[arg3] = arg2
        else:
            if bool(stor15[address(msg.sender)]) != 1:
                require msg.sender == stor13
            stor17[arg3] = 0
            ownerOf[arg3] = arg2
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        57,
                        0x64636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                        arg4 % 72057594037927936
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg3.length != arg4.length:
        revert with 0, 'Array length must match'
    idx = 0
    while idx < arg3.length:
        mem[0] = cd[((32 * idx) + arg3 + 36)]
        mem[32] = 17
        if not stor17[cd[((32 * idx) + arg3 + 36)]]:
            if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require arg1 == msg.sender
                require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
                mem[0] = cd[((32 * idx) + arg3 + 36)]
                mem[32] = 16
                ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
        else:
            mem[0] = cd[((32 * idx) + arg3 + 36)]
            mem[32] = 17
            if bool(stor17[cd[((32 * idx) + arg3 + 36)]]) != 1:
                if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require arg1 == msg.sender
                    require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
                    mem[0] = cd[((32 * idx) + arg3 + 36)]
                    mem[32] = 16
                    ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
            else:
                if bool(stor15[address(msg.sender)]) != 1:
                    require msg.sender == stor13
                stor17[cd[((32 * idx) + arg3 + 36)]] = 0
                mem[0] = cd[((32 * idx) + arg3 + 36)]
                mem[32] = 16
                ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
        idx = idx + 1
        continue 
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = 0
    mem[floor32(arg3.length) + 192] = arg4.length
    mem[floor32(arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[floor32(arg3.length) + (32 * arg4.length) + 224] = 0
    emit TransferBatch(Array(len=arg3.length, data=mem[192 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)]), floor32(arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
        mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        else:
            mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        62,
                        0xfe636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                        uint16((32 * arg3.length) + 192)
}



}
