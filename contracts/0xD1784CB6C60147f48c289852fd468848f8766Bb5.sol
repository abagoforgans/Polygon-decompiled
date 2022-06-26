contract main {




// =====================  Runtime code  =====================


const getChainID = 137


mapping of uint256 nonce;
address creatorAddress;
address oracleAddress;
uint256 tournamentId;
uint8 sub_1fc6f61e;
array of address players;
mapping of uint256 stor7;
mapping of uint256 stor8;
uint256 sub_f406b51f;
uint256 exchangeRate;
mapping of uint256 sub_805529e8;
address stor12;
address stor13;

function creator() {
    return creatorAddress
}

function sub_1fc6f61e(?) {
    require sub_1fc6f61e <= 2
    return sub_1fc6f61e
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function exchangeRate() {
    return exchangeRate
}

function sub_805529e8(?) {
    require calldata.size - 4 >= 32
    return sub_805529e8[arg1]
}

function oracleAddress() {
    return oracleAddress
}

function sub_f406b51f(?) {
    return sub_f406b51f
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1]
}

function tournamentId() {
    return tournamentId
}

function WithdrawGains() {
  stop
}

function _fallback() payable {
    revert
}

function setOracleAddress(address arg1) {
    require calldata.size - 4 >= 32
    oracleAddress = arg1
}

function eTokenBalance() {
    require ext_code.size(stor13)
    staticcall stor13.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function underlyingBalance() {
    require ext_code.size(stor13)
    call stor13.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_293537b3(?) {
    require ext_code.size(stor13)
    staticcall stor13.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function verify(address arg1, uint256 arg2, uint256 arg3, bytes arg4, bytes32 arg5, bytes32 arg6, uint8 arg7) {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = address(this.address)
    mem[ceil32(arg4.length) + 212] = arg3
    mem[ceil32(arg4.length) + 244 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 276 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + 128] = arg4.length + 84
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])), arg7 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature'
    return (arg1 == address(signer))
}

function supplyErc20ToCompound(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor13)
    call stor13.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 35, 0xfe45786368616e6765205261746520287363616c65642075702062792031653138293a, mem[227 len 29]
    require ext_code.size(stor13)
    staticcall stor13.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 32, 'Supply Rate: (scaled up by 1e18)'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f406b51f = ext_call.return_data[0]
    return sub_f406b51f
}

function sub_622b60b4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor12)
    call stor12.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 35, 0xfe45786368616e6765205261746520287363616c65642075702062792031653138293a, mem[227 len 29]
    exchangeRate = ext_call.return_data[0]
    require ext_code.size(stor13)
    staticcall stor13.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 32, 'Supply Rate: (scaled up by 1e18)'
    require ext_code.size(stor12)
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor13, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require exchangeRate
    sub_805529e8[address(msg.sender)] = 10^12 * arg1 / exchangeRate
    stor8[address(msg.sender)] += arg1
    stor7[address(msg.sender)]++
    return ext_call.return_data[0]
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = nonce[address(arg1)]
    mem[ceil32(arg2.length) + 192] = address(this.address)
    mem[ceil32(arg2.length) + 212] = 137
    mem[ceil32(arg2.length) + 244 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 276 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length + 84
    _91 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    mem[arg2.length + ceil32(arg2.length) + 400] = arg5
    mem[arg2.length + ceil32(arg2.length) + 432] = arg3
    mem[arg2.length + ceil32(arg2.length) + 464] = arg4
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _91), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature'
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x205369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[arg2.length + ceil32(arg2.length) + 496 len 4]
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[arg2.length + ceil32(arg2.length) + 400 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 432 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[(2 * arg2.length) + ceil32(arg2.length) + 400] = address(arg1)
    mem[(2 * arg2.length) + ceil32(arg2.length) + 420 len floor32(arg2.length + 20)] = call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 400 len floor32(arg2.length + 20) - floor32(arg2.length)]
    mem[(2 * arg2.length) + ceil32(arg2.length) + floor32(arg2.length + 20) + -(arg2.length + 20 % 32) + 452 len arg2.length + 20 % 32] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 20) + -(arg2.length + 20 % 32) + 432 len arg2.length + 20 % 32]
    call this.address.mem[(2 * arg2.length) + ceil32(arg2.length) + 420 len 4] with:
         gas gas_remaining wei
        args mem[(2 * arg2.length) + ceil32(arg2.length) + 424 len arg2.length + 16]
    if return_data.size:
        mem[(2 * arg2.length) + ceil32(arg2.length) + 420] = return_data.size
        mem[(2 * arg2.length) + ceil32(arg2.length) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Function call not successful'
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 421] = arg1
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 453] = msg.sender
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 96
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = arg2.length
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit MetaTransactionExecuted(address arg1, address arg2, bytes arg3):
                                         mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 421 len arg2.length + 128],
        else:
            mem[floor32(arg2.length) + (2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = mem[floor32(arg2.length) + (2 * arg2.length) + ceil32(arg2.length) + ceil32(return_data.size) + -(arg2.length % 32) + 581 len arg2.length % 32]
            emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * arg2.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 549 len floor32(arg2.length) + -ceil32(arg2.length) + 32]));
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    mem[(2 * arg2.length) + ceil32(arg2.length) + 420] = arg1
    mem[(2 * arg2.length) + ceil32(arg2.length) + 452] = msg.sender
    mem[(2 * arg2.length) + ceil32(arg2.length) + 484] = 96
    mem[(2 * arg2.length) + ceil32(arg2.length) + 516] = arg2.length
    mem[(2 * arg2.length) + ceil32(arg2.length) + 548 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit MetaTransactionExecuted(address arg1, address arg2, bytes arg3):
                                 mem[(2 * arg2.length) + ceil32(arg2.length) + 420 len arg2.length + 128],
    mem[(2 * arg2.length) + ceil32(arg2.length) + 420] = 32
    mem[(2 * arg2.length) + ceil32(arg2.length) + 452] = arg2.length
    mem[(2 * arg2.length) + ceil32(arg2.length) + 484 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return memory
          from (2 * arg2.length) + ceil32(arg2.length) + 420
           len arg2.length + 64
    mem[floor32(arg2.length) + (2 * arg2.length) + ceil32(arg2.length) + 484] = mem[floor32(arg2.length) + (2 * arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 516 len arg2.length % 32]
    return Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * arg2.length) + (2 * ceil32(arg2.length)) + 484 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), 
}



}
