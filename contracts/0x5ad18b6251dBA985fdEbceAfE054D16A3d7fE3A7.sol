contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_1367d75fAddress;
address maticAddress;
address DAIAddress;
address WETHAddress;
address factoryAddress;

function sub_1367d75f(?) {
    return sub_1367d75fAddress
}

function WETH() {
    return WETHAddress
}

function matic() {
    return maticAddress
}

function factory() {
    return factoryAddress
}

function DAI() {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function getMaticBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function getDAIBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(DAIAddress)
    staticcall DAIAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e44ef69a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_1367d75fAddress)
    staticcall sub_1367d75fAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEstimatedDAIforETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = DAIAddress
    mem[160] = WETHAddress
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _26) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _26) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}



}
