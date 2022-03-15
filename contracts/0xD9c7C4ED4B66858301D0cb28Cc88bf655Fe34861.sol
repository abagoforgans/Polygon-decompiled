contract main {




// =====================  Runtime code  =====================


address owner;
address stateSyncerAddress;
mapping of address tokens;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;

function withdraws(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function deposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isERC721(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function tokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokens[arg1]
}

function stateSyncer() payable {
    return stateSyncerAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function isOnlyStateSyncerContract() payable {
    return (msg.sender == stateSyncerAddress)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mapToken(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    tokens[address(arg1)] = arg2
    stor3[address(arg1)] = uint8(arg3)
}

function changeStateSyncerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 58, code.data[20230 len 58], mem[222 len 6]
    emit StateSyncerAddressChanged(stateSyncerAddress, arg1);
    stateSyncerAddress = arg1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require not stor5[arg4]
    stor5[arg4] = 1
    if not tokens[address(arg1)]:
        revert with 0, 'child token is not mapped'
    require ext_code.size(tokens[address(arg1)])
    call tokens[address(arg1)].withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenWithdrawn(arg3, arg4, arg1, tokens[address(arg1)], arg2);
}

function onStateReceive(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stateSyncerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 53, code.data[20177 len 53], mem[217 len 11]
    require arg2.length >= 128
    require not stor4[cd[(arg2 + 132)]]
    stor4[cd[(arg2 + 132)]] = 1
    require tokens[address(cd[(arg2 + 68)])]
    require ext_code.size(tokens[address(cd[(arg2 + 68)])])
    call tokens[address(cd[(arg2 + 68)])].deposit(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[(arg2 + 36)]), cd[(arg2 + 100)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenDeposited(cd[(arg2 + 100)], cd[(arg2 + 132)], address(cd[(arg2 + 68)]), tokens[address(cd[(arg2 + 68)])], address(cd[(arg2 + 36)]));
}

function sub_bb9b9fa2(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require msg.sender == owner
    mem[0] = arg2
    mem[32] = 2
    if tokens[address(arg2)]:
        revert with 0, 'Token already mapped'
    if not arg6:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 7342] = code.data[12835 len 7342]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7502] = arg1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7534] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7630] = arg5
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7566] = 160
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7662] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 7694 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 7598] = arg3.length + 192
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7694] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7726 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 7566]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7726] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 7758 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 7598]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7694] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 7726 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 7598] = floor32(arg3.length) + 224
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7726] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7758 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 7598]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7758] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 7790 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 7630]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 9136] = code.data[3699 len 9136]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 9296] = arg1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 9328] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 9360] = 128
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 9424] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 9456 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 9392] = arg3.length + 160
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 9456] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 9488 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 9328]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 9488] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 9520 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 9360]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 9456] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 9488 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 9392] = floor32(arg3.length) + 192
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 9488] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 9520 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 9360]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 9520] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 9552 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 9392]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor3[address(arg2)] = 1
    tokens[address(arg2)] = address(create.new_address)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5
    emit NewToken(address rg1, address rg2, uint8 rg3):
                  Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                  mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                  arg2,
                  address(create.new_address),
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
}



}
