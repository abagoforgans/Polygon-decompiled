contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor9:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor7.length:
        idx = stor7.length
        while 0 < idx:
            require idx / 2 < stor7.length
            mem[0] = 7
            if stor7[0.5 / idx] <= arg1:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor7.length:
        return totalSupply
    require 0 < stor8.length
    return stor8
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor9:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor6[address(arg1)].field_0:
        idx = stor6[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor6[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            if stor6[address(arg1)][0.5 / idx].field_0 <= arg2:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor6[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor6[address(arg1)].field_256
    return stor6[address(arg1)][1].field_0
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if not stor6[address(arg1)].field_0:
            if 0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
            if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        if not stor7.length:
            if 0 < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
        else:
            require stor7.length - 1 < stor7.length
            if stor7[stor7.length] < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
    else:
        if not stor6[address(msg.sender)].field_0:
            if 0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
            if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        if arg1:
            if not stor6[address(arg1)].field_0:
                if 0 < stor9:
                    stor6[address(arg1)].field_0++
                    stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                    stor6[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
            else:
                require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
                if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                    stor6[address(arg1)].field_0++
                    stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                    stor6[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if not stor7.length:
                if 0 < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
            else:
                require stor7.length - 1 < stor7.length
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
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
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if not stor6[address(arg2)].field_0:
            if 0 < stor9:
                stor6[address(arg2)].field_0++
                stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                stor6[address(arg2)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        else:
            require stor6[address(arg2)].field_0 - 1 < stor6[address(arg2)].field_0
            if stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 < stor9:
                stor6[address(arg2)].field_0++
                stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                stor6[address(arg2)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        if not stor7.length:
            if 0 < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
        else:
            require stor7.length - 1 < stor7.length
            if stor7[stor7.length] < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
    else:
        if not stor6[address(arg1)].field_0:
            if 0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
            if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        if arg2:
            if not stor6[address(arg2)].field_0:
                if 0 < stor9:
                    stor6[address(arg2)].field_0++
                    stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                    stor6[address(arg2)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
            else:
                require stor6[address(arg2)].field_0 - 1 < stor6[address(arg2)].field_0
                if stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 < stor9:
                    stor6[address(arg2)].field_0++
                    stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                    stor6[address(arg2)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
        else:
            if not stor7.length:
                if 0 < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
            else:
                require stor7.length - 1 < stor7.length
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
