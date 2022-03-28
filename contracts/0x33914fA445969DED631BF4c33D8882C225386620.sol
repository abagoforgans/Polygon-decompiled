contract main {




// =====================  Runtime code  =====================


const isPluginInterface = 1


uint8 paused; offset 160
address owner;
address coreContractAddress;
uint16 ownerFee; offset 160
address sub_03c2444eAddress;
mapping of struct cutieIdToAuction;
address tokenRegistryAddress;
uint8 isSaleMarket; offset 160
address stor5;

function sub_03c2444e(?) {
    return sub_03c2444eAddress
}

function paused() {
    return bool(paused)
}

function isSaleMarket() {
    return bool(isSaleMarket)
}

function cutieIdToAuction(uint40 arg1) {
    return cutieIdToAuction[arg1 % 1099511627776].field_0, 
           cutieIdToAuction[arg1 % 1099511627776].field_0,
           cutieIdToAuction[arg1 % 1099511627776].field_256,
           cutieIdToAuction[arg1 % 1099511627776].field_256,
           cutieIdToAuction[arg1 % 1099511627776].field_456,
           cutieIdToAuction[arg1 % 1099511627776].field_512
}

function owner() {
    return owner
}

function tokenRegistry() {
    return tokenRegistryAddress
}

function ownerFee() {
    return ownerFee
}

function coreContract() {
    return coreContractAddress
}

function onRemove() {
  stop
}

function _fallback() payable {
  stop
}

function run(uint40 arg1, uint256 arg2, address arg3) payable {
    revert
}

function runSigned(uint40 arg1, uint256 arg2, address arg3) payable {
    revert
}

function sub_4c2a6dcb(?) {
    require msg.sender == owner
    sub_03c2444eAddress = arg1
}

function isOnAuction(uint40 arg1) {
    return (cutieIdToAuction[arg1 << 216].field_456 > 0)
}

function setOperator(address arg1) {
    require msg.sender == owner
    require arg1
    stor5 = arg1
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function setFee(uint16 arg1) {
    require msg.sender == owner
    require arg1 <= 10000
    ownerFee = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    if owner != msg.sender:
        require msg.sender == coreContractAddress
    if eth.balance(this.address) > 0:
        call coreContractAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEthFromBalance() {
    if owner != msg.sender:
        require coreContractAddress == msg.sender
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x776247c4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call coreContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setup(address arg1, address arg2, uint16 arg3) {
    require msg.sender == owner
    require arg3 <= 10000
    ownerFee = arg3
    require ext_code.size(arg1)
    call arg1.isCutieCore() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    coreContractAddress = arg1
    tokenRegistryAddress = arg2
}

function withdrawTokenFromBalance(address arg1, address arg2) {
    if owner != msg.sender:
        if stor5 != msg.sender:
            require coreContractAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cancelActiveAuctionWhenPaused(uint40 arg1) {
    require paused
    require msg.sender == owner
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    cutieIdToAuction[arg1 << 216].field_0 = 0
    cutieIdToAuction[arg1 << 216].field_256 = 0
    cutieIdToAuction[arg1 << 216].field_512 = 0
    cutieIdToAuction[arg1 << 216].field_768 = 0
    idx = 0
    while cutieIdToAuction[arg1 << 216].field_768 > idx:
        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args cutieIdToAuction[arg1 << 216].field_256, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1 % 1099511627776);
}

function cancelActiveAuction(uint40 arg1) {
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    require cutieIdToAuction[arg1 << 216].field_256 == msg.sender
    cutieIdToAuction[arg1 << 216].field_0 = 0
    cutieIdToAuction[arg1 << 216].field_256 = 0
    cutieIdToAuction[arg1 << 216].field_512 = 0
    cutieIdToAuction[arg1 << 216].field_768 = 0
    idx = 0
    while cutieIdToAuction[arg1 << 216].field_768 > idx:
        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args cutieIdToAuction[arg1 << 216].field_256, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1 % 1099511627776);
}

function cancelCreatorAuction(uint40 arg1) {
    if stor5 != msg.sender:
        require msg.sender == owner
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    require cutieIdToAuction[arg1 << 216].field_256 == coreContractAddress
    cutieIdToAuction[arg1 << 216].field_0 = 0
    cutieIdToAuction[arg1 << 216].field_256 = 0
    cutieIdToAuction[arg1 << 216].field_512 = 0
    cutieIdToAuction[arg1 << 216].field_768 = 0
    idx = 0
    while cutieIdToAuction[arg1 << 216].field_768 > idx:
        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1 % 1099511627776);
}

function getCurrentPrice(uint40 arg1) {
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    if block.timestamp % 1099511627776 <= cutieIdToAuction[arg1 << 216].field_456:
        if 0 >= cutieIdToAuction[arg1 << 216].field_416:
            return cutieIdToAuction[arg1 << 216].field_128
        if cutieIdToAuction[arg1 << 216].field_416:
            return uint128(cutieIdToAuction[arg1 << 216].field_0 + (0 / cutieIdToAuction[arg1 << 216].field_416))
    else:
        if block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776 >= cutieIdToAuction[arg1 << 216].field_416:
            return cutieIdToAuction[arg1 << 216].field_128
        if cutieIdToAuction[arg1 << 216].field_416:
            return uint128(cutieIdToAuction[arg1 << 216].field_0 + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416))
    ('iszero', ('field', 416, ('stor', ('map', ('mask_shl', 40, 0, 216, ('param', 'arg1')), ('name', 'cutieIdToAuction', 3)))))
    revert
}

function getAuctionInfo(uint40 arg1) {
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    if cutieIdToAuction[arg1 << 216].field_768:
        mem[128] = cutieIdToAuction[arg1 << 216][3].field_0
        idx = 128
        s = 0
        while (32 * cutieIdToAuction[arg1 << 216].field_768) + 96 > idx:
            mem[idx + 32] = cutieIdToAuction[arg1 << 216][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * cutieIdToAuction[arg1 << 216].field_768) + 384 len floor32(cutieIdToAuction[arg1 << 216].field_768)] = mem[128 len floor32(cutieIdToAuction[arg1 << 216].field_768)]
    return cutieIdToAuction[arg1 << 216].field_256, 
           cutieIdToAuction[arg1 << 216].field_0,
           cutieIdToAuction[arg1 << 216].field_0,
           cutieIdToAuction[arg1 << 216].field_256,
           cutieIdToAuction[arg1 << 216].field_256,
           cutieIdToAuction[arg1 << 216].field_512,
           Array(len=cutieIdToAuction[arg1 << 216].field_768, data=mem[128 len floor32(cutieIdToAuction[arg1 << 216].field_768)], mem[(32 * cutieIdToAuction[arg1 << 216].field_768) + floor32(cutieIdToAuction[arg1 << 216].field_768) + 384 len (32 * cutieIdToAuction[arg1 << 216].field_768) - floor32(cutieIdToAuction[arg1 << 216].field_768)])
}

