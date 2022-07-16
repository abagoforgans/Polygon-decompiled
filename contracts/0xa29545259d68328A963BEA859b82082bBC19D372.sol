contract main {




// =====================  Runtime code  =====================


address owner;

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

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAmountsOut(uint256 arg1, address arg2, address arg3, address[] arg4, address[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 64
    mem[164] = arg4.length
    mem[196 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 196] = 0
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _28 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = _28
    mem[(32 * _7) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _7) + ceil32(return_data.size) + 196] = arg5.length
    mem[(32 * _7) + ceil32(return_data.size) + 228 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * _7) + ceil32(return_data.size) + (32 * arg5.length) + 228] = 0
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _28, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _32 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _28) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]
    _35 = mem[_32 + (32 * _7) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_32 + (32 * _7) + ceil32(return_data.size) + 128])] = mem[_32 + (32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_32 + (32 * _7) + ceil32(return_data.size) + 128])]
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] = 32
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
    mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128])] = mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128])]
    return 32, mem[(32 * _35) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len (32 * mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]) + 32], 
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address arg3, address arg4, address[] arg5, address[] arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 64
    mem[164] = arg5.length
    mem[196 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 196] = 0
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _9) + ceil32(return_data.size) + 132] = arg1
    mem[(32 * _9) + ceil32(return_data.size) + 164] = 0
    mem[(32 * _9) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _9) + ceil32(return_data.size) + 260] = arg7
    mem[(32 * _9) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _9) + ceil32(return_data.size) + 292] = arg5.length
    mem[(32 * _9) + ceil32(return_data.size) + 324 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * _9) + ceil32(return_data.size) + (32 * arg5.length) + 324] = 0
    require ext_code.size(arg3)
    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), arg7, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _9) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _9) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _34 = mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * _9) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * _9) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _9) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _9) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * _9) + ceil32(return_data.size) + 128]
    _37 = mem[_34 + (32 * _9) + ceil32(return_data.size) + 128]
    mem[(32 * _9) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_34 + (32 * _9) + ceil32(return_data.size) + 128])] = mem[_34 + (32 * _9) + ceil32(return_data.size) + 160 len floor32(mem[_34 + (32 * _9) + ceil32(return_data.size) + 128])]
    mem[64] = (32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _53 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 164] = _53
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 196] = arg2
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 260] = this.address
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 292] = arg7
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 228] = 160
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 324] = arg6.length
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 356 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + (32 * arg6.length) + 356] = 0
    require ext_code.size(arg4)
    call arg4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _53, arg2, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)]), address(this.address), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _37) + (32 * _9) + (4 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    require mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _53) >> 32 <= 4294967296
    require mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _53) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _53) >> 32 + (32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _53) >> 32 + (32 * mem[mem[(32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _53) >> 32 + (32 * _37) + (32 * _9) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
}



}
