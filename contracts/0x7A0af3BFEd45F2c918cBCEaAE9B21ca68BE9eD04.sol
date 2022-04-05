contract main {




// =====================  Runtime code  =====================


uint8 initialized;
address stor0;
address augurAddress; offset 8
address sub_8e1bfa73Address;
address cashAddress;
uint256 stor2;
address affiliatesAddress;
uint256 stor3;
uint128 stor4; offset 160
address shareTokenAddress;
uint256 stor4;
address sub_6512e6ecAddress;
uint256 stor5;
address sub_5c1ad844Address;
uint256 stor6;
address sub_1a505b76Address;
uint256 stor7;
address sub_28c1fed0Address;
uint256 stor8;
address sub_519e62d9Address;
uint256 stor9;

function sub_1a505b76(?) payable {
    return address(sub_1a505b76Address)
}

function sub_28c1fed0(?) payable {
    return address(sub_28c1fed0Address)
}

function affiliates() payable {
    return address(affiliatesAddress)
}

function sub_519e62d9(?) payable {
    return address(sub_519e62d9Address)
}

function sub_5c1ad844(?) payable {
    return address(sub_5c1ad844Address)
}

function sub_6512e6ec(?) payable {
    return address(sub_6512e6ecAddress)
}

function shareToken() payable {
    return shareTokenAddress
}

function augur() payable {
    return augurAddress
}

function sub_8e1bfa73(?) payable {
    return sub_8e1bfa73Address
}

function cash() payable {
    return address(cashAddress)
}

function getInitialized() payable {
    return bool(initialized)
}

function _fallback() payable {
    revert
}

function sub_80a35930(?) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, sha3(arg1), sha3(code.data[3177 len 5824], code.data[9001 len 3])))
}

function sub_7c00e2ce(?) payable {
    require calldata.size - 4 >= 96
    if ext_code.size(address(sha3(0, this.address, sha3(arg1), sha3(code.data[3177 len 5824], code.data[9001 len 3])))):
        return address(sha3(0, this.address, sha3(arg1), sha3(code.data[3177 len 5824], code.data[9001 len 3])))
    create2 contract with 0 wei
                    salt: sha3(arg1)
                    code: code.data[3177 len 5824], mem[23776 len 3]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xd688e8e5 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, stor0, address(sub_28c1fed0Address), address(sub_519e62d9Address), address(cashAddress), address(affiliatesAddress), shareTokenAddress, address(sub_6512e6ecAddress), address(sub_5c1ad844Address), address(sub_1a505b76Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require not initialized
    initialized = 1
    augurAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x4361736800000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(augurAddress)
    staticcall augurAddress.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args ('Affiliates' << 176)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(augurAddress)
    staticcall augurAddress.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x5368617265546f6b656e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    sub_8e1bfa73Address = arg2
    require ext_code.size(arg2)
    staticcall arg2.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x4372656174654f72646572000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(arg2)
    staticcall arg2.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x46696c6c4f726465720000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(arg2)
    staticcall arg2.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args ('ZeroXTrade' << 176)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(arg2)
    staticcall arg2.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args ('AugurWalletRegistry' << 104)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(arg2)
    staticcall arg2.lookup(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x417567757257616c6c6574526567697374727956320000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    return 1
}



}
