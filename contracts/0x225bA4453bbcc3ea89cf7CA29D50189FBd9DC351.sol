contract main {




// =====================  Runtime code  =====================


address owner;
address govAddress;
address sub_a4795e97Address;

function gov() payable {
    return govAddress
}

function owner() payable {
    return owner
}

function sub_a4795e97(?) payable {
    return sub_a4795e97Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_be0fb24f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if govAddress != msg.sender:
        revert with 0, '!gov'
    require ext_code.size(sub_a4795e97Address)
    staticcall sub_a4795e97Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_e10d63fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if govAddress != msg.sender:
        revert with 0, '!gov'
    require ext_code.size(sub_a4795e97Address)
    call sub_a4795e97Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_12e375e9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if govAddress != msg.sender:
        revert with 0, '!gov'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(sub_a4795e97Address)
        call sub_a4795e97Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        idx = idx + 1
        continue 
}



}
