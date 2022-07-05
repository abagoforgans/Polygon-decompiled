contract main {




// =====================  Runtime code  =====================


#
#  - sub_c81a1a4f(?)
#  - sub_eafe0550(?)
#
const getChainId = chainid


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 domainSeperator;
mapping of uint256 nonce;
address stor53;
mapping of struct sub_d1313384;
mapping of uint8 stor55;
uint8 commission;
uint8 sub_a7786515; offset 8
uint8 sub_c974c7ad; offset 16
uint256 sub_1b897950;
address adminAddress;
address sub_7e312db2Address;
mapping of struct sub_1601d0b5;
mapping of struct stor61;
mapping of uint8 stor62;

function moderators(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor55[arg1])
}

function sub_1601d0b5(?) {
    require calldata.size - 4 >= 32
    return sub_1601d0b5[arg1].field_0, sub_1601d0b5[arg1].field_256
}

function sub_1b897950(?) {
    return sub_1b897950
}

function getDomainSeperator() {
    return domainSeperator
}

function sub_282499fc(?) {
    require calldata.size - 4 >= 32
    return bool(stor61[arg1])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function sub_380ef1ed(?) {
    require calldata.size - 4 >= 32
    return bool(stor62[arg1])
}

function sub_7e312db2(?) {
    return sub_7e312db2Address
}

function sub_a7786515(?) {
    return sub_a7786515
}

function sub_c974c7ad(?) {
    return sub_c974c7ad
}

function sub_d1313384(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_d1313384[arg1].field_0
    idx = 128
    s = 0
    while sub_d1313384[arg1].length + 96 > idx:
        mem[idx + 32] = sub_d1313384[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_d1313384[arg1].length, data=mem[128 len sub_d1313384[arg1].length]), 
           sub_d1313384[arg1].field_256,
           bool(sub_d1313384[arg1].field_264)
}

function commission() {
    return commission
}

function admin() {
    return adminAddress
}

function isModerator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor55[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_6960be4a(?) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        require stor55[address(msg.sender)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require stor55[mem[calldata.size + 108 len 20]]
    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, arg2)
    emit 0x2d2c2d65: arg2, arg1
}

function setModerator(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        require msg.sender == adminAddress
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require mem[calldata.size + 108 len 20] == adminAddress
    stor55[address(arg1)] = uint8(arg2)
    emit 0xfc4a2afc: arg2, arg1
}

function sub_d0661c74(?) {
    require calldata.size - 4 >= 128
    if msg.sender != this.address:
        require msg.sender == adminAddress
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require mem[calldata.size + 108 len 20] == adminAddress
    require arg1 <= 50
    require sub_c974c7ad <= 100
    sub_7e312db2Address = arg2
    commission = arg1
    sub_c974c7ad = arg3
    sub_1b897950 = arg4
    emit 0xb8ee84c8: arg1 << 248, address(arg2), arg3 << 248, arg4
}

function sub_d68135d6(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        require msg.sender == adminAddress
        adminAddress = arg1
        if msg.sender != this.address:
            emit 0x3be77208: msg.sender, arg1
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            emit 0x3be77208: mem[calldata.size + 108 len 20], arg1
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require mem[calldata.size + 108 len 20] == adminAddress
        adminAddress = arg1
        if msg.sender != this.address:
            emit 0x3be77208: msg.sender, arg1
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit 0x3be77208: mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1
}

function initialize(address arg1, address arg2, uint8 arg3, uint8 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[15339 len 46], mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    require arg3 <= 50
    require arg4 <= 100
    adminAddress = arg1
    sub_7e312db2Address = arg1
    commission = arg3
    sub_c974c7ad = arg4
    sub_1b897950 = arg5
    stor55[address(arg1)] = 1
    stor53 = arg2
    if uint8(stor0.field_8):
        domainSeperator = sha3(sha3(code.data[15223 len 79]), sha3('EthereumAds'), sha3(49), address(this.address), chainid)
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 32, 46, code.data[15339 len 46], mem[338 len 18]
        if uint8(stor0.field_8):
            domainSeperator = sha3(sha3(code.data[15223 len 79]), sha3('EthereumAds'), sha3(49), address(this.address), chainid)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            domainSeperator = sha3(sha3(code.data[15223 len 79]), sha3('EthereumAds'), sha3(49), address(this.address), chainid)
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}

function sub_1c506920(?) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + 160 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + arg5.length + 160] = 0
    mem[(32 * arg3.length) + ceil32(arg5.length) + 192] = arg1
    mem[(32 * arg3.length) + ceil32(arg5.length) + 224] = arg2
    mem[(32 * arg3.length) + ceil32(arg5.length) + 288] = arg4
    mem[(32 * arg3.length) + ceil32(arg5.length) + 352] = arg6
    mem[(32 * arg3.length) + ceil32(arg5.length) + 256] = 192
    mem[(32 * arg3.length) + ceil32(arg5.length) + 384] = arg3.length
    mem[(32 * arg3.length) + ceil32(arg5.length) + 416 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg3.length) + ceil32(arg5.length) + 320] = (32 * arg3.length) + 224
    mem[(64 * arg3.length) + ceil32(arg5.length) + 416] = arg5.length
    mem[(64 * arg3.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[(32 * arg3.length) + ceil32(arg5.length) + 160] = arg5.length + (32 * arg3.length) + 256
        mem[arg5.length + (64 * arg3.length) + ceil32(arg5.length) + 448] = sha3(mem[(32 * arg3.length) + ceil32(arg5.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]])
        return memory
          from arg5.length + (64 * arg3.length) + ceil32(arg5.length) + 448
           len (127 * arg3.length) + 32
    mem[floor32(arg5.length) + (64 * arg3.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
    mem[(32 * arg3.length) + ceil32(arg5.length) + 160] = floor32(arg5.length) + (32 * arg3.length) + 288
    mem[floor32(arg5.length) + (64 * arg3.length) + ceil32(arg5.length) + 480] = sha3(mem[(32 * arg3.length) + ceil32(arg5.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]])
    return memory
      from floor32(arg5.length) + (64 * arg3.length) + ceil32(arg5.length) + 480
       len (127 * arg3.length) + 32
}

function sub_469464f4(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[ceil32(arg4.length) + (32 * arg5.length) + 160 len 3181] = code.data[11975 len 3181]
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3341] = arg1
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3373] = arg2
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3405] = arg3
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3437] = 160
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3501] = arg4.length
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3533 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(arg4.length) + (32 * arg5.length) + 3469] = arg4.length + 192
    mem[arg4.length + ceil32(arg4.length) + (32 * arg5.length) + 3533] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[arg4.length + ceil32(arg4.length) + (32 * arg5.length) + 3565 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    create contract with 0 wei
                    code: mem[ceil32(arg4.length) + (32 * arg5.length) + 160 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 3405]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg4.length) + (32 * arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    _103 = sha3(mem[ceil32(arg4.length) + (32 * arg5.length) + 160 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    emit 0x138679d2: arg2, address(arg3), Array(len=arg4.length, data=arg4[all]), address(create.new_address), arg1, _103
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
    if not arg1:
        revert with 0, 32, 37, code.data[15302 len 37], mem[ceil32(arg2.length) + 425 len 27]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(code.data[15156 len 67]), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 32, 33, code.data[15385 len 33], Mask(216, 0, arg4), mem[ceil32(arg2.length) + 866 len 4]
    require nonce[address(arg1)] + 1 >= nonce[address(arg1)]
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
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_36d0b05b(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    if msg.sender != this.address:
        if stor55[address(msg.sender)]:
            require arg3 <= 50
            if msg.sender != this.address:
                if arg2.length:
                    sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    sub_d1313384[address(arg1)].field_0 = 0
                    idx = 0
                    while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                        sub_d1313384[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1313384[address(arg1)].field_256 = arg3
                sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                mem[ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(arg2.length) + 224] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 224] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len arg2.length % 32])
            else:
                mem[ceil32(arg2.length) + 128] = calldata.size
                mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if arg2.length:
                    sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    sub_d1313384[address(arg1)].field_0 = 0
                    idx = 0
                    while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                        sub_d1313384[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1313384[address(arg1)].field_256 = arg3
                sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + 140 len 20]]))
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + 140 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256 len arg2.length % 32])
        else:
            if msg.sender != this.address:
                require msg.sender == arg1
                require arg3 <= 50
                if msg.sender != this.address:
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                    mem[ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + 224] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 224] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len arg2.length % 32])
                else:
                    mem[ceil32(arg2.length) + 128] = calldata.size
                    mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + 140 len 20]]))
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + 140 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256 len arg2.length % 32])
            else:
                mem[ceil32(arg2.length) + 128] = calldata.size
                mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                require mem[calldata.size + ceil32(arg2.length) + 140 len 20] == arg1
                require arg3 <= 50
                if msg.sender != this.address:
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256 len arg2.length % 32])
                else:
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]))
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288 len arg2.length % 32])
    else:
        mem[ceil32(arg2.length) + 128] = calldata.size
        mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if stor55[mem[calldata.size + ceil32(arg2.length) + 140 len 20]]:
            require arg3 <= 50
            if msg.sender != this.address:
                if arg2.length:
                    sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    sub_d1313384[address(arg1)].field_0 = 0
                    idx = 0
                    while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                        sub_d1313384[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1313384[address(arg1)].field_256 = arg3
                sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256 len arg2.length % 32])
            else:
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                if arg2.length:
                    sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    sub_d1313384[address(arg1)].field_0 = 0
                    idx = 0
                    while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                        sub_d1313384[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1313384[address(arg1)].field_256 = arg3
                sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]))
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288 len arg2.length % 32])
        else:
            if msg.sender != this.address:
                require msg.sender == arg1
                require arg3 <= 50
                if msg.sender != this.address:
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 256 len arg2.length % 32])
                else:
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]))
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288 len arg2.length % 32])
            else:
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg2.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                require mem[calldata.size + ceil32(arg2.length) + ceil32(calldata.size) + 172 len 20] == arg1
                require arg3 <= 50
                if msg.sender != this.address:
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[address(msg.sender)]))
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[address(msg.sender)]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 288 len arg2.length % 32])
                else:
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 192] = calldata.size
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                    if arg2.length:
                        sub_d1313384[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        sub_d1313384[address(arg1)].field_0 = 0
                        idx = 0
                        while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                            sub_d1313384[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    sub_d1313384[address(arg1)].field_256 = arg3
                    sub_d1313384[address(arg1)].field_264 = Mask(248, 0, bool(stor55[mem[calldata.size + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 204 len 20]]))
                    mem[ceil32(arg2.length) + (4 * ceil32(calldata.size)) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + (4 * ceil32(calldata.size)) + floor32(arg2.length) + 320] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + (4 * ceil32(calldata.size)) + floor32(arg2.length) + 320] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0x306e450e: arg3 << 248, bool(stor55[mem[calldata.size + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 204 len 20]]), arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + (4 * ceil32(calldata.size)) + floor32(arg2.length) + 320 len arg2.length % 32])
}



}
