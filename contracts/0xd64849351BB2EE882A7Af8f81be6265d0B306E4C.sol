contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#
const getChainId = chainid


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 domainSeperator;
mapping of uint256 nonce;
uint256 totalTokensAmount;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalTokensAmount() {
    return totalTokensAmount
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 232 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if allowance[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] + arg2 < allowance[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 264 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 262 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] + arg2
        emit Approval((allowance[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] + arg2), mem[calldata.size + 108 len 20], arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 233 len 27]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 231 len 29]
        if arg2 > balanceOf[address(mem[calldata.size + 96])]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + 198 len 26],
                        mem[ceil32(calldata.size) + 250 len 6]
        balanceOf[address(mem[calldata.size + 96])] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        return 1
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 224] = calldata.size
    mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
    if arg2 <= allowance[mem[ceil32(calldata.size) + calldata.size + 236 len 20]][address(arg1)]:
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 360 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 358 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[ceil32(calldata.size) + calldata.size + 236 len 20]][address(arg1)] - arg2
        emit Approval((allowance[mem[ceil32(calldata.size) + calldata.size + 236 len 20]][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
        return 1
    mem[(2 * ceil32(calldata.size)) + 260] = 32
    mem[(2 * ceil32(calldata.size)) + 292] = 37
    mem[(2 * ceil32(calldata.size)) + 324 len 64] = 0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(calldata.size) + 197 len 27]
    mem[(2 * ceil32(calldata.size)) + 356] = calldata.size % 1099511627776
    revert with 0, 
                32,
                37,
                0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                mem[ceil32(calldata.size) + 197 len 27],
                calldata.size % 1099511627776
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if this.address != msg.sender:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    mem[192] = calldata.size
    mem[224 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 320] = calldata.size
    mem[ceil32(calldata.size) + 352 len calldata.size] = call.data[0 len calldata.size]
    if arg3 <= allowance[address(arg1)][mem[ceil32(calldata.size) + calldata.size + 332 len 20]]:
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 456 len 28]
        if not mem[calldata.size + 204 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 454 len 30]
        allowance[address(arg1)][address(mem[calldata.size + 192])] = allowance[address(arg1)][mem[ceil32(calldata.size) + calldata.size + 332 len 20]] - arg3
        emit Approval((allowance[address(arg1)][mem[ceil32(calldata.size) + calldata.size + 332 len 20]] - arg3), arg1, mem[calldata.size + 204 len 20]);
        return 1
    mem[(2 * ceil32(calldata.size)) + 356] = 32
    mem[(2 * ceil32(calldata.size)) + 388] = 40
    mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
    mem[(2 * ceil32(calldata.size)) + 452] = uint64(calldata.size)
    revert with 0, 
                32,
                40,
                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                mem[ceil32(calldata.size) + 296 len 24],
                uint64(calldata.size)
}



}
