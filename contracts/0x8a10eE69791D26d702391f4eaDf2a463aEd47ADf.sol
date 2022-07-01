contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1


mapping of uint256 stor0;
mapping of address stor1;
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setDirectPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    emit PricePosted(address(arg1), stor0[address(arg1)], arg2, arg2);
    stor0[address(arg1)] = arg2
}

function addAsset(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Invalid Owner'
    if stor1[address(arg1)]:
        revert with 0, 'Already added'
    stor1[address(arg1)] = arg2
}

function assetPrices(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1[address(arg1)])
    staticcall stor1[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setUnderlyingPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit PricePosted(address(ext_call.return_data[0]), stor0[ext_call.return_data[12 len 20]], arg2, arg2);
    stor0[address(ext_call.return_data[0])] = arg2
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1[ext_call.return_data[12 len 20]])
    staticcall stor1[ext_call.return_data[12 len 20]].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
