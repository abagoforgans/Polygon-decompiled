contract main {




// =====================  Runtime code  =====================


address owner;
address stakingContractAddress;
address tokenContractAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return owner
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function sub_e98008a1(?) payable {
    require calldata.size - 4 >= 64
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeTokenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenContractAddress = arg1
}

function changeStakingContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingContractAddress = arg1
}

function sub_af07d667(?) payable {
    require calldata.size - 4 >= 32
    if tokenContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f4f6e6c7920746f6b656e20636f6e74726163742063616e2063616c6c20746869,
                    mem[197 len 31]
    if stor4[address(arg1)]:
        revert with 0, 'Withdrawal is blocked'
    return 1
}

function sub_64fa1fed(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7343616e6e6f7420626c6f636b2f756e626c6f636b2061646472657373207a6572,
                    mem[197 len 31]
    stor3[address(arg1)] = uint8(arg2)
}

function sub_78868421(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7343616e6e6f7420626c6f636b2f756e626c6f636b2061646472657373207a6572,
                    mem[197 len 31]
    stor4[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_97e2b9af(?) payable {
    require calldata.size - 4 >= 64
    if tokenContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f4f6e6c7920746f6b656e20636f6e74726163742063616e2063616c6c20746869,
                    mem[197 len 31]
    if stor3[address(arg1)]:
        revert with 0, 'Transfer is blocked'
    if stor3[address(arg2)]:
        revert with 0, 'Transfer is blocked'
    return 1
}

function sub_343b278f(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if tokenContractAddress != msg.sender:
        revert with 0, 32, 33, 0x6f4f6e6c7920746f6b656e20636f6e74726163742063616e2063616c6c20746869, mem[ceil32(arg4.length) + 229 len 31]
    if arg2 != stakingContractAddress:
        if arg4.length > 0:
            mem[ceil32(arg4.length) + 128] = arg3
            mem[ceil32(arg4.length) + 160] = 64
            mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xf1e71786: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
                emit 0xf1e71786: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
        mem[ceil32(arg4.length) + 128] = 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    if arg1 == stakingContractAddress:
        if arg4.length > 0:
            mem[ceil32(arg4.length) + 128] = arg3
            mem[ceil32(arg4.length) + 160] = 64
            mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xf1e71786: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
                emit 0xf1e71786: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
        mem[ceil32(arg4.length) + 128] = 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0xbaffb69f with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4.length > 0:
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0xf1e71786: 0, Mask(224, 0, arg3), 64, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
            emit 0xf1e71786: 0, Mask(224, 0, arg3), 64, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
    return 0, 1
}



}
