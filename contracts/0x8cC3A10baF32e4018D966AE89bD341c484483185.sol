contract main {




// =====================  Runtime code  =====================


address owner;
address govAddress;
address DARKAddress;

function gov() payable {
    return govAddress
}

function DARK() payable {
    return DARKAddress
}

function owner() payable {
    return owner
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

function sub_12e375e9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if govAddress != msg.sender:
        revert with 0, '!gov'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _22 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_22)
        mem[mem[64] + 68] = cd[36]
        require ext_code.size(DARKAddress)
        call DARKAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_22), cd[36]
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
