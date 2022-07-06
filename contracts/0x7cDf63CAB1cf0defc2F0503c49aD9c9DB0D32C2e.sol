contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'new token is the zero address'
    emit TokenAddressUpdated(arg1);
    stor1 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_835c87ce(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    50,
                    0x775061796d656e7453706c69747465723a2070617965657320616e6420736861726573206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 278 len 14]
    if arg1.length <= 0:
        revert with 0, 'PaymentSplitter: no payees'
    if not arg4:
        revert with 0, 
                    32,
                    42,
                    0xfe5061796d656e7453706c69747465723a20706179657220697320746865207a65726f20616464726573,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 270 len 22]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = arg4
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
    require ext_code.size(stor1)
    staticcall stor1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg4), this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 
                    32,
                    39,
                    0x685061796d656e7453706c69747465723a20696e73756666696369656e7420616c6c6f77616e63,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 267 len 25]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        _41 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not arg3:
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = 26
            mem[_44 + 32] = 'SafeMath: division by zero'
            require idx < mem[96]
            _47 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg4
            mem[mem[64] + 36] = address(_47)
            mem[mem[64] + 68] = 0
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), address(_47), 0
        else:
            require arg3
            if arg3 * mem[(32 * idx) + (32 * arg1.length) + 160] / arg3 != mem[(32 * idx) + (32 * arg1.length) + 160]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _45 = mem[64]
            mem[64] = mem[64] + 64
            mem[_45] = 26
            mem[_45 + 32] = 'SafeMath: division by zero'
            require idx < mem[96]
            _51 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg4
            mem[mem[64] + 36] = address(_51)
            mem[mem[64] + 68] = arg3 * _41 / 100
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), address(_51), arg3 * _41 / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
