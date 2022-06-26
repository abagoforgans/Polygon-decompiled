contract main {




// =====================  Runtime code  =====================


address creatorAddress;
uint256 tournamentId;
uint8 sub_1fc6f61e;
array of address players;
uint256 sub_f406b51f;
uint256 exchangeRate;
mapping of uint256 sub_805529e8;
address stor7;
address stor8;

function creator() payable {
    return creatorAddress
}

function sub_1fc6f61e(?) payable {
    require sub_1fc6f61e <= 2
    return sub_1fc6f61e
}

function exchangeRate() payable {
    return exchangeRate
}

function sub_805529e8(?) payable {
    require calldata.size - 4 >= 32
    return sub_805529e8[arg1]
}

function sub_f406b51f(?) payable {
    return sub_f406b51f
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1]
}

function tournamentId() payable {
    return tournamentId
}

function _fallback() payable {
    revert
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor8)
    call stor8.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_805529e8[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function supplyErc20ToCompound(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor8)
    call stor8.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 35, 0xfe45786368616e6765205261746520287363616c65642075702062792031653138293a, mem[227 len 29]
    require ext_code.size(stor8)
    staticcall stor8.supplyRatePerBlock() with:
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

function sub_622b60b4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor7)
    call stor7.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 35, 0xfe45786368616e6765205261746520287363616c65642075702062792031653138293a, mem[227 len 29]
    exchangeRate = ext_call.return_data[0]
    require ext_code.size(stor8)
    staticcall stor8.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x8d1cced0: ext_call.return_data[0], ext_call.return_data[0], 32, 'Supply Rate: (scaled up by 1e18)'
    require ext_code.size(stor7)
    call stor7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require exchangeRate
    sub_805529e8[address(msg.sender)] = 10^12 * arg1 / exchangeRate
    return ext_call.return_data[0]
}



}
