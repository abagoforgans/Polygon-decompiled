contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address priceOracle;
array of struct allTokens;
array of struct sub_e9f16276;
mapping of uint8 stor4;
mapping of address sub_78dbef5c;
uint8 stor6;

function sub_0e187cac(?) {
    return bool(sub_78dbef5c[address(arg1)])
}

function priceOracle(address arg1) {
    return priceOracle[arg1]
}

function allTokens(uint256 arg1) {
    require arg1 < allTokens.length
    return allTokens[arg1].field_0
}

function sub_78dbef5c(?) {
    return sub_78dbef5c[arg1]
}

function owner() {
    return owner
}

function sub_d52a3c05(?) {
    return bool(stor6)
}

function sub_e9f16276(?) {
    require arg1 < sub_e9f16276.length
    return sub_e9f16276[arg1].field_0
}

function _fallback() payable {
  stop
}

function sub_c5947041(?) {
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function addOperator(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function removeOperator(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function convertPriceFromTokensToWei(address arg1, uint256 arg2) {
    revert with 0, 'Not implemented'
}

function sub_6c8251d2(?) {
    if not stor6:
        return bool(stor6)
    return bool(sub_78dbef5c[address(arg1)])
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeToken(address arg1) {
    require msg.sender == owner
    priceOracle[address(arg1)] = 0
    sub_78dbef5c[address(arg1)] = 0
    # nil
}

function sub_223e6b5b(?) {
    idx = 0
    while idx < ('cd', 4).length:
        if address(cd[((32 * idx) + cd[4] + 36)]) != address(cd[36]):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_0275d5c8(?) {
    require msg.sender == owner
    require not priceOracle[address(arg1)]
    require not sub_78dbef5c[address(arg1)]
    sub_78dbef5c[address(arg1)] = arg2
    allTokens.length++
    allTokens[allTokens.length].field_0 = arg1
}

function withdrawEthFromBalance() {
    if not stor4[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Access denied'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addToken(address arg1, address arg2) {
    require msg.sender == owner
    if priceOracle[address(arg1)]:
        revert with 0, 'Token already set'
    if sub_78dbef5c[address(arg1)]:
        revert with 0, 'Token already set'
    priceOracle[address(arg1)] = arg2
    allTokens.length++
    allTokens[allTokens.length].field_0 = arg1
    sub_e9f16276.length++
    sub_e9f16276[sub_e9f16276.length].field_0 = arg1
}

function sub_90a308a5(?) {
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if priceOracle[address(cd[((32 * idx) + cd[4] + 36)])]:
            idx = idx + 1
            continue 
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if sub_78dbef5c[address(cd[((32 * idx) + cd[4] + 36)])]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function withdrawTokenFromBalance(address arg1, address arg2) {
    if not stor4[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Access denied'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1a05e21d(?) {
    if sub_e9f16276.length:
        mem[128] = address(sub_e9f16276.field_0)
        if (32 * sub_e9f16276.length) + 32 > 64:
            mem[160] = address(sub_e9f16276.field_256)
            idx = 160
            s = 1
            while (32 * sub_e9f16276.length) + 96 > idx:
                mem[idx + 32] = sub_e9f16276[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_e9f16276.length) + 128] = 32
    mem[(32 * sub_e9f16276.length) + 160] = sub_e9f16276.length
    mem[(32 * sub_e9f16276.length) + 192 len floor32(sub_e9f16276.length)] = mem[128 len floor32(sub_e9f16276.length)]
    return memory
      from (32 * sub_e9f16276.length) + 128
       len (96 * sub_e9f16276.length) + 64
}

function sub_1308cbef(?) {
    if not priceOracle[address(arg1)]:
        revert with 0, 'Oracle is 0x0'
    require ext_code.size(priceOracle[address(arg1)])
    call priceOracle[address(arg1)].ETHPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(-ext_call.return_data[0] + 36) <= 0:
        revert with 0, 'No power (decimals)'
    require 10^uint8(-ext_call.return_data[0] + 36)
    return uint128(arg2 * ext_call.return_data[0] / 10^uint8(-ext_call.return_data[0] + 36))
}

function sub_0352bc58(?) {
    if not allTokens.length:
        mem[(32 * allTokens.length) + 128] = 32
        mem[(32 * allTokens.length) + 160] = allTokens.length
        mem[(32 * allTokens.length) + 192 len floor32(allTokens.length)] = mem[128 len floor32(allTokens.length)]
        return memory
          from (32 * allTokens.length) + 128
           len (96 * allTokens.length) + 64
    mem[128] = address(allTokens.field_0)
    idx = 128
    s = 0
    while (32 * allTokens.length) + 96 > idx:
        mem[idx + 32] = allTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allTokens.length) + 192 len floor32(allTokens.length)] = mem[128 len floor32(allTokens.length)]
    return Array(len=allTokens.length, data=mem[128 len floor32(allTokens.length)], mem[(32 * allTokens.length) + floor32(allTokens.length) + 192 len (32 * allTokens.length) - floor32(allTokens.length)]), 
}

function sub_1dbabd6f(?) {
    if not sub_78dbef5c[address(arg1)]:
        revert with 0, 'Oracle is 0x0'
    require ext_code.size(sub_78dbef5c[address(arg1)])
    call sub_78dbef5c[address(arg1)].getExpectedRate(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Rate is undefined'
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(-ext_call.return_data[0] + 36) <= 0:
        revert with 0, 'No power (decimals)'
    require 10^uint8(-ext_call.return_data[0] + 36)
    return uint128(arg2 * ext_call.return_data[32] / 10^uint8(-ext_call.return_data[0] + 36))
}

function sub_fee16ea9(?) {
    if not stor4[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Access denied'
    require stor6
    require ext_code.size(sub_78dbef5c[address(arg1)])
    call sub_78dbef5c[address(arg1)].getExpectedRate(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_78dbef5c[address(arg1)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_78dbef5c[address(arg1)], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_78dbef5c[address(arg1)])
    call sub_78dbef5c[address(arg1)].swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != this.address:
        call arg2 with:
           value (10000 * ext_call.return_data[0]) - (arg4 * ext_call.return_data[0]) / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4e82a391(?) {
    if not stor4[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Access denied'
    if stor6:
        if sub_78dbef5c[address(arg1)]:
            require ext_code.size(sub_78dbef5c[address(arg1)])
            call sub_78dbef5c[address(arg1)].getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_78dbef5c[address(arg1)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_78dbef5c[address(arg1)], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_78dbef5c[address(arg1)])
            call sub_78dbef5c[address(arg1)].swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(arg1), arg2, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if this.address != this.address:
                call this.address with:
                   value 10000 * ext_call.return_data[0] / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function getPriceInToken(address arg1, uint128 arg2) {
    if not sub_78dbef5c[address(arg1)]:
        if not priceOracle[address(arg1)]:
            revert with 0, 'Oracle is 0x0'
        require ext_code.size(priceOracle[address(arg1)])
        call priceOracle[address(arg1)].ETHPrice() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(-ext_call.return_data[0] + 36) <= 0:
            revert with 0, 'No power (decimals)'
        if 10^uint8(-ext_call.return_data[0] + 36):
            return uint128(arg2 * ext_call.return_data[0] / 10^uint8(-ext_call.return_data[0] + 36))
    else:
        if not sub_78dbef5c[address(arg1)]:
            revert with 0, 'Oracle is 0x0'
        require ext_code.size(sub_78dbef5c[address(arg1)])
        call sub_78dbef5c[address(arg1)].getExpectedRate(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            revert with 0, 'Rate is undefined'
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(-ext_call.return_data[0] + 36) <= 0:
            revert with 0, 'No power (decimals)'
        if 10^uint8(-ext_call.return_data[0] + 36):
            return uint128(arg2 * ext_call.return_data[32] / 10^uint8(-ext_call.return_data[0] + 36))
    ('iszero', ('exp', 10, ('mask_shl', 8, 0, 0, ('add', 36, ('mul', -1, ('ext_call.return_data', 0, 32))))))
    revert
}



}
