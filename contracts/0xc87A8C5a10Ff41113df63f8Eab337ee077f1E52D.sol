contract main {




// =====================  Runtime code  =====================


address ceoAddress;
uint8 paused; offset 160
uint128 stor1; offset 160
address workerAddress;
array of struct sub_08262217;
mapping of struct settings;
mapping of uint256 sub_c70620b5;
mapping of uint128 sub_71da23e9;
array of struct sub_2c613a14;
uint256 tail;
uint256 stor8;
mapping of uint256 nonce;
mapping of uint256 sub_65f6517a;
mapping of uint256 sub_6431930f;

function sub_08262217(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_08262217.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'sub_08262217', 2) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'sub_08262217', 2) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'sub_08262217', 2) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_08262217[arg1].field_0, 
           Array(len=stor[(2 * arg1) + ('name', 'sub_08262217', 2) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'sub_08262217', 2) + 1].length])
}

function ceoAddress() {
    return ceoAddress
}

function tail() {
    return tail
}

function sub_2c613a14(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2c613a14.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'sub_2c613a14', 6) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'sub_2c613a14', 6) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'sub_2c613a14', 6) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_2c613a14[arg1].field_0, 
           Array(len=stor[(2 * arg1) + ('name', 'sub_2c613a14', 6) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'sub_2c613a14', 6) + 1].length])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function getTokenAddress(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2c613a14.length
    return sub_2c613a14[2 * uint8(arg1)].field_0
}

function paused() {
    return bool(paused)
}

function sub_6431930f(?) {
    require calldata.size - 4 >= 32
    return sub_6431930f[arg1]
}

function sub_65f6517a(?) {
    require calldata.size - 4 >= 32
    return sub_65f6517a[arg1]
}

function sub_6ca489fb(?) {
    return stor[(2 * uint8(arg1)) + ('name', 'sub_2c613a14', 6) + 1][0 len stor[(2 * uint8(arg1)) + ('name', 'sub_2c613a14', 6) + 1].length].field_0
}

function sub_71da23e9(?) {
    require calldata.size - 4 >= 32
    require settings[address(msg.sender)].field_8 <= 2
    if not settings[address(msg.sender)].field_8:
        revert with 0, 'Treasury: game is not declared!'
    return sub_71da23e9[stor3[address(msg.sender)].field_0][arg1 << 248]
}

function sub_ae260ac0(?) {
    require calldata.size - 4 >= 64
    require arg1 < sub_08262217.length
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    if not settings[stor2[2 * uint8(arg1)].field_0].field_8:
        revert with 0, 'Treasury: game is not declared!'
    return sub_71da23e9[arg1 << 248][arg2 << 248]
}

function sub_c70620b5(?) {
    require calldata.size - 4 >= 32
    require settings[address(msg.sender)].field_8 <= 2
    if not settings[address(msg.sender)].field_8:
        revert with 0, 'Treasury: game is not declared!'
    return sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248]
}

function workerAddress() {
    return workerAddress
}

function settings(address arg1) {
    require calldata.size - 4 >= 32
    require settings[arg1].field_8 <= 2
    return settings[arg1].field_0, settings[arg1].field_8
}

function sub_f8ce7b4b(?) {
    require calldata.size - 4 >= 64
    return sub_c70620b5[arg1 << 248][arg2 << 248]
}

function _fallback() payable {
    revert
}

function isEnabled(address arg1) {
    require calldata.size - 4 >= 32
    return (sub_65f6517a[address(arg1)] > block.timestamp)
}

function sub_7749bc11(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    tail = arg1
}

function sub_3de6f379(?) {
    require calldata.size - 4 >= 64
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_2c613a14.length
    sub_2c613a14[2 * uint8(arg1)].field_0 = arg2
}

function sub_8c79ba3a(?) {
    require calldata.size - 4 >= 32
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    sub_65f6517a[address(arg1)] = block.timestamp
}

function pause() {
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    if paused:
        revert with 0, 'AccessControl: currently paused'
    stor1 = 1
    emit Paused()
}

function sub_c7646ebb(?) {
    require calldata.size - 4 >= 96
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_08262217.length
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    if not settings[stor2[2 * uint8(arg1)].field_0].field_8:
        revert with 0, 'Treasury: game is not declared!'
    sub_71da23e9[arg1 << 248][arg2 << 248] = arg3
}

