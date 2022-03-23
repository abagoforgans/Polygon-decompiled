contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 nonce;
array of struct quote;
bool stor3; offset 256
address owner;

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function owner() {
    return owner
}

function quote() {
    return quote[0 len quote.length].field_0
}

function _fallback() payable {
  stop
}

function getQuote() {
    mem[128] = uint256(quote.field_0)
    idx = 128
    s = 0
    while quote.length + 96 > idx:
        mem[idx + 32] = quote[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=quote.length, data=mem[128 len ceil32(quote.length)]), owner
}

function setQuote(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    quote[].field_0 = Array(len=arg1.length, data=arg1[all])
    if this.address != msg.sender:
        owner = msg.sender
    else:
        owner = 0
        stor3 = 0
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = 0
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 448] = 0
    mem[ceil32(arg2.length) + 770] = arg5
    mem[ceil32(arg2.length) + 834] = arg4
    signer = erecover(sha3(0, stor0, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 770] = address(arg1)
    mem[ceil32(arg2.length) + arg2.length + 790] = address(msg.sender)
    mem[ceil32(arg2.length) + arg2.length + 810 len floor32(arg2.length + 71)] = mem[ceil32(arg2.length) + 770], arg3, mem[ceil32(arg2.length) + 834 len floor32(arg2.length + 71) - 64]
    if floor32(arg2.length + 71) > arg2.length + 40:
        mem[ceil32(arg2.length) + (2 * arg2.length) + 850] = 0
    call this.address.mem[ceil32(arg2.length) + arg2.length + 810 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + arg2.length + 814 len arg2.length + 36]
    if not ext_call.success:
        revert with 0, 'Function call not successfull'
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
