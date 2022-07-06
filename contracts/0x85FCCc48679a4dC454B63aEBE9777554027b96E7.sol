contract main {




// =====================  Runtime code  =====================


#
#  - sub_57aaa57f(?)
#
const getChainId = chainid


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 domainSeperator;
mapping of uint256 nonce;
mapping of struct sub_d1313384;
address adminAddress;
address sub_706ce77fAddress;
address stor56;
array of uint256 stor57;
mapping of struct sub_097475f7;
mapping of struct sub_1601d0b5;
mapping of struct stor60;
mapping of uint8 stor61;

function sub_097475f7(?) {
    require calldata.size - 4 >= 32
    return bool(sub_097475f7[arg1].field_0), bool(sub_097475f7[arg1].field_8)
}

function sub_1601d0b5(?) {
    require calldata.size - 4 >= 32
    return sub_1601d0b5[arg1].field_0, sub_1601d0b5[arg1].field_256, bool(sub_1601d0b5[arg1].field_512)
}

function getDomainSeperator() {
    return domainSeperator
}

function sub_282499fc(?) {
    require calldata.size - 4 >= 32
    return bool(stor60[arg1])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function sub_380ef1ed(?) {
    require calldata.size - 4 >= 32
    return bool(stor61[arg1])
}

function sub_706ce77f(?) {
    return sub_706ce77fAddress
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
    return Array(len=sub_d1313384[arg1].length, data=mem[128 len sub_d1313384[arg1].length]), sub_d1313384[arg1].field_256
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
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

function sub_fd405d52(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.owner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender != this.address:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'NOT CAMPAIGN OWNER'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != address(ext_call.return_data[0]):
            revert with 0, 'NOT CAMPAIGN OWNER'
    require ext_code.size(arg1)
    call arg1.close() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_70148706(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.owner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender != this.address:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'NOT CAMPAIGN OWNER'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != address(ext_call.return_data[0]):
            revert with 0, 'NOT CAMPAIGN OWNER'
    require ext_code.size(arg1)
    call arg1.withdraw(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_e42e0ec0(?) {
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
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].validator() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        continue 
    return address(s)
}

function sub_2a13acaf(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if msg.sender != this.address:
        require msg.sender == adminAddress
    else:
        mem[(32 * arg2.length) + 128] = calldata.size
        mem[(32 * arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        require mem[calldata.size + (32 * arg2.length) + 140 len 20] == adminAddress
    stor57[address(arg1)] = arg2.length
    if not arg2.length:
        idx = 0
        while stor57[address(arg1)] > idx:
            stor57[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            stor57[address(arg1)][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor57[address(arg1)] > idx:
            stor57[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
}

function sub_8ed92343(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if msg.sender != this.address:
        require msg.sender == adminAddress
    else:
        mem[(32 * arg2.length) + 128] = calldata.size
        mem[(32 * arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        require mem[calldata.size + (32 * arg2.length) + 140 len 20] == adminAddress
    stor57[address(arg1)] = arg2.length
    if not arg2.length:
        idx = 0
        while stor57[address(arg1)] > idx:
            stor57[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            stor57[address(arg1)][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor57[address(arg1)] > idx:
            stor57[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
}

function sub_cbc920f5(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[arg3.length + 128] = 0
    require ext_code.size(arg1)
    staticcall arg1.owner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender != this.address:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'NOT CAMPAIGN OWNER'
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=arg3[all])
    else:
        mem[ceil32(arg3.length) + 128] = calldata.size
        mem[ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + ceil32(arg3.length) + 140 len 20] != address(ext_call.return_data[0]):
            revert with 0, 'NOT CAMPAIGN OWNER'
        require ext_code.size(arg1)
        call arg1.0xc75226ec with:
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        adminAddress = arg1
        sub_706ce77fAddress = arg2
        stor56 = arg2
        domainSeperator = sha3(sha3(code.data[23238 len 79]), sha3('LedgerAds'), sha3(49), address(this.address), chainid)
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[23354 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            adminAddress = arg1
            sub_706ce77fAddress = arg2
            stor56 = arg2
            domainSeperator = sha3(sha3(code.data[23238 len 79]), sha3('LedgerAds'), sha3(49), address(this.address), chainid)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            adminAddress = arg1
            sub_706ce77fAddress = arg2
            stor56 = arg2
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 32, 46, code.data[23354 len 46], mem[338 len 18]
            if uint8(stor0.field_8):
                domainSeperator = sha3(sha3(code.data[23238 len 79]), sha3('LedgerAds'), sha3(49), address(this.address), chainid)
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                domainSeperator = sha3(sha3(code.data[23238 len 79]), sha3('LedgerAds'), sha3(49), address(this.address), chainid)
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

function sub_ee81d260(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 4885] = code.data[18286 len 4885]
    mem[ceil32(arg1.length) + 5045] = arg2
    mem[ceil32(arg1.length) + 5077] = arg3
    mem[ceil32(arg1.length) + 5013] = 96
    mem[ceil32(arg1.length) + 5109] = arg1.length
    mem[ceil32(arg1.length) + 5141 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 18318 len -arg1.length + ceil32(arg1.length) + 4853], Array(len=address(arg2), data=arg3 << 248, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 5141] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 5173 len arg1.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 18318 len -arg1.length + ceil32(arg1.length) + 4853], Array(len=address(arg2), data=arg3 << 248, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 5141 len floor32(arg1.length) + -ceil32(arg1.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_097475f7[address(create.new_address)].field_0 = 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    emit 0x3aecb3a2: address(create.new_address), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2
    mem[ceil32(arg1.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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
        revert with 0, 32, 37, code.data[23317 len 37], mem[ceil32(arg2.length) + 425 len 27]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(code.data[23171 len 67]), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 32, 33, code.data[23400 len 33], Mask(216, 0, arg4), mem[ceil32(arg2.length) + 866 len 4]
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
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender != this.address:
        require msg.sender == arg1
        require arg3 <= 50
        mem[ceil32(arg2.length) + 128] = 96
        mem[ceil32(arg2.length) + 160] = arg3
        sub_d1313384[address(arg1)].field_0 = (2 * arg2.length) + 1
        if arg2.length <= 0:
            idx = 0
            while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                sub_d1313384[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            sub_d1313384[address(arg1)].field_0 = mem[128]
            s = 1
            idx = 160
            while arg2.length + 128 > idx:
                sub_d1313384[address(arg1)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, arg2.length - 1) >> 5) + 1
            while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                sub_d1313384[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_d1313384[address(arg1)].field_256 = arg3
        mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        emit 0xc50ab717: arg3, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len arg2.length % 32])
    else:
        mem[ceil32(arg2.length) + 128] = calldata.size
        mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + calldata.size + 160] = 0
        require mem[calldata.size + ceil32(arg2.length) + 140 len 20] == arg1
        require arg3 <= 50
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = 96
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 192] = arg3
        sub_d1313384[address(arg1)].field_0 = (2 * arg2.length) + 1
        if arg2.length <= 0:
            idx = 0
            while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                sub_d1313384[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            sub_d1313384[address(arg1)].field_0 = mem[128]
            s = 1
            idx = 160
            while arg2.length + 128 > idx:
                sub_d1313384[address(arg1)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, arg2.length - 1) >> 5) + 1
            while sub_d1313384[address(arg1)].length + 31 / 32 > idx:
                sub_d1313384[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_d1313384[address(arg1)].field_256 = arg3
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 224] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 224] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        emit 0xc50ab717: arg3, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(calldata.size) + floor32(arg2.length) + 224 len arg2.length % 32])
}

function sub_183f2587(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender != this.address:
        mem[ceil32(arg3.length) + (32 * arg4.length) + 160 len 3031] = code.data[15255 len 3031]
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3191] = msg.sender
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3223] = arg1
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3255] = arg2
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3287] = 160
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3351] = arg3.length
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3383 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + (32 * arg4.length) + 3319] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + (32 * arg4.length) + 3383] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + (32 * arg4.length) + 3415 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        create contract with 0 wei
                        code: mem[ceil32(arg3.length) + (32 * arg4.length) + 160 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 3255]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_1601d0b5[address(create.new_address)].field_512 = 1
        if msg.sender != this.address:
            emit 0xd40fb3e7: arg1, address(arg2), Array(len=arg3.length, data=arg3[all]), address(create.new_address), msg.sender
        else:
            mem[ceil32(arg3.length) + (32 * arg4.length) + 160] = calldata.size
            mem[ceil32(arg3.length) + (32 * arg4.length) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0xd40fb3e7: arg1, address(arg2), Array(len=arg3.length, data=arg3[all]), address(create.new_address), mem[calldata.size + ceil32(arg3.length) + (32 * arg4.length) + 172 len 20]
    else:
        mem[ceil32(arg3.length) + (32 * arg4.length) + 160] = calldata.size
        mem[ceil32(arg3.length) + (32 * arg4.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg3.length) + (32 * arg4.length) + calldata.size + 192] = 0
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192 len 3031] = code.data[15255 len 3031]
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3223] = mem[calldata.size + ceil32(arg3.length) + (32 * arg4.length) + 172 len 20]
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3255] = arg1
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3287] = arg2
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3319] = 160
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3383] = arg3.length
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3415 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3351] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3415] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 3447 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        create contract with 0 wei
                        code: mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 3255]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_1601d0b5[address(create.new_address)].field_512 = 1
        if msg.sender != this.address:
            emit 0xd40fb3e7: arg1, address(arg2), Array(len=arg3.length, data=arg3[all]), address(create.new_address), msg.sender
        else:
            mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = calldata.size
            mem[ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg3.length) + (32 * arg4.length) + (2 * ceil32(calldata.size)) + 256] = arg2
            mem[ceil32(arg3.length) + (32 * arg4.length) + (2 * ceil32(calldata.size)) + 288] = 96
            mem[ceil32(arg3.length) + (32 * arg4.length) + (2 * ceil32(calldata.size)) + 320] = arg3.length
            mem[ceil32(arg3.length) + (32 * arg4.length) + (2 * ceil32(calldata.size)) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            emit 0xd40fb3e7: arg1, address(arg2), Array(len=arg3.length, data=arg3[all]), address(create.new_address), mem[calldata.size + ceil32(arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 204 len 20]
    return address(create.new_address)
}



}
