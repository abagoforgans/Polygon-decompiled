contract main {




// =====================  Runtime code  =====================


address ceoAddress;
uint8 paused; offset 160
address workerAddress;
uint256 stor2;
mapping of uint256 nonce;
uint256 sub_0bacdb18;
uint256 sub_e53a0860;
uint8 sub_bd891828;
uint8 sub_86608326; offset 8
address distributionTokenAddress; offset 16
uint256 stor6; offset 8
mapping of uint8 stor7;
mapping of uint256 sub_39c2a538;
mapping of uint256 sub_e726c3d7;
mapping of uint256 sub_dd3e79d9;
mapping of uint256 sub_360e8ead;
mapping of address sub_d2c60a0d;
uint256 sub_f6547b7f;
uint256 sub_e9f259df;

function ceoAddress() {
    return ceoAddress
}

function sub_0bacdb18(?) {
    return sub_0bacdb18
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function sub_360e8ead(?) {
    require calldata.size - 4 >= 32
    return sub_360e8ead[arg1]
}

function sub_39c2a538(?) {
    require calldata.size - 4 >= 32
    return sub_39c2a538[arg1]
}

function paused() {
    return bool(paused)
}

function sub_86608326(?) {
    return bool(sub_86608326)
}

function sub_8ceb38de(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function distributionToken() {
    return distributionTokenAddress
}

function sub_bd891828(?) {
    return bool(sub_bd891828)
}

function workerAddress() {
    return workerAddress
}

function sub_d2c60a0d(?) {
    require calldata.size - 4 >= 32
    return sub_d2c60a0d[arg1]
}

function sub_dd3e79d9(?) {
    require calldata.size - 4 >= 32
    return sub_dd3e79d9[arg1]
}

function sub_e53a0860(?) {
    return sub_e53a0860
}

function sub_e726c3d7(?) {
    require calldata.size - 4 >= 64
    return sub_e726c3d7[arg1][arg2]
}

function sub_e9f259df(?) {
    return sub_e9f259df
}

function sub_f6547b7f(?) {
    return sub_f6547b7f
}

function _fallback() payable {
    revert
}

function sub_4d266dd7(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_e53a0860 = arg1
}

function sub_9ab24e42(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    stor7[address(arg1)] = 0
}

function sub_b4bdeec8(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    stor7[address(arg1)] = 1
}

function sub_50216272(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_bd891828 = uint8(arg1)
}

function sub_c568e188(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    stor6 = Mask(248, 0, arg1)
}

function sub_1c2af4df(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_f6547b7f = arg1
    emit 0xd73ca312: arg1
}

function sub_f3b75613(?) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_0bacdb18 = arg1
    emit 0xdb3f0b95: arg1
}

function sub_4fe8681f(?) {
    require calldata.size - 4 >= 96
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_e726c3d7[address(arg1)][address(arg2)] = arg3
}

function changeDistributionToken(address arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    distributionTokenAddress = arg1
}

function sub_3787f89f(?) {
    require calldata.size - 4 >= 64
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    sub_dd3e79d9[arg1] = arg2
    emit 0xa2132181: arg1, arg2
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
    paused = 1
    emit Paused()
}

function unpause() {
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    if not paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x68416363657373436f6e74726f6c3a2063757272656e6c7479206e6f74207061757365,
                    mem[199 len 29]
    paused = 0
    emit Unpaused()
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    if ceoAddress != msg.sender:
        revert with 0, ')AccessControl: CEO access denie'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64416363657373436f6e74726f6c3a20696e76616c69642043454f20616464726573,
                    mem[198 len 30]
    ceoAddress = arg1
    emit CEOSet(arg1);
}

function distributeTokens(address arg1) {
    require calldata.size - 4 >= 32
    if bool(sub_86608326) != 1:
        revert with 0, 'Pointer: distribution disabled'
    sub_39c2a538[address(arg1)] = 0
    require ext_code.size(distributionTokenAddress)
    call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), sub_39c2a538[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_39c2a538[address(arg1)]
}

function sub_324a6d5b(?) {
    require calldata.size - 4 >= 64
    if workerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73416363657373436f6e74726f6c3a20776f726b6572206163636573732064656e6965,
                    mem[199 len 29]
    if sub_d2c60a0d[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64506f696e7465723a20706c6179657220616c726561647920616666696c69617465,
                    mem[198 len 30]
    sub_d2c60a0d[address(arg2)] = arg1
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
    emit 0x54841e99: arg1
}

function sub_c0ff11c2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if bool(sub_86608326) != 1:
            revert with 0, 'Pointer: distribution disabled'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        sub_39c2a538[mem[(32 * idx) + 140 len 20]] = 0
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = sub_39c2a538[mem[0]]
        require ext_code.size(distributionTokenAddress)
        call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], sub_39c2a538[mem[0]]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function getMyTokens() {
    if msg.sender != this.address:
        if bool(sub_86608326) != 1:
            revert with 0, 'Pointer: distribution disabled'
        sub_39c2a538[address(msg.sender)] = 0
        require ext_code.size(distributionTokenAddress)
        call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_39c2a538[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return sub_39c2a538[address(msg.sender)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if bool(sub_86608326) != 1:
        revert with 0, 'Pointer: distribution disabled'
    sub_39c2a538[mem[calldata.size + 108 len 20]] = 0
    require ext_code.size(distributionTokenAddress)
    call distributionTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[calldata.size + 108 len 20], sub_39c2a538[mem[calldata.size + 108 len 20]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_39c2a538[mem[calldata.size + 108 len 20]]
}

function sub_3be254ad(?) {
    require calldata.size - 4 >= 96
    if not stor7[address(msg.sender)]:
        return 0
    if not sub_bd891828:
        return 0
    if sub_360e8ead[0] + 100 < 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_e726c3d7[msg.sender][address(arg3)]
    if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return 0, 0, sub_360e8ead[0]
    if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[0] + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
    if sub_d2c60a0d[address(arg1)]:
        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
            if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
    return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
           0,
           sub_360e8ead[0]
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
    mem[ceil32(arg2.length) + 770] = arg5
    mem[ceil32(arg2.length) + 802] = arg3
    mem[ceil32(arg2.length) + 834] = arg4
    signer = erecover(sha3(0, stor2, sha3(sha3(0x734d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature'
    if address(signer) != arg1:
        revert with 0, 
                    32,
                    33,
                    0x775369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[ceil32(arg2.length) + 866 len 4]
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
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
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_7d233970(?) {
    require calldata.size - 4 >= 128
    if arg4 <= 0:
        revert with 0, 'dgPointer: _playersCount error'
    if not stor7[address(msg.sender)]:
        return 0
    if not sub_bd891828:
        return 0
    if 1 == arg4:
        if sub_360e8ead[0] + 100 < 100:
            revert with 0, 'SafeMath: addition overflow'
        if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_e726c3d7[msg.sender][address(arg3)]
        if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
            if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return 0, 0, sub_360e8ead[0]
        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[0] + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
        if sub_d2c60a0d[address(arg1)]:
            if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
        return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
               0,
               sub_360e8ead[0]
    if arg4 > 0:
        if not sub_dd3e79d9[arg4]:
            if sub_0bacdb18 + 100 < 100:
                revert with 0, 'SafeMath: addition overflow'
            if sub_360e8ead[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_e726c3d7[msg.sender][address(arg3)]
            if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
                if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, sub_0bacdb18, sub_360e8ead[0]
            if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[0] + sub_0bacdb18 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
            if sub_d2c60a0d[address(arg1)]:
                if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                    if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
            return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
                   sub_0bacdb18,
                   sub_360e8ead[0]
    if sub_dd3e79d9[arg4] + 100 < 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_360e8ead[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_e726c3d7[msg.sender][address(arg3)]
    if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return 0, sub_dd3e79d9[arg4], sub_360e8ead[0]
    if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[0] + sub_dd3e79d9[arg4] + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
    if sub_d2c60a0d[address(arg1)]:
        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
            if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
    return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[0] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
           sub_dd3e79d9[arg4],
           sub_360e8ead[0]
}

function sub_06804295(?) {
    require calldata.size - 4 >= 160
    if arg4 <= 0:
        revert with 0, 'dgPointer: _playersCount error'
    if not stor7[address(msg.sender)]:
        return 0
    if not sub_bd891828:
        return 0
    if 1 == arg4:
        if arg5 > 0:
            if not sub_360e8ead[arg5]:
                if sub_e53a0860 + 100 < 100:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_e726c3d7[msg.sender][address(arg3)]
                if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
                    if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return 0, 0, sub_e53a0860
                if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_e53a0860 + 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
                if sub_d2c60a0d[address(arg1)]:
                    if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                        if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
                return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
                       0,
                       sub_e53a0860
        if sub_360e8ead[arg5] + 100 < 100:
            revert with 0, 'SafeMath: addition overflow'
        if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_e726c3d7[msg.sender][address(arg3)]
        if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
            if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return 0, 0, sub_360e8ead[arg5]
        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[arg5] + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
        if sub_d2c60a0d[address(arg1)]:
            if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
        return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
               0,
               sub_360e8ead[arg5]
    if arg4 > 0:
        if not sub_dd3e79d9[arg4]:
            if arg5 > 0:
                if not sub_360e8ead[arg5]:
                    if sub_0bacdb18 + 100 < 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_e53a0860 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_e726c3d7[msg.sender][address(arg3)]
                    if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
                        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return 0, sub_0bacdb18, sub_e53a0860
                    if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_e53a0860 + sub_0bacdb18 + 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
                    if sub_d2c60a0d[address(arg1)]:
                        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                            if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
                    return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
                           sub_0bacdb18,
                           sub_e53a0860
            if sub_0bacdb18 + 100 < 100:
                revert with 0, 'SafeMath: addition overflow'
            if sub_360e8ead[arg5] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_e726c3d7[msg.sender][address(arg3)]
            if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
                if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, sub_0bacdb18, sub_360e8ead[arg5]
            if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[arg5] + sub_0bacdb18 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
            if sub_d2c60a0d[address(arg1)]:
                if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                    if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
            return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_0bacdb18 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
                   sub_0bacdb18,
                   sub_360e8ead[arg5]
    if arg5 > 0:
        if not sub_360e8ead[arg5]:
            if sub_dd3e79d9[arg4] + 100 < 100:
                revert with 0, 'SafeMath: addition overflow'
            if sub_e53a0860 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_e726c3d7[msg.sender][address(arg3)]
            if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
                if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, sub_dd3e79d9[arg4], sub_e53a0860
            if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_e53a0860 + sub_dd3e79d9[arg4] + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
            if sub_d2c60a0d[address(arg1)]:
                if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
                    if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
            return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_e53a0860 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
                   sub_dd3e79d9[arg4],
                   sub_e53a0860
    if sub_dd3e79d9[arg4] + 100 < 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_360e8ead[arg5] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e726c3d7[msg.sender][address(arg3)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_e726c3d7[msg.sender][address(arg3)]
    if not arg2 / sub_e726c3d7[msg.sender][address(arg3)]:
        if sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return 0, sub_dd3e79d9[arg4], sub_360e8ead[arg5]
    if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / arg2 / sub_e726c3d7[msg.sender][address(arg3)] != sub_360e8ead[arg5] + sub_dd3e79d9[arg4] + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100) + sub_39c2a538[address(arg1)] < sub_39c2a538[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_39c2a538[address(arg1)] += (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100
    if sub_d2c60a0d[address(arg1)]:
        if (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100:
            if sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 != sub_f6547b7f:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_39c2a538[stor12[address(arg1)]] += sub_f6547b7f * (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100 / 100
    return (100 * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_360e8ead[arg5] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) + (sub_dd3e79d9[arg4] * arg2 / sub_e726c3d7[msg.sender][address(arg3)]) / 100, 
           sub_dd3e79d9[arg4],
           sub_360e8ead[arg5]
}



}