function sub_b9fbad0d(?) payable {
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x90a308a5 with:
         gas gas_remaining wei
        args Array(len=arg6.length, data=call.data[arg6 + 36 len 32 * arg6.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(coreContractAddress)
    call coreContractAddress.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg5
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg5), this.address, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[576 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if coreContractAddress != arg5:
        require arg4 % 1099511627776 >= 60
        cutieIdToAuction[arg1 << 216].field_0 = arg2
        cutieIdToAuction[arg1 << 216].field_128 = arg3
        cutieIdToAuction[arg1 << 216].field_256 = arg5
        cutieIdToAuction[arg1 << 216].field_416 = arg4 % 1099511627776
        cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
        cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
        cutieIdToAuction[arg1 << 216].field_768 = arg6.length
        if not arg6.length:
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 576
            while (32 * arg6.length) + 576 > idx:
                cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * arg6.length) + 768 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
        emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 216, msg.value << 128, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg6.length) + floor32(arg6.length) + 768 len (32 * arg6.length) - floor32(arg6.length)]), arg1 % 1099511627776
    else:
        if sub_03c2444eAddress:
            mem[(32 * arg6.length) + 576] = 0x6762ca5900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg6.length) + 580] = arg1 % 1099511627776
            require ext_code.size(sub_03c2444eAddress)
            call sub_03c2444eAddress.0x6762ca59 with:
                 gas gas_remaining wei
                args (arg1 % 1099511627776)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not arg4 % 1099511627776:
            require ext_code.size(coreContractAddress)
            call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, arg1 % 1099511627776
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg4 % 1099511627776 >= 60
            cutieIdToAuction[arg1 << 216].field_0 = arg2
            cutieIdToAuction[arg1 << 216].field_128 = arg3
            cutieIdToAuction[arg1 << 216].field_256 = arg5
            cutieIdToAuction[arg1 << 216].field_416 = arg4 % 1099511627776
            cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
            cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
            cutieIdToAuction[arg1 << 216].field_768 = arg6.length
            if not arg6.length:
                idx = 0
                while cutieIdToAuction[arg1 << 216].field_768 > idx:
                    cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 576
                while (32 * arg6.length) + 576 > idx:
                    cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                while cutieIdToAuction[arg1 << 216].field_768 > idx:
                    cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(32 * arg6.length) + 768 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 216, msg.value << 128, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg6.length) + floor32(arg6.length) + 768 len (32 * arg6.length) - floor32(arg6.length)]), arg1 % 1099511627776
}

