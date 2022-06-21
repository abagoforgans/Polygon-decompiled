contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#
const getChainId = chainid

const CHILD_CHAIN_ID_BYTES = ''

const ROOT_CHAIN_ID_BYTES = ''

const ERC712_VERSION = '1'

const CHILD_CHAIN_ID = 15001

const ROOT_CHAIN_ID = 5


address owner;
uint256 domainSeperator;
mapping of uint256 nonce;
mapping of struct stake;
address controllerAddress;
address assistantAddress;
address slasherAddress;
address tokenContractAddress;

function getDomainSeperator() {
    return domainSeperator
}

function assistant() {
    return assistantAddress
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function tokenContract() {
    return tokenContractAddress
}

function getStake(address arg1) {
    require calldata.size - 4 >= 32
    return stake[address(arg1)].field_0, stake[address(arg1)].field_256
}

function owner() {
    return owner
}

function slasher() {
    return slasherAddress
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function totalStaked() {
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xaf46aa08 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renounceOwnership() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_35a3a562(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    slasherAddress = arg1
}

function sub_2aa670fe(?) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    assistantAddress = arg1
}

function changeController(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    controllerAddress = arg1
}

function changeTokenContract(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    tokenContractAddress = arg1
}

function sub_baffb69f(?) {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'Only controller can call this'
    if not arg1:
        revert with 0, 'Beneficiary address is zero'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5242656e65666963696172792061646472657373206973207374616b696e6720636f6e74726163,
                    mem[203 len 25]
    if stake[address(arg1)].field_0 + arg2 < stake[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stake[address(arg1)].field_0 += arg2
    stake[address(arg1)].field_256 = block.timestamp
    emit Staked(arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x294f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[202 len 26]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0, 
                        32,
                        38,
                        0x294f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 234 len 26]
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bd2d0327(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if slasherAddress != msg.sender:
        revert with 0, 'Only slasher can call this'
    if arg2 <= stake[address(arg1)].field_0:
        stake[address(arg1)].field_0 -= arg2
        stake[address(arg1)].field_256 = block.timestamp
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer() call failed'
        emit 0x1a0a5c81: arg2, Array(len=arg3.length, data=arg3[all]), arg1
    else:
        if stake[address(arg1)].field_0 > stake[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stake[address(arg1)].field_0 = 0
        stake[address(arg1)].field_256 = block.timestamp
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, stake[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer() call failed'
        emit 0x1a0a5c81: stake[address(arg1)].field_0, Array(len=arg3.length, data=arg3[all]), arg1
}

function sub_a5f25182(?) {
    require calldata.size - 4 >= 64
    if assistantAddress != msg.sender:
        revert with 0, 'Only assistant can call this'
    if arg2 <= stake[address(arg1)].field_0:
        if arg2 <= 0:
            revert with 0, 'Cannot unstake zero tokens'
        if arg2 > stake[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stake[address(arg1)].field_0 -= arg2
        stake[address(arg1)].field_256 = block.timestamp
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer() call failed'
        emit Unstaked(arg2, arg1);
    else:
        if stake[address(arg1)].field_0 <= 0:
            revert with 0, 'Cannot unstake zero tokens'
        if stake[address(arg1)].field_0 > stake[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stake[address(arg1)].field_0 = 0
        stake[address(arg1)].field_256 = block.timestamp
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), stake[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer() call failed'
        emit Unstaked(stake[address(arg1)].field_0, arg1);
}

function sub_d8143860(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg2.length != arg1.length:
        revert with 0, 'Parameter counts do not match'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Beneficiary address is zero'
        if mem[(32 * idx) + 140 len 20] == this.address:
            revert with 0, 
                        32,
                        39,
                        0x5242656e65666963696172792061646472657373206973207374616b696e6720636f6e74726163,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 267 len 25]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if stake[mem[(32 * idx) + 140 len 20]].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160] < stake[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'SafeMath: addition overflow'
        stake[mem[(32 * idx) + 140 len 20]].field_0 += mem[(32 * idx) + (32 * arg1.length) + 160]
        stake[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Staked(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_34));
        if s + _31 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + _31
        continue 
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom() failed'
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if arg1 <= stake[address(msg.sender)].field_0:
            if arg1 <= 0:
                revert with 0, 'Cannot unstake zero tokens'
            if arg1 > stake[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            stake[address(msg.sender)].field_0 -= arg1
            stake[address(msg.sender)].field_256 = block.timestamp
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer() call failed'
            emit Unstaked(arg1, msg.sender);
        else:
            if stake[address(msg.sender)].field_0 <= 0:
                revert with 0, 'Cannot unstake zero tokens'
            if stake[address(msg.sender)].field_0 > stake[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            stake[address(msg.sender)].field_0 = 0
            stake[address(msg.sender)].field_256 = block.timestamp
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stake[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer() call failed'
            emit Unstaked(stake[address(msg.sender)].field_0, msg.sender);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 <= stake[mem[calldata.size + 108 len 20]].field_0:
            if arg1 <= 0:
                revert with 0, 'Cannot unstake zero tokens'
            if arg1 > stake[mem[calldata.size + 108 len 20]].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            stake[mem[calldata.size + 108 len 20]].field_0 -= arg1
            stake[mem[calldata.size + 108 len 20]].field_256 = block.timestamp
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer() call failed'
            emit Unstaked(arg1, mem[calldata.size + 108 len 20]);
        else:
            if stake[mem[calldata.size + 108 len 20]].field_0 <= 0:
                revert with 0, 'Cannot unstake zero tokens'
            if stake[mem[calldata.size + 108 len 20]].field_0 > stake[mem[calldata.size + 108 len 20]].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            stake[mem[calldata.size + 108 len 20]].field_0 = 0
            stake[mem[calldata.size + 108 len 20]].field_256 = block.timestamp
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20], stake[mem[calldata.size + 108 len 20]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer() call failed'
            emit Unstaked(stake[mem[calldata.size + 108 len 20]].field_0, mem[calldata.size + 108 len 20]);
}



}
