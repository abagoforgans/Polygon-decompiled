contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function paymentSuccessful(bytes32 arg1) {
    return (bool(stor1[arg1]) == 1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function send(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function multisend(address arg1, bytes32 arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg3.length > 0
    require arg4.length >= arg3.length
    require bool(stor1[arg2]) != 1
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require idx < arg4.length
        _27 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = _27
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining - 50 wei
            args mem[(32 * arg3.length) + (32 * arg4.length) + 164], _27
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    stor1[arg2] = 1
    return arg3.length
}



}