function unpause() {
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    if not paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x68416363657373436f6e74726f6c3a2063757272656e6c7479206e6f74207061757365,
                    mem[199 len 29]
    stor1 = 0
    emit Unpaused()
}

function enableGame(uint8 arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_08262217.length
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    if settings[stor2[2 * uint8(arg1)].field_0].field_8 != 2:
        revert with 0, 'Treasury: game must be disabled!'
    require arg1 < sub_08262217.length
    settings[stor2[2 * uint8(arg1)].field_0].field_8 = 1
}

function disableGame(uint8 arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_08262217.length
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    if settings[stor2[2 * uint8(arg1)].field_0].field_8 != 1:
        revert with 0, 'Treasury: game must be enabled!'
    require arg1 < sub_08262217.length
    settings[stor2[2 * uint8(arg1)].field_0].field_8 = 2
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21416363657373436f6e74726f6c3a20696e76616c69642043454f20616464726573,
                    mem[198 len 30]
    ceoAddress = arg1
    emit CEOSet(ceoAddress);
}

function sub_f887cf00(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_2c613a14.length
    require ext_code.size(sub_2c613a14[2 * uint8(arg2)].field_0)
    staticcall sub_2c613a14[2 * uint8(arg2)].field_0.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_65afb44f(?) {
    require calldata.size - 4 >= 32
    require settings[address(msg.sender)].field_8 <= 2
    if settings[address(msg.sender)].field_8 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6454726561737572793a206163746976652d67616d65206e6f742070726573656e,
                    mem[197 len 31]
    if sha3(arg1) != tail:
        revert with 0, 'hash-chain: wrong parent'
    tail = arg1
    return 1
}

function sub_f342336f(?) {
    require calldata.size - 4 >= 96
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg2 < sub_2c613a14.length
    if arg3 > sub_c70620b5[arg1 << 248][arg2 << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_c70620b5[arg1 << 248][arg2 << 248] -= arg3
    require ext_code.size(sub_2c613a14[2 * uint8(arg2)].field_0)
    call sub_2c613a14[2 * uint8(arg2)].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ceoAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setWorker(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe416363657373436f6e74726f6c3a20696e76616c696420776f726b657220616464726573,
                    mem[201 len 27]
    if ceoAddress != msg.sender:
        if workerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe416363657373436f6e74726f6c3a20696e76616c696420776f726b657220616464726573,
                        mem[201 len 27]
    workerAddress = arg1
    emit 0x54841e99: workerAddress
}

function sub_7cb8e8cd(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        sub_6431930f[address(msg.sender)] = arg1
        if block.timestamp + sub_6431930f[address(msg.sender)] < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_65f6517a[address(msg.sender)] = block.timestamp + sub_6431930f[address(msg.sender)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        sub_6431930f[mem[calldata.size + 108 len 20]] = arg1
        if block.timestamp + sub_6431930f[address(mem[calldata.size + 96])] < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_65f6517a[address(mem[calldata.size + 96])] = block.timestamp + sub_6431930f[address(mem[calldata.size + 96])]
}

function addToken(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    sub_2c613a14.length++
    sub_2c613a14[sub_2c613a14.length].field_0 = arg1
    if arg2.length:
        stor[sha3((2 * sub_2c613a14.length) + ('name', 'sub_2c613a14', 6) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        sub_2c613a14[sub_2c613a14.length].field_256 = 0
        idx = 0
        while stor[(2 * sub_2c613a14.length) + ('name', 'sub_2c613a14', 6) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * sub_2c613a14.length) + ('name', 'sub_2c613a14', 6) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_d8453172(?) {
    require calldata.size - 4 >= 96
    if arg1 >= sub_08262217.length:
        revert with 0, 'Treasury: unregistered gameIndex'
    if arg2 >= sub_2c613a14.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7354726561737572793a20756e7265676973746572656420746f6b656e496e6465,
                    mem[197 len 31]
    if sub_c70620b5[arg1 << 248][arg2 << 248] + arg3 < sub_c70620b5[arg1 << 248][arg2 << 248]:
        revert with 0, 'SafeMath: addition overflow'
    sub_c70620b5[arg1 << 248][arg2 << 248] += arg3
    require ext_code.size(sub_2c613a14[2 * uint8(arg2)].field_0)
    call sub_2c613a14[2 * uint8(arg2)].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9122c239(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_2c613a14.length
    require ext_code.size(sub_2c613a14[2 * uint8(arg1)].field_0)
    staticcall sub_2c613a14[2 * uint8(arg1)].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < sub_08262217.length:
        mem[0] = arg1
        mem[32] = sha3(settings[stor2[idx].field_0].field_0, 4)
        sub_c70620b5[stor3[stor2[idx].field_0].field_0][arg1 << 248] = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_2c613a14[2 * uint8(arg1)].field_0)
    call sub_2c613a14[2 * uint8(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ceoAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_70b5e636(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require settings[address(arg1)].field_8 <= 2
    if settings[address(arg1)].field_8:
        revert with 0, 'Treasury: game already declared!'
    sub_08262217.length++
    sub_08262217[sub_08262217.length].field_0 = arg1
    if arg2.length:
        stor[sha3((2 * sub_08262217.length) + ('name', 'sub_08262217', 2) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        sub_08262217[sub_08262217.length].field_256 = 0
        idx = 0
        while stor[(2 * sub_08262217.length) + ('name', 'sub_08262217', 2) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * sub_08262217.length) + ('name', 'sub_08262217', 2) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    settings[address(arg1)].field_0 = uint8(sub_08262217.length - 1)
    if arg3 == 1:
        settings[address(arg1)].field_8 = 1
    else:
        settings[address(arg1)].field_8 = 2
}

function updateGameAddress(uint8 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_08262217.length
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    if not settings[stor2[2 * uint8(arg1)].field_0].field_8:
        revert with 0, 'Treasury: game is not declared!'
    require settings[address(arg2)].field_8 <= 2
    if settings[address(arg2)].field_8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6c54726561737572793a2067616d652077697468206e6577206164647265737320616c7265616479206465636c61726564,
                    mem[213 len 15]
    require arg1 < sub_08262217.length
    settings[address(arg2)].field_0 = settings[stor2[2 * uint8(arg1)].field_0].field_0
    require settings[stor2[2 * uint8(arg1)].field_0].field_8 <= 2
    settings[address(arg2)].field_8 = settings[stor2[2 * uint8(arg1)].field_0].field_8
    require arg1 < sub_08262217.length
    settings[stor2[2 * uint8(arg1)].field_0].field_0 = 0
    settings[stor2[2 * uint8(arg1)].field_0].field_8 = 0
    sub_08262217[2 * uint8(arg1)].field_0 = arg2
}

function sub_0ea4a4fa(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require arg1 < sub_2c613a14.length
    require ext_code.size(sub_2c613a14[2 * uint8(arg1)].field_0)
    staticcall sub_2c613a14[2 * uint8(arg1)].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74546f6b656e436f6e74726f6c6c65723a2062616c616e63652064657465637465,
                    mem[197 len 31]
    require arg1 < sub_2c613a14.length
    sub_2c613a14[2 * uint8(arg1)].field_0 = 0
    sub_2c613a14[2 * uint8(arg1)].field_256 = 0
    if 31 < stor[(2 * uint8(arg1)) + ('name', 'sub_2c613a14', 6) + 1].length:
        idx = 0
        while stor[(2 * uint8(arg1)) + ('name', 'sub_2c613a14', 6) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(arg1)) + ('name', 'sub_2c613a14', 6) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_31297992(?) {
    require calldata.size - 4 >= 96
    if sub_65f6517a[address(arg2)] <= block.timestamp:
        revert with 0, 'Treasury: disabled account!'
    require settings[address(msg.sender)].field_8 <= 2
    if not settings[address(msg.sender)].field_8:
        revert with 0, 'Treasury: game is not declared!'
    require arg1 < sub_2c613a14.length
    if arg3 > sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248] -= arg3
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call sub_2c613a14[2 * uint8(arg1)].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    return 1
}

function sub_0e363e3b(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require uint8(cd[4]) < sub_08262217.length
    if not ('cd', 36).length:
        sub_08262217[2 * uint8(cd[4])].field_256 = 0
        idx = 0
        while stor[(2 * uint8(cd[4])) + ('name', 'sub_08262217', 2) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(cd[4])) + ('name', 'sub_08262217', 2) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_08262217[2 * uint8(cd[4])].field_256 = (2 * ('cd', 36).length) + 1
        s = 0
        idx = cd[36] + 36
        while cd[36] + ('cd', 36).length + 36 > idx:
            stor[s + sha3((2 * uint8(cd[4])) + ('name', 'sub_08262217', 2) + 1)].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
        while stor[(2 * uint8(cd[4])) + ('name', 'sub_08262217', 2) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(cd[4])) + ('name', 'sub_08262217', 2) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_32b4a594(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    require uint8(cd[4]) < sub_2c613a14.length
    if not ('cd', 36).length:
        sub_2c613a14[2 * uint8(cd[4])].field_256 = 0
        idx = 0
        while stor[(2 * uint8(cd[4])) + ('name', 'sub_2c613a14', 6) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(cd[4])) + ('name', 'sub_2c613a14', 6) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_2c613a14[2 * uint8(cd[4])].field_256 = (2 * ('cd', 36).length) + 1
        s = 0
        idx = cd[36] + 36
        while cd[36] + ('cd', 36).length + 36 > idx:
            stor[s + sha3((2 * uint8(cd[4])) + ('name', 'sub_2c613a14', 6) + 1)].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
        while stor[(2 * uint8(cd[4])) + ('name', 'sub_2c613a14', 6) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(cd[4])) + ('name', 'sub_2c613a14', 6) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function deleteGame(uint8 arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, 'AccessControl: CEO access denied'
    idx = 0
    while uint8(idx) < sub_2c613a14.length:
        if sub_c70620b5[arg1 << 248][idx << 248] > sub_c70620b5[arg1 << 248][idx << 248]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c70620b5[arg1 << 248][idx << 248] = 0
        mem[100] = ceoAddress
        mem[132] = sub_c70620b5[arg1 << 248][idx << 248]
        require ext_code.size(sub_2c613a14[2 * uint8(idx)].field_0)
        call sub_2c613a14[2 * uint8(idx)].field_0.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ceoAddress, sub_c70620b5[arg1 << 248][idx << 248]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_c70620b5[arg1 << 248][idx << 248] = 0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1 << 248, 5)
        sub_71da23e9[arg1 << 248][idx << 248] = 0
        idx = idx + 1
        continue 
    require arg1 < sub_08262217.length
    sub_08262217[2 * uint8(arg1)].field_0 = 0
    sub_08262217[2 * uint8(arg1)].field_256 = 0
    if 31 < stor[(2 * uint8(arg1)) + ('name', 'sub_08262217', 2) + 1].length:
        idx = 0
        while stor[(2 * uint8(arg1)) + ('name', 'sub_08262217', 2) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * uint8(arg1)) + ('name', 'sub_08262217', 2) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_41d4c74f(?) {
    require calldata.size - 4 >= 96
    if sub_65f6517a[address(arg2)] <= block.timestamp:
        if sub_65f6517a[address(arg2)]:
            revert with 0, 'Treasury: disabled account!'
    require settings[address(msg.sender)].field_8 <= 2
    if not settings[address(msg.sender)].field_8:
        revert with 0, 'Treasury: game is not declared!'
    require arg1 < sub_2c613a14.length
    if sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248] + arg3 < sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248]:
        revert with 0, 'SafeMath: addition overflow'
    sub_c70620b5[stor3[address(msg.sender)].field_0][arg1 << 248] += arg3
    mem[324 len 96] = Mask(32, 224, sha3(0x787472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg3) >> 32
    mem[448 len 4] = uint32(arg3)
    call sub_2c613a14[2 * uint8(arg1)].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x645472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[428 len 20],
                        uint32(arg3),
                        mem[452 len 4]
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x645472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 429 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            36,
                            0x645472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 429 len 28]
    if sub_6431930f[address(msg.sender)] > 0:
        if block.timestamp + sub_6431930f[address(msg.sender)] < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_65f6517a[address(arg2)] = block.timestamp + sub_6431930f[address(msg.sender)]
    else:
        if block.timestamp + (12 * 3600) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_65f6517a[address(arg2)] = block.timestamp + (12 * 3600)
    return 1
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 770] = arg5
    mem[ceil32(arg2.length) + 802] = arg3
    mem[ceil32(arg2.length) + 834] = arg4
    signer = erecover(sha3(0, stor8, sha3(sha3(0x294d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x645369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[ceil32(arg2.length) + 866 len 4]
    mem[ceil32(arg2.length) + 770 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 802 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790] = address(msg.sender)
    mem[arg2.length + ceil32(arg2.length) + 810 len floor32(arg2.length + 40)] = call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len (arg2.length % 32) + 20], Mask(8 * floor32(arg2.length + 40) + -arg2.length - 20, -(8 * floor32(arg2.length + 40) + -arg2.length - 20) + 160, msg.sender) >> -(8 * floor32(arg2.length + 40) + -arg2.length - 20) + 160
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + 842 len arg2.length + 40 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + -arg2.length + 762 len arg2.length + 40 % 32]
    call this.address.mem[ceil32(arg2.length) + 770 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 774 len arg2.length + 16], Mask(8 * floor32(arg2.length + 40) + -arg2.length - 20, -(8 * floor32(arg2.length + 40) + -arg2.length - 20) + 160, msg.sender) >> -(8 * floor32(arg2.length + 40) + -arg2.length - 20) + 160, mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 40) + 810 len arg2.length + -floor32(arg2.length + 40) + 40]
    if return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        39,
                        0x2954726561737572793a2046756e6374696f6e2063616c6c206e6f74207375636365737366756c,
                        mem[arg2.length + ceil32(arg2.length) + ceil32(return_data.size) + 918 len 25]
        nonce[address(arg1)]++
        emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not ext_call.success:
        revert with 0, 
                    32,
                    39,
                    0x2954726561737572793a2046756e6374696f6e2063616c6c206e6f74207375636365737366756c,
                    mem[arg2.length + ceil32(arg2.length) + 917 len 25]
    nonce[address(arg1)]++
    mem[arg2.length + ceil32(arg2.length) + 842] = msg.sender
    mem[arg2.length + ceil32(arg2.length) + 874] = 96
    mem[arg2.length + ceil32(arg2.length) + 906] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 938 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit MetaTransactionExecuted(address arg1, address arg2, bytes arg3):
                                     address(arg1),
                                     mem[arg2.length + ceil32(arg2.length) + 842 len floor32(arg2.length + 40) - (arg2.length + 40 % 32)],
                                     mem[ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + -arg2.length + 762 len arg2.length + 40 % 32],
                                     mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 40) + 842 len arg2.length + -floor32(arg2.length + 40) + 96],
    else:
        mem[floor32(arg2.length) + arg2.length + ceil32(arg2.length) + 938] = mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 970 len arg2.length % 32]
        emit MetaTransactionExecuted(address arg1, address arg2, bytes arg3):
                                     address(arg1),
                                     mem[arg2.length + ceil32(arg2.length) + 842 len floor32(arg2.length + 40) - (arg2.length + 40 % 32)],
                                     mem[ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + -arg2.length + 762 len arg2.length + 40 % 32],
                                     mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 40) + 842 len floor32(arg2.length) + -floor32(arg2.length + 40) + 128],
    mem[arg2.length + ceil32(arg2.length) + 842] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 874 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return Array(len=mem[arg2.length + ceil32(arg2.length) + 842 len floor32(arg2.length + 40) - (arg2.length + 40 % 32)], data=mem[ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + -arg2.length + 762 len arg2.length + -floor32(arg2.length + 40) + (arg2.length + 40 % 32) + 32]), 
    mem[floor32(arg2.length) + arg2.length + ceil32(arg2.length) + 874] = mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 906 len arg2.length % 32]
    return Array(len=mem[arg2.length + ceil32(arg2.length) + 842 len floor32(arg2.length + 40) - (arg2.length + 40 % 32)], data=mem[ceil32(arg2.length) + floor32(arg2.length + 40) + -(arg2.length + 40 % 32) + -arg2.length + 762 len arg2.length + 40 % 32], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 40) + 842 len floor32(arg2.length) + -floor32(arg2.length + 40) + 64]), 
}



}
