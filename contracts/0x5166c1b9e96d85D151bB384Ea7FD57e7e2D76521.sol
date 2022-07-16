contract main {




// =====================  Runtime code  =====================


const sub_15b550d6(?) = 4112

const sub_fbc822d5(?) = 0x9719d867a500ef117cc201206b8ab51e794d3f82

const USDC = 0x2791bca1f2de4661ed88a30c99a7a9449aa84174


uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function getTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f3acfb9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor1)
    staticcall stor1.WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 160] = 0x2791bca1f2de4661ed88a30c99a7a9449aa84174
    mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = arg1
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), arg1, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _42 = mem[ceil32(return_data.size) + 192 len 4], 0
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
    _43 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _43
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _42 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _43:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x2791bca1f2de4661ed88a30c99a7a9449aa84174)
    staticcall 0x2791bca1f2de4661ed88a30c99a7a9449aa84174.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] == mem[_69]
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _70
    require ext_code.size(0x2791bca1f2de4661ed88a30c99a7a9449aa84174)
    call 0x2791bca1f2de4661ed88a30c99a7a9449aa84174.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, _70
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == bool(mem[_73])
    _75 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_75]:
        revert with 'NH{q', 50
    mem[_75 + 32] = 0x2791bca1f2de4661ed88a30c99a7a9449aa84174
    if 1 >= mem[_75]:
        revert with 'NH{q', 50
    mem[_75 + 64] = 0x9719d867a500ef117cc201206b8ab51e794d3f82
    mem[_75 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_75 + 100] = _70
    mem[_75 + 132] = 0
    mem[_75 + 164] = 160
    mem[_75 + 260] = mem[_75]
    idx = 0
    s = _75 + 32
    t = _75 + 292
    while idx < mem[_75]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_75 + 196] = msg.sender
    mem[_75 + 228] = arg1
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _75 + (32 * mem[_75]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    require mem[_89] <= test266151307()
    require _89 + mem[_89] + 31 < _89 + return_data.size
    _91 = mem[_89 + mem[_89]]
    if mem[_89 + mem[_89]] > test266151307():
        revert with 'NH{q', 65
    if _89 + ceil32(return_data.size) + (32 * mem[_89 + mem[_89]]) + 32 > test266151307() or (32 * mem[_89 + mem[_89]]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = _89 + ceil32(return_data.size) + (32 * mem[_89 + mem[_89]]) + 32
    mem[_89 + ceil32(return_data.size)] = _91
    require _90 + (32 * _91) + 32 <= return_data.size
    idx = 0
    s = _89 + _90 + 32
    t = _89 + ceil32(return_data.size) + 32
    while idx < _91:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    stor0 = 1
}

function sub_b1483be8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
    staticcall 0x9719d867a500ef117cc201206b8ab51e794d3f82.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
    call 0x9719d867a500ef117cc201206b8ab51e794d3f82.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = stor1
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
    call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0x9719d867a500ef117cc201206b8ab51e794d3f82
    mem[(4 * ceil32(return_data.size)) + 160] = 0x2791bca1f2de4661ed88a30c99a7a9449aa84174
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = arg1
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), arg1, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _42 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _43 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(6 * ceil32(return_data.size)) + 192] = _43
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _42 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _43:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x2791bca1f2de4661ed88a30c99a7a9449aa84174)
    staticcall 0x2791bca1f2de4661ed88a30c99a7a9449aa84174.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] == mem[_73]
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _74
    require ext_code.size(0x2791bca1f2de4661ed88a30c99a7a9449aa84174)
    call 0x2791bca1f2de4661ed88a30c99a7a9449aa84174.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, _74
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_77] == bool(mem[_77])
    require ext_code.size(stor1)
    staticcall stor1.WETH() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_81]
    require mem[_81] == mem[_81 + 12 len 20]
    _83 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_83]:
        revert with 'NH{q', 50
    mem[_83 + 32] = 0x2791bca1f2de4661ed88a30c99a7a9449aa84174
    if 1 >= mem[_83]:
        revert with 'NH{q', 50
    mem[_83 + 64] = address(_82)
    mem[_83 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_83 + 100] = _74
    mem[_83 + 132] = 0
    mem[_83 + 164] = 160
    mem[_83 + 260] = mem[_83]
    idx = 0
    s = _83 + 32
    t = _83 + 292
    while idx < mem[_83]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_83 + 196] = msg.sender
    mem[_83 + 228] = arg1
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _83 + (32 * mem[_83]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_97]
    require mem[_97] <= test266151307()
    require _97 + mem[_97] + 31 < _97 + return_data.size
    _99 = mem[_97 + mem[_97]]
    if mem[_97 + mem[_97]] > test266151307():
        revert with 'NH{q', 65
    if _97 + ceil32(return_data.size) + (32 * mem[_97 + mem[_97]]) + 32 > test266151307() or (32 * mem[_97 + mem[_97]]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = _97 + ceil32(return_data.size) + (32 * mem[_97 + mem[_97]]) + 32
    mem[_97 + ceil32(return_data.size)] = _99
    require _98 + (32 * _99) + 32 <= return_data.size
    idx = 0
    s = _97 + _98 + 32
    t = _97 + ceil32(return_data.size) + 32
    while idx < _99:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    stor0 = 1
}



}
