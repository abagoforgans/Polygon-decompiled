contract main {




// =====================  Runtime code  =====================


#
#  - sub_d26920cf(?)
#
uint8 paused; offset 160
address owner;
address stor1;
mapping of struct stor2;
uint64 sub_8b289879;
uint64 stor3; offset 64
uint256 stor4;

function paused() {
    return bool(paused)
}

function sub_8b289879(?) {
    return sub_8b289879
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_5faa6b23(?) {
    require msg.sender == owner
    stor4 = arg1
}

function setTokenContractAddress(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6040e918(?) payable {
    require not paused
    if stor4 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price doesnt match the amount payed'
    require ext_code.size(stor1)
    call stor1.getDataAndOwner3(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2 << 224, arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[108 len 20] != msg.sender:
        revert with 0, 'not the owner'
    if ext_call.return_data[140 len 20] != msg.sender:
        revert with 0, 'not the owner'
    if ext_call.return_data[172 len 20] != msg.sender:
        revert with 0, 'not the owner'
    if ext_call.return_data[0 len 1] / 6 != ext_call.return_data[32 len 1] / 6:
        revert with 0, 'categories don't match'
    if ext_call.return_data[0 len 1] / 6 != ext_call.return_data[64 len 1] / 6:
        revert with 0, 'categories don't match'
    if Mask(4, 244, ext_call.return_data[0]) >> 244 != Mask(4, 244, ext_call.return_data[32]) >> 244:
        revert with 0, 'tiers don't match'
    if Mask(4, 244, ext_call.return_data[0]) >> 244 != Mask(4, 244, ext_call.return_data[64]) >> 244:
        revert with 0, 'tiers don't match'
    if Mask(4, 244, ext_call.return_data[0]) >> 244 > 2:
        revert with 0, '4 is the maximum tier'
    require ext_code.size(stor1)
    call stor1.burn3(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1 << 224, arg2 << 224, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[uint64(stor3.field_0) + uint64(stor3.field_64) << 192].field_0 = msg.sender
    stor2[uint64(stor3.field_0) + uint64(stor3.field_64) << 192].field_160 = arg1
    stor2[uint64(stor3.field_0) + uint64(stor3.field_64) << 192].field_192 = arg2
    stor2[uint64(stor3.field_0) + uint64(stor3.field_64) << 192].field_224 = arg3
    stor2[uint64(stor3.field_0) + uint64(stor3.field_64) << 192].field_256 = block.number % 281474976710656
    sub_8b289879 = uint64(sub_8b289879 + 1)
    emit 0xe33e9555: arg1 << 224, arg2 << 224, arg3 << 224, stor4
}



}