function bid(uint40 arg1) payable {
    require msg.value <= test266151307()
    require cutieIdToAuction[arg1 << 216].field_456 > 0
    if block.timestamp % 1099511627776 <= cutieIdToAuction[arg1 << 216].field_456:
        if 0 >= cutieIdToAuction[arg1 << 216].field_416:
            require uint128(msg.value) >= cutieIdToAuction[arg1 << 216].field_128
            cutieIdToAuction[arg1 << 216].field_0 = 0
            cutieIdToAuction[arg1 << 216].field_256 = 0
            cutieIdToAuction[arg1 << 216].field_512 = 0
            cutieIdToAuction[arg1 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if cutieIdToAuction[arg1 << 216].field_128 > 0:
                if coreContractAddress != cutieIdToAuction[arg1 << 216].field_256:
                    call cutieIdToAuction[arg1 << 216].field_256 with:
                       value uint128(cutieIdToAuction[arg1 << 216].field_128 - (uint128(cutieIdToAuction[arg1 << 216].field_128 * ownerFee) / 10000)) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessful(cutieIdToAuction[arg1 << 216].field_128, arg1 % 1099511627776, msg.sender);
        else:
            require cutieIdToAuction[arg1 << 216].field_416
            require uint128(msg.value) >= uint128(cutieIdToAuction[arg1 << 216].field_0 + (0 / cutieIdToAuction[arg1 << 216].field_416))
            cutieIdToAuction[arg1 << 216].field_0 = 0
            cutieIdToAuction[arg1 << 216].field_256 = 0
            cutieIdToAuction[arg1 << 216].field_512 = 0
            cutieIdToAuction[arg1 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if uint128(cutieIdToAuction[arg1 << 216].field_0 + (0 / cutieIdToAuction[arg1 << 216].field_416)) > 0:
                if coreContractAddress != cutieIdToAuction[arg1 << 216].field_256:
                    call cutieIdToAuction[arg1 << 216].field_256 with:
                       value uint128(cutieIdToAuction[arg1 << 216].field_0 + (0 / cutieIdToAuction[arg1 << 216].field_416) - (uint128((cutieIdToAuction[arg1 << 216].field_0 * ownerFee) + (0 / cutieIdToAuction[arg1 << 216].field_416 * ownerFee)) / 10000)) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessful(uint128(cutieIdToAuction[arg1 << 216].field_0 + (0 / cutieIdToAuction[arg1 << 216].field_416)), arg1 % 1099511627776, msg.sender);
    else:
        if block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776 >= cutieIdToAuction[arg1 << 216].field_416:
            require uint128(msg.value) >= cutieIdToAuction[arg1 << 216].field_128
            cutieIdToAuction[arg1 << 216].field_0 = 0
            cutieIdToAuction[arg1 << 216].field_256 = 0
            cutieIdToAuction[arg1 << 216].field_512 = 0
            cutieIdToAuction[arg1 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if cutieIdToAuction[arg1 << 216].field_128 > 0:
                if coreContractAddress != cutieIdToAuction[arg1 << 216].field_256:
                    call cutieIdToAuction[arg1 << 216].field_256 with:
                       value uint128(cutieIdToAuction[arg1 << 216].field_128 - (uint128(cutieIdToAuction[arg1 << 216].field_128 * ownerFee) / 10000)) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessful(cutieIdToAuction[arg1 << 216].field_128, arg1 % 1099511627776, msg.sender);
        else:
            require cutieIdToAuction[arg1 << 216].field_416
            require uint128(msg.value) >= uint128(cutieIdToAuction[arg1 << 216].field_0 + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416))
            cutieIdToAuction[arg1 << 216].field_0 = 0
            cutieIdToAuction[arg1 << 216].field_256 = 0
            cutieIdToAuction[arg1 << 216].field_512 = 0
            cutieIdToAuction[arg1 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if uint128(cutieIdToAuction[arg1 << 216].field_0 + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416)) > 0:
                if coreContractAddress != cutieIdToAuction[arg1 << 216].field_256:
                    call cutieIdToAuction[arg1 << 216].field_256 with:
                       value uint128(cutieIdToAuction[arg1 << 216].field_0 + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416) - (uint128((cutieIdToAuction[arg1 << 216].field_0 * ownerFee) + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416 * ownerFee)) / 10000)) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessful(uint128(cutieIdToAuction[arg1 << 216].field_0 + ((cutieIdToAuction[arg1 << 216].field_128 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg1 << 216].field_0 * block.timestamp - cutieIdToAuction[arg1 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg1 << 216].field_416)), arg1 % 1099511627776, msg.sender);
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_70f6fcad(?) {
    require not paused
    if not cutieIdToAuction[arg2 << 216].field_768:
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args 64, address(arg1), cutieIdToAuction[arg2 << 216].field_768
    else:
        mem[196] = cutieIdToAuction[arg2 << 216][3].field_0
        idx = 196
        s = 0
        while (32 * cutieIdToAuction[arg2 << 216].field_768) + 196 > idx + 32:
            mem[idx + 32] = cutieIdToAuction[arg2 << 216][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args Array(len=cutieIdToAuction[arg2 << 216].field_768, data=mem[196 len 32 * cutieIdToAuction[arg2 << 216].field_768]), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x6c8251d2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0]
    require cutieIdToAuction[arg2 << 216].field_456 > 0
    if block.timestamp % 1099511627776 <= cutieIdToAuction[arg2 << 216].field_456:
        if 0 >= cutieIdToAuction[arg2 << 216].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg1), cutieIdToAuction[arg2 << 216].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[arg2 << 216].field_0 = 0
            cutieIdToAuction[arg2 << 216].field_256 = 0
            cutieIdToAuction[arg2 << 216].field_512 = 0
            cutieIdToAuction[arg2 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg2 << 216].field_768 > idx:
                cutieIdToAuction[arg2 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            if coreContractAddress == cutieIdToAuction[arg2 << 216].field_256:
                call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg1), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args 0, 0, cutieIdToAuction[arg2 << 216].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, cutieIdToAuction[arg2 << 216].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg1), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[arg2 << 216].field_0, uint128(ext_call.return_data[0]), arg2 % 1099511627776, msg.sender, arg1);
        else:
            require cutieIdToAuction[arg2 << 216].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg1), uint128(cutieIdToAuction[arg2 << 216].field_0 + (0 / cutieIdToAuction[arg2 << 216].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[arg2 << 216].field_0 = 0
            cutieIdToAuction[arg2 << 216].field_256 = 0
            cutieIdToAuction[arg2 << 216].field_512 = 0
            cutieIdToAuction[arg2 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg2 << 216].field_768 > idx:
                cutieIdToAuction[arg2 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            if coreContractAddress == cutieIdToAuction[arg2 << 216].field_256:
                call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg1), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args 0, 0, cutieIdToAuction[arg2 << 216].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, cutieIdToAuction[arg2 << 216].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg1), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[arg2 << 216].field_0 + (0 / cutieIdToAuction[arg2 << 216].field_416) << 128, uint128(ext_call.return_data[0]), arg2 % 1099511627776, msg.sender, arg1);
    else:
        if block.timestamp - cutieIdToAuction[arg2 << 216].field_456 % 1099511627776 >= cutieIdToAuction[arg2 << 216].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg1), cutieIdToAuction[arg2 << 216].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[arg2 << 216].field_0 = 0
            cutieIdToAuction[arg2 << 216].field_256 = 0
            cutieIdToAuction[arg2 << 216].field_512 = 0
            cutieIdToAuction[arg2 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg2 << 216].field_768 > idx:
                cutieIdToAuction[arg2 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            if coreContractAddress == cutieIdToAuction[arg2 << 216].field_256:
                call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg1), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args 0, 0, cutieIdToAuction[arg2 << 216].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, cutieIdToAuction[arg2 << 216].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg1), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[arg2 << 216].field_0, uint128(ext_call.return_data[0]), arg2 % 1099511627776, msg.sender, arg1);
        else:
            require cutieIdToAuction[arg2 << 216].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg1), uint128(cutieIdToAuction[arg2 << 216].field_0 + ((cutieIdToAuction[arg2 << 216].field_128 * block.timestamp - cutieIdToAuction[arg2 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg2 << 216].field_0 * block.timestamp - cutieIdToAuction[arg2 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg2 << 216].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[arg2 << 216].field_0 = 0
            cutieIdToAuction[arg2 << 216].field_256 = 0
            cutieIdToAuction[arg2 << 216].field_512 = 0
            cutieIdToAuction[arg2 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg2 << 216].field_768 > idx:
                cutieIdToAuction[arg2 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            if coreContractAddress == cutieIdToAuction[arg2 << 216].field_256:
                call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg1), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args 0, 0, cutieIdToAuction[arg2 << 216].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, cutieIdToAuction[arg2 << 216].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg1), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[arg2 << 216].field_0 + ((cutieIdToAuction[arg2 << 216].field_128 * block.timestamp - cutieIdToAuction[arg2 << 216].field_456 % 1099511627776) - (cutieIdToAuction[arg2 << 216].field_0 * block.timestamp - cutieIdToAuction[arg2 << 216].field_456 % 1099511627776) / cutieIdToAuction[arg2 << 216].field_416) << 128, uint128(ext_call.return_data[0]), arg2 % 1099511627776, msg.sender, arg1);
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require not paused
    mem[128 len arg3.length] = arg3[all]
    require 5 == arg3.length
    require 4 < arg3.length
    require 3 < arg3.length
    require 2 < arg3.length
    require 1 < arg3.length
    require 0 < arg3.length
    if not cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768:
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args 64, msg.sender, cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768
    else:
        mem[ceil32(arg3.length) + 228] = cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776][3].field_0
        idx = ceil32(arg3.length) + 228
        s = 0
        while ceil32(arg3.length) + (32 * cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768) + 228 > idx + 32:
            mem[idx + 32] = cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args Array(len=cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768, data=mem[ceil32(arg3.length) + 228 len 32 * cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 > 0
    if block.timestamp % 1099511627776 <= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456:
        if 0 >= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args msg.sender, cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 >= ext_call.return_data[16 len 16]
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if coreContractAddress != cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                require ext_code.size(msg.sender)
                call msg.sender.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, msg.sender);
        else:
            require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args msg.sender, uint128(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + (0 / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 >= ext_call.return_data[16 len 16]
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if coreContractAddress != cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                require ext_code.size(msg.sender)
                call msg.sender.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + (0 / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416) << 128, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, msg.sender);
    else:
        if block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776 >= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args msg.sender, cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 >= ext_call.return_data[16 len 16]
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if coreContractAddress != cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                require ext_code.size(msg.sender)
                call msg.sender.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, msg.sender);
        else:
            require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args msg.sender, uint128(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + ((cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) - (cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 >= ext_call.return_data[16 len 16]
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            if coreContractAddress != cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                require ext_code.size(msg.sender)
                call msg.sender.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + ((cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) - (cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416) << 128, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, msg.sender);
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createAuction(uint40 arg1, uint128 arg2, uint128 arg3, uint40 arg4, address arg5) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    require not paused
    require ext_code.size(coreContractAddress)
    call coreContractAddress.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg5
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg5), this.address, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320] = arg2
    mem[352] = arg3
    mem[384] = arg5
    mem[416] = arg4 % 549755813888
    mem[448] = block.timestamp % 1099511627776
    mem[480] = uint128(msg.value)
    if arg4 % 1099511627776 >= 549755813888:
        if coreContractAddress != arg5:
            require arg4 % 549755813888 >= 60
            cutieIdToAuction[arg1 << 216].field_0 = arg2
            cutieIdToAuction[arg1 << 216].field_128 = arg3
            cutieIdToAuction[arg1 << 216].field_256 = arg5
            cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
            cutieIdToAuction[arg1 << 216].field_455 = 0
            cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
            cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
            cutieIdToAuction[arg1 << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, 0, arg1 % 1099511627776
        else:
            if sub_03c2444eAddress:
                require ext_code.size(sub_03c2444eAddress)
                call sub_03c2444eAddress.0x6762ca59 with:
                     gas gas_remaining wei
                    args (arg1 % 1099511627776)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not arg4 % 549755813888:
                require ext_code.size(coreContractAddress)
                call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor5, arg1 % 1099511627776
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require arg4 % 549755813888 >= 60
                cutieIdToAuction[arg1 << 216].field_0 = arg2
                cutieIdToAuction[arg1 << 216].field_128 = arg3
                cutieIdToAuction[arg1 << 216].field_256 = arg5
                cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                cutieIdToAuction[arg1 << 216].field_455 = 0
                cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                cutieIdToAuction[arg1 << 216].field_768 = 0
                idx = 0
                while cutieIdToAuction[arg1 << 216].field_768 > idx:
                    cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, 0, arg1 % 1099511627776
    else:
        if coreContractAddress == arg5:
            mem[544] = 0x1a05e21d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.0x1a05e21d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 544
            require return_data.size >= 32
            require mem[544] <= 4294967296
            require mem[544] + 32 <= return_data.size
            require mem[mem[544] + 544] <= 4294967296 and mem[544] + (32 * mem[mem[544] + 544]) + 32 <= return_data.size
            mem[512] = mem[544] + 544
            if coreContractAddress != arg5:
                require arg4 % 549755813888 >= 60
                mem[32] = 3
                cutieIdToAuction[arg1 << 216].field_0 = arg2
                cutieIdToAuction[arg1 << 216].field_128 = arg3
                cutieIdToAuction[arg1 << 216].field_256 = arg5
                cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                cutieIdToAuction[arg1 << 216].field_455 = 0
                cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                cutieIdToAuction[arg1 << 216].field_768 = mem[mem[544] + 544]
                mem[0] = sha3(arg1 << 216, 3) + 3
                if not mem[mem[544] + 544]:
                    idx = 0
                    while cutieIdToAuction[arg1 << 216].field_768 > idx:
                        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 544] = arg2
                    mem[ceil32(return_data.size) + 576] = arg3
                    mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                    mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                    mem[ceil32(return_data.size) + 672] = 160
                    mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                    _351 = mem[mem[512]]
                    mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                    emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _351) + 32], arg1 % 1099511627776
                else:
                    s = 0
                    idx = mem[544] + 576
                    while mem[544] + (32 * mem[mem[544] + 544]) + 576 > idx:
                        cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[mem[544] + 544]) + 31) >> 5
                    while cutieIdToAuction[arg1 << 216].field_768 > idx:
                        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 544] = arg2
                    mem[ceil32(return_data.size) + 576] = arg3
                    mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                    mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                    mem[ceil32(return_data.size) + 672] = 160
                    mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                    _549 = mem[mem[512]]
                    mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                    emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _549) + 32], arg1 % 1099511627776
            else:
                if not sub_03c2444eAddress:
                    if not arg4 % 549755813888:
                        require ext_code.size(coreContractAddress)
                        call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor5, arg1 % 1099511627776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require arg4 % 549755813888 >= 60
                        mem[32] = 3
                        cutieIdToAuction[arg1 << 216].field_0 = arg2
                        cutieIdToAuction[arg1 << 216].field_128 = arg3
                        cutieIdToAuction[arg1 << 216].field_256 = arg5
                        cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                        cutieIdToAuction[arg1 << 216].field_455 = 0
                        cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                        cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                        cutieIdToAuction[arg1 << 216].field_768 = mem[mem[544] + 544]
                        mem[0] = sha3(arg1 << 216, 3) + 3
                        if not mem[mem[544] + 544]:
                            idx = 0
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _359 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _359) + 32], arg1 % 1099511627776
                        else:
                            s = 0
                            idx = mem[544] + 576
                            while mem[544] + (32 * mem[mem[544] + 544]) + 576 > idx:
                                cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[mem[544] + 544]) + 31) >> 5
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _557 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _557) + 32], arg1 % 1099511627776
                else:
                    mem[ceil32(return_data.size) + 544] = 0x6762ca5900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 548] = arg1 % 1099511627776
                    require ext_code.size(sub_03c2444eAddress)
                    call sub_03c2444eAddress.0x6762ca59 with:
                         gas gas_remaining wei
                        args (arg1 % 1099511627776)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg4 % 549755813888:
                        require ext_code.size(coreContractAddress)
                        call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor5, arg1 % 1099511627776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require arg4 % 549755813888 >= 60
                        mem[0] = arg1 % 1099511627776
                        mem[32] = 3
                        cutieIdToAuction[arg1 << 216].field_0 = arg2
                        cutieIdToAuction[arg1 << 216].field_128 = arg3
                        cutieIdToAuction[arg1 << 216].field_256 = arg5
                        cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                        cutieIdToAuction[arg1 << 216].field_455 = 0
                        cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                        cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                        _161 = mem[mem[512]]
                        cutieIdToAuction[arg1 << 216].field_768 = mem[mem[512]]
                        mem[0] = sha3(arg1 << 216, 3) + 3
                        if not _161:
                            idx = 0
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _367 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _367) + 32], arg1 % 1099511627776
                        else:
                            s = 0
                            idx = mem[512] + 32
                            while mem[512] + (32 * _161) + 32 > idx:
                                cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * _161) + 31) >> 5
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _565 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _565) + 32], arg1 % 1099511627776
        else:
            mem[544] = 0x352bc5800000000000000000000000000000000000000000000000000000000
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.0x352bc58 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 544
            require return_data.size >= 32
            require mem[544] <= 4294967296
            require mem[544] + 32 <= return_data.size
            require mem[mem[544] + 544] <= 4294967296 and mem[544] + (32 * mem[mem[544] + 544]) + 32 <= return_data.size
            mem[512] = mem[544] + 544
            if coreContractAddress != arg5:
                require arg4 % 549755813888 >= 60
                mem[32] = 3
                cutieIdToAuction[arg1 << 216].field_0 = arg2
                cutieIdToAuction[arg1 << 216].field_128 = arg3
                cutieIdToAuction[arg1 << 216].field_256 = arg5
                cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                cutieIdToAuction[arg1 << 216].field_455 = 0
                cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                cutieIdToAuction[arg1 << 216].field_768 = mem[mem[544] + 544]
                mem[0] = sha3(arg1 << 216, 3) + 3
                if not mem[mem[544] + 544]:
                    idx = 0
                    while cutieIdToAuction[arg1 << 216].field_768 > idx:
                        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 544] = arg2
                    mem[ceil32(return_data.size) + 576] = arg3
                    mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                    mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                    mem[ceil32(return_data.size) + 672] = 160
                    mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                    _375 = mem[mem[512]]
                    mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                    emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _375) + 32], arg1 % 1099511627776
                else:
                    s = 0
                    idx = mem[544] + 576
                    while mem[544] + (32 * mem[mem[544] + 544]) + 576 > idx:
                        cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[mem[544] + 544]) + 31) >> 5
                    while cutieIdToAuction[arg1 << 216].field_768 > idx:
                        cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[ceil32(return_data.size) + 544] = arg2
                    mem[ceil32(return_data.size) + 576] = arg3
                    mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                    mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                    mem[ceil32(return_data.size) + 672] = 160
                    mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                    _573 = mem[mem[512]]
                    mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                    emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _573) + 32], arg1 % 1099511627776
            else:
                if not sub_03c2444eAddress:
                    if not arg4 % 549755813888:
                        require ext_code.size(coreContractAddress)
                        call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor5, arg1 % 1099511627776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require arg4 % 549755813888 >= 60
                        mem[32] = 3
                        cutieIdToAuction[arg1 << 216].field_0 = arg2
                        cutieIdToAuction[arg1 << 216].field_128 = arg3
                        cutieIdToAuction[arg1 << 216].field_256 = arg5
                        cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                        cutieIdToAuction[arg1 << 216].field_455 = 0
                        cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                        cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                        cutieIdToAuction[arg1 << 216].field_768 = mem[mem[544] + 544]
                        mem[0] = sha3(arg1 << 216, 3) + 3
                        if not mem[mem[544] + 544]:
                            idx = 0
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _383 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _383) + 32], arg1 % 1099511627776
                        else:
                            s = 0
                            idx = mem[544] + 576
                            while mem[544] + (32 * mem[mem[544] + 544]) + 576 > idx:
                                cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * mem[mem[544] + 544]) + 31) >> 5
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _581 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _581) + 32], arg1 % 1099511627776
                else:
                    mem[ceil32(return_data.size) + 544] = 0x6762ca5900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 548] = arg1 % 1099511627776
                    require ext_code.size(sub_03c2444eAddress)
                    call sub_03c2444eAddress.0x6762ca59 with:
                         gas gas_remaining wei
                        args (arg1 % 1099511627776)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg4 % 549755813888:
                        require ext_code.size(coreContractAddress)
                        call coreContractAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor5, arg1 % 1099511627776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require arg4 % 549755813888 >= 60
                        mem[0] = arg1 % 1099511627776
                        mem[32] = 3
                        cutieIdToAuction[arg1 << 216].field_0 = arg2
                        cutieIdToAuction[arg1 << 216].field_128 = arg3
                        cutieIdToAuction[arg1 << 216].field_256 = arg5
                        cutieIdToAuction[arg1 << 216].field_416 = arg4 % 549755813888
                        cutieIdToAuction[arg1 << 216].field_455 = 0
                        cutieIdToAuction[arg1 << 216].field_456 = block.timestamp % 1099511627776
                        cutieIdToAuction[arg1 << 216].field_512 = uint128(msg.value)
                        _172 = mem[mem[512]]
                        cutieIdToAuction[arg1 << 216].field_768 = mem[mem[512]]
                        mem[0] = sha3(arg1 << 216, 3) + 3
                        if not _172:
                            idx = 0
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _391 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _391) + 32], arg1 % 1099511627776
                        else:
                            s = 0
                            idx = mem[512] + 32
                            while mem[512] + (32 * _172) + 32 > idx:
                                cutieIdToAuction[arg1 << 216][s + 3].field_0 = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * _172) + 31) >> 5
                            while cutieIdToAuction[arg1 << 216].field_768 > idx:
                                cutieIdToAuction[arg1 << 216][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            mem[ceil32(return_data.size) + 544] = arg2
                            mem[ceil32(return_data.size) + 576] = arg3
                            mem[ceil32(return_data.size) + 608] = arg4 % 549755813888
                            mem[ceil32(return_data.size) + 640] = uint128(msg.value)
                            mem[ceil32(return_data.size) + 672] = 160
                            mem[ceil32(return_data.size) + 704] = mem[mem[512]]
                            _589 = mem[mem[512]]
                            mem[ceil32(return_data.size) + 736 len floor32(mem[mem[512]])] = mem[mem[512] + 32 len floor32(mem[mem[512]])]
                            emit 0x204860a5: arg2 << 128, arg3 << 128, arg4 << 217, msg.value << 128, 160, mem[ceil32(return_data.size) + 704 len (32 * _589) + 32], arg1 % 1099511627776
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require arg2 <= test266151307()
    require not paused
    mem[128 len arg4.length] = arg4[all]
    require 5 == arg4.length
    require 4 < arg4.length
    require 3 < arg4.length
    require 2 < arg4.length
    require 1 < arg4.length
    require 0 < arg4.length
    if not cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768:
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args 64, address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768
    else:
        mem[ceil32(arg4.length) + 228] = cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776][3].field_0
        idx = ceil32(arg4.length) + 228
        s = 0
        while ceil32(arg4.length) + (32 * cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768) + 228 > idx + 32:
            mem[idx + 32] = cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(tokenRegistryAddress)
        call tokenRegistryAddress.'">k[' with:
             gas gas_remaining wei
            args Array(len=cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768, data=mem[ceil32(arg4.length) + 228 len 32 * cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_768]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x6c8251d2 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0]
    require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 > 0
    if block.timestamp % 1099511627776 <= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456:
        if 0 >= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg3)
            if coreContractAddress == cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg3), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg3), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, arg3);
        else:
            require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg3), uint128(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + (0 / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg3)
            if coreContractAddress == cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg3), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg3), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + (0 / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416) << 128, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, arg3);
    else:
        if block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776 >= cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416:
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg3)
            if coreContractAddress == cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg3), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg3), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, arg3);
        else:
            require cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416
            require ext_code.size(tokenRegistryAddress)
            call tokenRegistryAddress.getPriceInToken(address rg1, uint128 rg2) with:
                 gas gas_remaining wei
                args address(arg3), uint128(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + ((cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) - (cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_0 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_256 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_512 = 0
            cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 = 0
            idx = 0
            while cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216].field_768 > idx:
                cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) << 216][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(arg3)
            if coreContractAddress == cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256:
                call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenRegistryAddress)
                call tokenRegistryAddress.0x4e82a391 with:
                     gas gas_remaining wei
                    args address(arg3), uint128(ext_call.return_data[0])
            else:
                if not ext_call.return_data[0]:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0xfee16ea9 with:
                         gas gas_remaining wei
                        args address(arg3), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, ext_call.return_data[0] << 128, ownerFee
                else:
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_256, uint128(ext_call.return_data[0] - (uint128(ext_call.return_data[0] * ownerFee) / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), tokenRegistryAddress, uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(tokenRegistryAddress)
                    call tokenRegistryAddress.0x4e82a391 with:
                         gas gas_remaining wei
                        args address(arg3), uint128(uint128(ext_call.return_data[0] * ownerFee) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessfulForToken(cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 + ((cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_128 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) - (cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_0 * block.timestamp - cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_456 % 1099511627776) / cutieIdToAuction[mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776].field_416) << 128, uint128(ext_call.return_data[0]), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776, arg1, arg3);
    require ext_code.size(coreContractAddress)
    call coreContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), mem[128 len 1] + (Mask(8, 248, mem[129]) >> 240) + (Mask(8, 248, mem[130]) >> 232) + (Mask(8, 248, mem[131]) >> 228) + (Mask(8, 248, mem[132]) >> 220) % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
