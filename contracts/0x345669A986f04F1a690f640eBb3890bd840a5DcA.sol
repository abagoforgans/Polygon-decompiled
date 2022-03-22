contract main {




// =====================  Runtime code  =====================


#
#  - send(address arg1, uint256 arg2, bytes arg3)
#
const decimals = 18

const granularity = 1


address stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of struct stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function _fallback() payable {
    revert
}

function isOperatorFor(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return True
    if stor6[address(arg1)]:
        if not stor8[address(arg2)][address(arg1)]:
            return not bool(stor8[address(arg2)][address(arg1)])
    return bool(stor7[address(arg2)][address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function revokeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: revoking self as operator'
    if not stor6[address(arg1)]:
        stor7[address(msg.sender)][address(arg1)] = 0
    else:
        stor8[address(msg.sender)][address(arg1)] = 1
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: authorizing self as operator'
    if not stor6[address(arg1)]:
        stor7[address(msg.sender)][address(arg1)] = 1
    else:
        stor8[address(msg.sender)][address(arg1)] = 0
    emit AuthorizedOperator(arg1, msg.sender);
}

function defaultOperators() {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer to the zero address'
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg2,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  msg.sender,
                  arg1,
        emit Transfer(arg2, msg.sender, arg1);
        require ext_code.size(stor0)
        staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg2,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  msg.sender,
                  arg1,
        emit Transfer(arg2, msg.sender, arg1);
        require ext_code.size(stor0)
        staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, 0, arg2, 0, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer to the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer from the zero address'
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg3,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  arg1,
                  arg2,
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0, 'ERC777: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        require ext_code.size(stor0)
        staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                  arg3,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  arg1,
                  arg2,
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0, 'ERC777: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        require ext_code.size(stor0)
        staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2, 0, arg3, 0, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    if not msg.sender:
        revert with 0, 'ERC777: burn from the zero address'
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        mem[ceil32(arg2.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 164] = msg.sender
        mem[ceil32(arg2.length) + 196] = msg.sender
        mem[ceil32(arg2.length) + 228] = 0
        mem[ceil32(arg2.length) + 260] = arg1
        mem[ceil32(arg2.length) + 292] = 192
        mem[ceil32(arg2.length) + 356] = arg2.length
        mem[ceil32(arg2.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + 324] = arg2.length + 224
            mem[arg2.length + ceil32(arg2.length) + 388] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[arg2.length + ceil32(arg2.length) + 420 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 452 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            mem[ceil32(arg2.length) + 324] = floor32(arg2.length) + 256
            mem[floor32(arg2.length) + ceil32(arg2.length) + 420] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(arg2.length) + ceil32(arg2.length) + 452 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 484 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[0] = msg.sender
    mem[32] = 1
    balanceOf[address(msg.sender)] -= arg1
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + 224] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + 288] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + 320 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                        msg.sender,
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                        msg.sender,
                        msg.sender,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        mem[ceil32(arg2.length) + 224] = floor32(arg2.length) + 160
        mem[floor32(arg2.length) + ceil32(arg2.length) + 320] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + 352 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                        msg.sender,
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 384 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                        msg.sender,
                        msg.sender,
    emit Transfer(arg1, msg.sender, 0);
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != msg.sender:
        mem[0] = msg.sender
        if not stor6[address(msg.sender)]:
            mem[32] = sha3(address(arg1), 7)
            if not stor7[address(arg1)][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: caller is not an operator for holder'
        else:
            mem[32] = sha3(address(arg1), 8)
            if stor8[address(arg1)][address(msg.sender)]:
                mem[0] = msg.sender
                mem[32] = sha3(address(arg1), 7)
                if not stor7[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: caller is not an operator for holder'
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if not arg1:
        revert with 0, 'ERC777: burn from the zero address'
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = 0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = 192
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 452 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = floor32(arg3.length) + 256
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 484 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[0] = arg1
    mem[32] = 1
    balanceOf[address(arg1)] -= arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 128
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                        msg.sender,
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                        msg.sender,
                        arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = floor32(arg3.length) + 160
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                        msg.sender,
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Burned(address rg1, address rg2, uint256 rg3, bytes rg4, bytes rg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                        msg.sender,
                        arg1,
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  0,
                  Mask(224, 0, arg2),
                  arg1,
                  0,
}

function operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor6[address(msg.sender)]:
            if not stor7[address(arg1)][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: caller is not an operator for holder'
        else:
            if stor8[address(arg1)][address(msg.sender)]:
                if not stor7[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: caller is not an operator for holder'
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if not arg1:
        revert with 0, 'ERC777: send from the zero address'
    if not arg2:
        revert with 0, 'ERC777: send to the zero address'
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = msg.sender
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 196] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 228] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = 192
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length + 224
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 452 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = floor32(arg4.length) + 256
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = arg2
    mem[32] = 1
    balanceOf[address(arg2)] += arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 96
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg4.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg4.length + 128
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 288] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
            emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                      msg.sender,
                      arg1,
                      arg2,
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 352 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                      msg.sender,
                      arg1,
                      arg2,
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = floor32(arg4.length) + 160
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
            emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                      msg.sender,
                      arg1,
                      arg2,
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 384 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            emit Sent(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5, bytes rg6):
                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                      msg.sender,
                      arg1,
                      arg2,
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  0,
                  Mask(224, 0, arg3),
                  arg1,
                  arg2,
    require ext_code.size(stor0)
    staticcall stor0.getInterfaceImplementer(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if ext_code.hash(arg2):
            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'ERC777: token recipient contract has no implementer for ERC777TokensRecipient'
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0x23de2900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = msg.sender
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 196] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 228] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = 192
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length + 224
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 452 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = floor32(arg4.length) + 256
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
