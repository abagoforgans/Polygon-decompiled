contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 stor2;
uint8 stor4;
mapping of uint8 stor5;
address sub_ee1ac28eAddress; offset 8
address sub_faae1f99Address;
mapping of uint256 sub_1788551e;

function sub_1788551e(?) payable {
    require calldata.size - 4 >= 32
    return sub_1788551e[arg1]
}

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
}

function sub_ee1ac28e(?) payable {
    return sub_ee1ac28eAddress
}

function sub_faae1f99(?) payable {
    return sub_faae1f99Address
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor5[address(arg1)] = 1
}

function deleteManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor5[address(arg1)] = 0
}

function setBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function sub_a68aa726(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    sub_ee1ac28eAddress = arg1
}

function setGameDefaultPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    stor2 = arg1
}

function setCitizenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    sub_faae1f99Address = arg1
}

function setMaintenanceStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    stor4 = uint8(arg1)
    emit 0xf887ef1c: arg1
}

function withdrawalAll() payable {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(eth.balance(this.address));
}

function withdrawal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BeneficiaryPayout(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe5472616e7366657220746f206e756c6c2061646472657373206973206e6f7420616c6c6f7765,
                    mem[203 len 25]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c8b41d00(?) payable {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_faae1f99Address)
    staticcall sub_faae1f99Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg1
    require sub_1788551e[arg2]
    sub_1788551e[arg2] = 0
    emit 0x95d67df6: arg2, sub_1788551e[arg2], 0
}

function sub_034e9356(?) payable {
    require calldata.size - 4 >= 96
    if not stor5[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    require ext_code.size(sub_faae1f99Address)
    staticcall sub_faae1f99Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'sp1'
    require ext_code.size(sub_ee1ac28eAddress)
    staticcall sub_ee1ac28eAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'sp3'
    if sub_1788551e[arg2]:
        emit 0x95d67df6: arg2, sub_1788551e[arg2], 0
    sub_1788551e[arg2] = arg3
    emit 0x95d67df6: arg2, arg3, 1
}



}
