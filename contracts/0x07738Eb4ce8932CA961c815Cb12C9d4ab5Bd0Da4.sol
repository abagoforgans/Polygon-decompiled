contract main {




// =====================  Runtime code  =====================


const proxyType = 2


mapping of struct stor99;
uint128 stor546D; offset 160
address implementationAddress;
uint256 stor546D;

function proxyOwner() {
    return address(stor[sha3('matic.network.proxy.owner')].field_0)
}

function implementation() {
    return implementationAddress
}

function _fallback() payable {
    delegate uint256(stor546D.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor[sha3('matic.network.proxy.owner')].field_0) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    emit ProxyOwnerUpdate(address(arg1), address(stor[sha3('matic.network.proxy.owner')].field_0));
    address(stor[sha3('matic.network.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('matic.network.proxy.owner')].field_160) = 0
}

function updateImplementation(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor[sha3('matic.network.proxy.owner')].field_0) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_PROXY_ADDRESS'
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe44455354494e4154494f4e5f414444524553535f49535f4e4f545f415f434f4e54524143,
                    mem[201 len 27]
    emit ProxyUpdated(arg1, implementationAddress);
    implementationAddress = arg1
    Mask(96, 0, stor546D.field_160) = 0
}

function updateAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if address(stor[sha3(Mask(200, -(8 * ceil32(arg2.length) + -arg2.length + 25) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff38 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256)].field_0) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if address(stor[sha3(Mask(200, -(8 * ceil32(arg2.length) + -arg2.length + 25) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff38 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256)].field_0) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_PROXY_ADDRESS'
    if ext_code.size(arg1) <= 0:
        revert with 0, 
                    32,
                    37,
                    0xfe44455354494e4154494f4e5f414444524553535f49535f4e4f545f415f434f4e54524143,
                    mem[ceil32(arg2.length) + 233 len 27]
    emit ProxyUpdated(arg1, address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 2, 0, 0x546d617469632e6e6574776f726b2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0));
    mem[ceil32(arg2.length) + 128 len 34] = 0x546d617469632e6e6574776f726b2e70726f78792e696d706c656d656e746174696f
    address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 2, 0, 0x546d617469632e6e6574776f726b2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0) = arg1
    Mask(96, 0, stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 2, 0, 0x546d617469632e6e6574776f726b2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_160) = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call this.address with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if ext_call.success:
    if return_data.size:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 197 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        if not return_data.size % 32:
            revert with 0, 
                        32,
                        return_data.size,
                        Mask(8 * return_data.size, -(8 * return_data.size) + 256, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256) << (8 * return_data.size) - 256
        mem[floor32(return_data.size) + ceil32(arg2.length) + ceil32(return_data.size) + 197] = mem[floor32(return_data.size) + ceil32(arg2.length) + ceil32(return_data.size) + -(return_data.size % 32) + 229 len return_data.size % 32]
        revert with 0, 
                    32,
                    return_data.size,
                    Mask(8 * ceil32(return_data.size), -(8 * ceil32(return_data.size)) + 256, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256) << (8 * ceil32(return_data.size)) - 256,
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 197 len floor32(return_data.size) + -ceil32(return_data.size) + 32]
    mem[ceil32(arg2.length) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 196 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        revert with 0, 
                    32,
                    arg2.length,
                    Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    mem[floor32(arg2.length) + ceil32(arg2.length) + 196] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 228 len arg2.length % 32]
    revert with 0, 
                32,
                arg2.length,
                Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                mem[(2 * ceil32(arg2.length)) + 196 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}



}
