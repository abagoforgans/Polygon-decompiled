contract main {




// =====================  Runtime code  =====================


address adminAddress;
address validatorRegistryAddress;
address stakeRegistryAddress;
address sub_f3ad65f4Address;
address mpondAddress;
mapping of uint256 sub_dedfdfd7;

function stakeRegistry() payable {
    return stakeRegistryAddress
}

function mpond() payable {
    return mpondAddress
}

function sub_dedfdfd7(?) payable {
    require calldata.size - 4 >= 32
    return sub_dedfdfd7[arg1]
}

function validatorRegistry() payable {
    return validatorRegistryAddress
}

function sub_f3ad65f4(?) payable {
    return sub_f3ad65f4Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function addTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(mpondAddress)
    call mpondAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function removeTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Only owner can remove tokens'
    require ext_code.size(mpondAddress)
    call mpondAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_2216730a(?) payable {
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x5f1d26c8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakeRegistryAddress)
    staticcall stakeRegistryAddress.'{{uT' with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_dedfdfd7[ext_call.return_data[0]] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction underflow'
    return (ext_call.return_data[0] - sub_dedfdfd7[ext_call.return_data[0]])
}

function claimAmount() payable {
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x5f1d26c8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakeRegistryAddress)
    staticcall stakeRegistryAddress.'{{uT' with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_dedfdfd7[ext_call.return_data[0]] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction underflow'
    if not ext_call.return_data[0] - sub_dedfdfd7[ext_call.return_data[0]]:
        revert with 0, 32, 36, 0xfe57697468647261776c2062616c616e63652073686f756c64206265206e6f6e2d7a6572, mem[264 len 28]
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x5f1d26c8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_dedfdfd7[ext_call.return_data[0]]:
        revert with 0, 'SafeMath: addition overflow'
    sub_dedfdfd7[ext_call.return_data[0]] = ext_call.return_data[0]
    require ext_code.size(mpondAddress)
    call mpondAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - sub_dedfdfd7[ext_call.return_data[0]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
