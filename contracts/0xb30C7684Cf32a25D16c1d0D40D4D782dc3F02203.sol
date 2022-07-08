contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 paused; offset 160
address owner;
mapping of uint8 stor2;
mapping of uint8 stor3;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function isTransactedEventHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function paused() {
    return bool(paused)
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function pause() {
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setTransactedEventHash(bytes32 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    stor3[arg1] = uint8(arg2)
    emit 0xc16bb221: arg1, arg2
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if stor2[address(arg1)]:
        revert with 0, 'role already has the account'
    stor2[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if not stor2[address(arg1)]:
        revert with 0, 'role dosen't have the account'
    stor2[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_f4b23e03(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if stor3[arg4]:
        revert with 0, '_eventHash is already transacted'
    mem[100] = arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if not ext_call.return_data[0]:
            call address(arg1).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(arg2), arg3
    else:
        if not return_data.size:
            mem[100] = arg3
            require ext_code.size(address(arg1))
            staticcall address(arg1).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[96] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg2), arg3
            else:
                if return_data.size < 68:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint32(arg4) >> 224 != Error(string arg1):
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[ext_call.return_data[0] + 96] > test266151307():
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 32 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0] + 96:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
        else:
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 101] = arg3
            require ext_code.size(address(arg1))
            staticcall address(arg1).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg2), arg3
            else:
                if return_data.size < 68:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint32(arg4) >> 224 != Error(string arg1):
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[ceil32(return_data.size) + ext_call.return_data[0] + 97] > test266151307():
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 97] + 32 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ceil32(return_data.size) + ext_call.return_data[0] + 97:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    stor3[arg4] = 1
    emit 0xc16bb221: arg4, 1
}

function sub_4af4a89b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Must be operator'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'invalid length'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'invalid length'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'invalid length'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if not stor2[address(msg.sender)]:
            revert with 0, 'Must be operator'
        mem[0] = cd[((32 * idx) + cd[100] + 36)]
        mem[32] = 3
        if stor3[cd[((32 * idx) + cd[100] + 36)]]:
            revert with 0, '_eventHash is already transacted'
        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).exists(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_93] == bool(mem[_93])
            if not mem[_93]:
                mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
            else:
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        else:
            if not return_data.size:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_100] == mem[_100 + 12 len 20]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                else:
                    if return_data.size < 68:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(cd[((32 * idx) + cd[100] + 36)]) >> 224 != Error(string arg1):
                        revert with ext_call.return_data[0 len return_data.size]
                    _110 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
                    if not _110 + ext_call.return_data[0]:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
            else:
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_94] = return_data.size
                mem[_94 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_101] == mem[_101 + 12 len 20]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
                else:
                    if return_data.size < 68:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(cd[((32 * idx) + cd[100] + 36)]) >> 224 != Error(string arg1):
                        revert with ext_call.return_data[0 len return_data.size]
                    _112 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
                    if not _112 + ext_call.return_data[0]:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor2[address(msg.sender)]:
            revert with 0, 'Must be operator'
        mem[0] = cd[((32 * idx) + cd[100] + 36)]
        mem[32] = 3
        stor3[cd[((32 * idx) + cd[100] + 36)]] = 1
        mem[mem[64]] = cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64] + 32] = 1
        emit 0xc16bb221: cd[((32 * idx) + cd[100] + 36)], 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
