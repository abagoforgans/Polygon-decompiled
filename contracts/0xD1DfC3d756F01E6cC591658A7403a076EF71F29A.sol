contract main {




// =====================  Runtime code  =====================


array of uint256 versionPenalizer;

function versionPenalizer() payable {
    return versionPenalizer[0 len versionPenalizer.length]
}

function _fallback() payable {
    revert
}

function penalizeIllegalTransaction(bytes arg1, bytes arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require ext_code.size(arg3)
    staticcall arg3.isRelayManagerStaked(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Unknown relay manager'
    revert with 0, 'isList failed'
}

function penalizeRepeatedNonce(bytes arg1, bytes arg2, bytes arg3, bytes arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 <= test266151307() and ceil32(arg3.length) + 192 >= 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 <= test266151307() and ceil32(arg4.length) + 224 >= 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require ext_code.size(arg5)
    staticcall arg5.isRelayManagerStaked(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Unknown relay manager'
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[ceil32(arg1.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}



}
