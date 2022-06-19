contract main {




// =====================  Runtime code  =====================


const getEtherBalance = eth.balance(this.address)


address stor0;
address owner;
address tokenAddress;
mapping of uint256 stor3;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function setNewOwner(address arg1) {
    if stor0 != msg.sender:
        require msg.sender == owner
    stor0 = arg1
    return 1
}

function setNewToken(address arg1) {
    if stor0 != msg.sender:
        require msg.sender == owner
    tokenAddress = arg1
    return 1
}

function transferEth(uint256 arg1) payable {
    require arg1 <= msg.value
    require uint32(ext_code.size(msg.sender)) <= 0
    require arg1 + stor3[msg.sender] >= stor3[msg.sender]
    stor3[msg.sender] += arg1
    return 1
}

function sub_f7b73c82(?) {
    if stor0 != msg.sender:
        require msg.sender == owner
    call msg.sender.mem[96 len 4] with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args mem[100 len 28]
    return 1
}

function sub_185f69c6(?) {
    if stor0 != msg.sender:
        require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transaction(arg1, block.timestamp, this.address, msg.sender);
    return 1
}

function transferToken(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    emit Transaction(arg1, block.timestamp, msg.sender, this.address);
    return 1
}

function sub_5bdcb831(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor0 != msg.sender:
        require msg.sender == owner
    if arg1.length != arg2.length:
        revert with 0, 'Arrays not of equal length'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20].mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4] with:
           value mem[(32 * arg1.length) + (32 * idx) + 160] wei
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164 len 28]
        idx = idx + 1
        continue 
    return 1
}

function sub_5a25a82b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == stor0:
        if arg1.length != arg2.length:
            revert with 0, 'Arrays not of equal length'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _55 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _55
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _55
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            _65 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = block.timestamp
            emit Transaction(mem[(32 * arg2.length) + (32 * arg1.length) + 160], block.timestamp, this.address, address(_65));
            idx = idx + 1
            continue 
    else:
        require msg.sender == owner
        if arg1.length != arg2.length:
            revert with 0, 'Arrays not of equal length'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _58
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _58
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            _67 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = block.timestamp
            emit Transaction(mem[(32 * arg2.length) + (32 * arg1.length) + 160], block.timestamp, this.address, address(_67));
            idx = idx + 1
            continue 
    return 1
}



}
