contract main {




// =====================  Runtime code  =====================


#
#  - sub_8e21863c(?)
#  - sub_c6a5032c(?)
#  - sub_f880bdbc(?)
#
const getChainId = chainid


uint256 domainSeperator;
mapping of uint256 nonce;
mapping of struct sub_65a7e980;

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function sub_593690ab(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    return sub_65a7e980[address(arg1)][3][arg2 << 192].field_0, 
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_0,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_0,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_256,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_256,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_256,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_256,
           sub_65a7e980[address(arg1)][3][arg2 << 192].field_512
}

function sub_65a7e980(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_65a7e980[arg1].field_0, 
           sub_65a7e980[arg1].field_0,
           sub_65a7e980[arg1].field_0,
           sub_65a7e980[arg1].field_256,
           sub_65a7e980[arg1].field_320,
           sub_65a7e980[arg1].field_256,
           sub_65a7e980[arg1].field_256,
           sub_65a7e980[arg1].field_512,
           sub_65a7e980[arg1].field_512,
           sub_65a7e980[arg1].field_584
}

function _fallback() payable {
    revert
}

function sub_d021515c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 2
    s = 0
    idx = sub_65a7e980[address(arg1)].field_584 + 1
    while uint64(idx) <= sub_65a7e980[address(arg1)].field_520:
        mem[0] = uint64(idx)
        mem[32] = sha3(address(arg1), 2) + 3
        _22 = mem[64]
        mem[64] = mem[64] + 256
        mem[_22] = sub_65a7e980[address(arg1)][3][idx << 192].field_0
        mem[_22 + 32] = sub_65a7e980[address(arg1)][3][idx << 192].field_32
        mem[_22 + 64] = sub_65a7e980[address(arg1)][3][idx << 192].field_160
        mem[_22 + 96] = sub_65a7e980[address(arg1)][3][idx << 192].field_256
        mem[_22 + 128] = sub_65a7e980[address(arg1)][3][idx << 192].field_320
        mem[_22 + 160] = sub_65a7e980[address(arg1)][3][idx << 192].field_384
        mem[_22 + 192] = sub_65a7e980[address(arg1)][3][idx << 192].field_448
        mem[_22 + 224] = sub_65a7e980[address(arg1)][3][idx << 192].field_512
        require uint64(s + 1) < mem[96]
        mem[(32 * uint64(s + 1)) + 128] = _22
        mem[0] = address(arg1)
        mem[32] = 2
        s = s + 1
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _25 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _25:
        _36 = mem[t]
        mem[s] = mem[mem[t] + 28 len 4]
        mem[s + 32] = mem[_36 + 48 len 16]
        mem[s + 64] = mem[_36 + 88 len 8]
        mem[s + 96] = mem[_36 + 120 len 8]
        mem[s + 128] = mem[_36 + 152 len 8]
        mem[s + 160] = mem[_36 + 184 len 8]
        mem[s + 192] = mem[_36 + 216 len 8]
        mem[s + 224] = mem[_36 + 252 len 4]
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _24 + (256 * _25) + -mem[64] + 64
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = nonce[address(arg1)]
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 674] = msg.sender
    mem[ceil32(arg2.length) + 706] = 96
    mem[ceil32(arg2.length) + 738] = arg2.length
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 770] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 674 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 674] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 694 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 674 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(arg2.length) + 714] = 0
    call this.address.mem[arg2.length + ceil32(arg2.length) + 694 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 698 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_59aa7fde(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if uint128(arg1) <= 0:
        revert with 0, 'ZERO_VALUE_GIVEN'
    if msg.sender != this.address:
        mem[100] = msg.sender
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint128(arg1) > ext_call.return_data[0]:
            revert with 0, 'AMOUNT_EXCEEDS_BALANCE'
        if msg.sender != this.address:
            if sub_65a7e980[address(msg.sender)].field_512 > 100:
                revert with 0, 'MAX_LIVE_STAKES_REACHED'
            require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
            staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
            staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.totalSupply() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) <= 10^9:
                revert with 0, 'MINIMUM_LIQUIDITY_NOT_MET'
            if msg.sender != this.address:
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 132] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
                mem[(4 * ceil32(return_data.size)) + 164] = uint128(arg1)
                require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
                call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if msg.sender != this.address:
                    sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
                    sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
                    sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
                    sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                    sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                    return sub_65a7e980[address(msg.sender)].field_512, 
                           sub_65a7e980[address(msg.sender)].field_512,
                           uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                mem[(6 * ceil32(return_data.size)) + 96] = calldata.size
                mem[(6 * ceil32(return_data.size)) + 128 len calldata.size] = call.data[0 len calldata.size]
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + 108 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + 108 len 20]].field_512 + 1)
                mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = calldata.size
                mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_520 + 1)
                mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 192] = calldata.size
                mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 224] = calldata.size
                mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_32)
                mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 256] = calldata.size
                mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_160)
                mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 544] = calldata.size
                mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 576 len calldata.size] = call.data[0 len calldata.size]
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_0 = uint32(block.timestamp)
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_32 = uint128(arg1)
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_256 = 0
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_512 = 0
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_512 = 0
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_512 = 0
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_512 = 0
                sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 556 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512].field_512 = 0
                return sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_512, 
                       sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512,
                       uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            mem[(4 * ceil32(return_data.size)) + 96] = calldata.size
            mem[(4 * ceil32(return_data.size)) + 128 len calldata.size] = call.data[0 len calldata.size]
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 132] = mem[calldata.size + (4 * ceil32(return_data.size)) + 108 len 20]
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 164] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 196] = uint128(arg1)
            require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
            call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[calldata.size + (4 * ceil32(return_data.size)) + 108 len 20], 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if msg.sender != this.address:
                sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
                sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
                sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
                sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                return sub_65a7e980[address(msg.sender)].field_512, 
                       sub_65a7e980[address(msg.sender)].field_512,
                       uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = calldata.size
            mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_512 + 1)
            mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_520 + 1)
            mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 192] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 224] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
            mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 256] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_32)
            mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 288] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_160)
            mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 576] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 608 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_32 = uint128(arg1)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_256 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            return sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512, 
                   sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[ceil32(return_data.size) + 96] = calldata.size
        mem[ceil32(return_data.size) + 128 len calldata.size] = call.data[0 len calldata.size]
        if sub_65a7e980[mem[calldata.size + ceil32(return_data.size) + 108 len 20]].field_512 > 100:
            revert with 0, 'MAX_LIVE_STAKES_REACHED'
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(calldata.size) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.totalSupply() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) <= 10^9:
            revert with 0, 'MINIMUM_LIQUIDITY_NOT_MET'
        if msg.sender != this.address:
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 164] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 196] = uint128(arg1)
            require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
            call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
            mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if msg.sender != this.address:
                sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
                sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
                sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
                sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                return sub_65a7e980[address(msg.sender)].field_512, 
                       sub_65a7e980[address(msg.sender)].field_512,
                       uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = calldata.size
            mem[(6 * ceil32(return_data.size)) + ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]].field_512 + 1)
            mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_520 + 1)
            mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 192] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 224] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
            mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 256] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_32)
            mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 288] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_160)
            mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 576] = calldata.size
            mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 608 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_32 = uint128(arg1)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_256 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512].field_512 = 0
            return sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_512, 
                   sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 128] = calldata.size
        mem[(4 * ceil32(return_data.size)) + ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[(4 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 164] = mem[calldata.size + (4 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20]
        mem[(4 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 196] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
        mem[(4 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 228] = uint128(arg1)
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[calldata.size + (4 * ceil32(return_data.size)) + ceil32(calldata.size) + 140 len 20], 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
        mem[(4 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if msg.sender != this.address:
            sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
            sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
            sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
            sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            return sub_65a7e980[address(msg.sender)].field_512, 
                   sub_65a7e980[address(msg.sender)].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 160] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (2 * ceil32(calldata.size)) + 172 len 20]].field_512 + 1)
        mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 192] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (4 * ceil32(calldata.size)) + 204 len 20]].field_520 + 1)
        mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 224] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
        mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 256] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
        mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 288] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (8 * ceil32(calldata.size)) + 300 len 20]].field_32)
        mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 320] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 352 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 332 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (10 * ceil32(calldata.size)) + 332 len 20]].field_160)
        mem[(6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 608] = calldata.size
        mem[(6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 640 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_0 = uint32(block.timestamp)
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_32 = uint128(arg1)
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_256 = 0
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (11 * ceil32(calldata.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512].field_512 = 0
        return sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (6 * ceil32(calldata.size)) + 236 len 20]].field_512, 
               sub_65a7e980[mem[calldata.size + (6 * ceil32(return_data.size)) + (7 * ceil32(calldata.size)) + 268 len 20]].field_512,
               uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 132] = mem[calldata.size + 108 len 20]
    require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
    staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[calldata.size + 108 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint128(arg1) > ext_call.return_data[0]:
        revert with 0, 'AMOUNT_EXCEEDS_BALANCE'
    if msg.sender != this.address:
        if sub_65a7e980[address(msg.sender)].field_512 > 100:
            revert with 0, 'MAX_LIVE_STAKES_REACHED'
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.getReserves() with:
                gas gas_remaining wei
        mem[ceil32(calldata.size) + ceil32(return_data.size) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.totalSupply() with:
                gas gas_remaining wei
        mem[ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) <= 10^9:
            revert with 0, 'MINIMUM_LIQUIDITY_NOT_MET'
        if msg.sender != this.address:
            mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 164] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
            mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 196] = uint128(arg1)
            require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
            call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
            mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if msg.sender != this.address:
                sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
                sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
                sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
                sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
                return sub_65a7e980[address(msg.sender)].field_512, 
                       sub_65a7e980[address(msg.sender)].field_512,
                       uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            mem[ceil32(calldata.size) + (6 * ceil32(return_data.size)) + 128] = calldata.size
            mem[ceil32(calldata.size) + (6 * ceil32(return_data.size)) + 160 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + ceil32(calldata.size) + (6 * ceil32(return_data.size)) + 140 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + ceil32(calldata.size) + (6 * ceil32(return_data.size)) + 140 len 20]].field_512 + 1)
            mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_520 + 1)
            mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192] = calldata.size
            mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224] = calldata.size
            mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
            mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256] = calldata.size
            mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_32)
            mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288] = calldata.size
            mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_160)
            mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 576] = calldata.size
            mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 608 len calldata.size] = call.data[0 len calldata.size]
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_32 = uint128(arg1)
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_256 = 0
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_512 = 0
            sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 588 len 20]][3][sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512].field_512 = 0
            return sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_512, 
                   sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 128] = calldata.size
        mem[ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 164] = mem[calldata.size + ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 140 len 20]
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 196] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 228] = uint128(arg1)
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[calldata.size + ceil32(calldata.size) + (4 * ceil32(return_data.size)) + 140 len 20], 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if msg.sender != this.address:
            sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
            sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
            sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
            sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            return sub_65a7e980[address(msg.sender)].field_512, 
                   sub_65a7e980[address(msg.sender)].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 160] = calldata.size
        mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_512 + 1)
        mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192] = calldata.size
        mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_520 + 1)
        mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224] = calldata.size
        mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
        mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256] = calldata.size
        mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
        mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288] = calldata.size
        mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_32)
        mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320] = calldata.size
        mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 352 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_160)
        mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 608] = calldata.size
        mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 640 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_0 = uint32(block.timestamp)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_32 = uint128(arg1)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_256 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        return sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512, 
               sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512,
               uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 128] = calldata.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 160 len calldata.size] = call.data[0 len calldata.size]
    if sub_65a7e980[mem[calldata.size + ceil32(calldata.size) + ceil32(return_data.size) + 140 len 20]].field_512 > 100:
        revert with 0, 'MAX_LIVE_STAKES_REACHED'
    require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
    staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
    staticcall 0x1d92b05101a380bef413d48a0cf64627ab6428c0.totalSupply() with:
            gas gas_remaining wei
    mem[(2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) <= 10^9:
        revert with 0, 'MINIMUM_LIQUIDITY_NOT_MET'
    if msg.sender != this.address:
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 196] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 228] = uint128(arg1)
        require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
        call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
        mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if msg.sender != this.address:
            sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
            sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
            sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
            sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
            return sub_65a7e980[address(msg.sender)].field_512, 
                   sub_65a7e980[address(msg.sender)].field_512,
                   uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 160] = calldata.size
        mem[(2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (2 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 172 len 20]].field_512 + 1)
        mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192] = calldata.size
        mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_520 + 1)
        mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224] = calldata.size
        mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
        mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256] = calldata.size
        mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
        mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288] = calldata.size
        mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_32)
        mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320] = calldata.size
        mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 352 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_160)
        mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 608] = calldata.size
        mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 640 len calldata.size] = call.data[0 len calldata.size]
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_0 = uint32(block.timestamp)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_32 = uint128(arg1)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_256 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 620 len 20]][3][sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512].field_512 = 0
        return sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_512, 
               sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512,
               uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
    mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 160] = calldata.size
    mem[(2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
    mem[(4 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 196] = mem[calldata.size + (2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 172 len 20]
    mem[(4 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 228] = 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf
    mem[(4 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 260] = uint128(arg1)
    require ext_code.size(0x1d92b05101a380bef413d48a0cf64627ab6428c0)
    call 0x1d92b05101a380bef413d48a0cf64627ab6428c0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args mem[calldata.size + (2 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 172 len 20], 0xef18ca5fbb98c30f06ce45ced7d8a87825fa9fdf, uint128(arg1)
    mem[(4 * ceil32(calldata.size)) + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.sender != this.address:
        sub_65a7e980[address(msg.sender)].field_512 = uint8(sub_65a7e980[address(msg.sender)].field_512 + 1)
        sub_65a7e980[address(msg.sender)].field_520 = uint64(sub_65a7e980[address(msg.sender)].field_520 + 1)
        sub_65a7e980[address(msg.sender)].field_32 = uint128(arg1 + sub_65a7e980[address(msg.sender)].field_32)
        sub_65a7e980[address(msg.sender)].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[address(msg.sender)].field_160)
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_0 = uint32(block.timestamp)
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_32 = uint128(arg1)
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_256 = 0
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
        sub_65a7e980[address(msg.sender)][3][sub_65a7e980[address(msg.sender)].field_512].field_512 = 0
        return sub_65a7e980[address(msg.sender)].field_512, 
               sub_65a7e980[address(msg.sender)].field_512,
               uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
    mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 192] = calldata.size
    mem[(4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
    sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_512 = uint8(sub_65a7e980[mem[calldata.size + (4 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 204 len 20]].field_512 + 1)
    mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 224] = calldata.size
    mem[(6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256 len calldata.size] = call.data[0 len calldata.size]
    sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_520 = uint64(sub_65a7e980[mem[calldata.size + (6 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 236 len 20]].field_520 + 1)
    mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 256] = calldata.size
    mem[(7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288 len calldata.size] = call.data[0 len calldata.size]
    mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 288] = calldata.size
    mem[(8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320 len calldata.size] = call.data[0 len calldata.size]
    mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 320] = calldata.size
    mem[(10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 352 len calldata.size] = call.data[0 len calldata.size]
    sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_32 = uint128(arg1 + sub_65a7e980[mem[calldata.size + (10 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 332 len 20]].field_32)
    mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 352] = calldata.size
    mem[(11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 384 len calldata.size] = call.data[0 len calldata.size]
    sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 364 len 20]].field_160 = uint64((uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6) + sub_65a7e980[mem[calldata.size + (11 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 364 len 20]].field_160)
    mem[(12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 640] = calldata.size
    mem[(12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 672 len calldata.size] = call.data[0 len calldata.size]
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_0 = uint32(block.timestamp)
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_32 = uint128(arg1)
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_160 = uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_256 = 0
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_512 = 0
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_512 = 0
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_512 = 0
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_512 = 0
    sub_65a7e980[mem[calldata.size + (12 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 652 len 20]][3][sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512].field_512 = 0
    return sub_65a7e980[mem[calldata.size + (7 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 268 len 20]].field_512, 
           sub_65a7e980[mem[calldata.size + (8 * ceil32(calldata.size)) + (6 * ceil32(return_data.size)) + 300 len 20]].field_512,
           uint64(uint128(uint128(10^6 * arg1) / ext_call.return_data[0] * uint64(Mask(112, 0, ext_call.return_data[32]) / 10^9)) / 10^6)
}



}
