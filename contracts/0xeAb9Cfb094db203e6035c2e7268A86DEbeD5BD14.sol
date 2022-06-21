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

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = sha3(Mask(112, 144, 'DEPOSITOR_ROLE') >> 144)


mapping of uint256 stakeBalanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct roleAdmin;
array of struct stor7;
uint256 domainSeperator;
mapping of uint256 nonce;
address controllerAddress;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
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
    return stakeBalanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function stakeBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return stakeBalanceOf[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only owner can call this'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Only owner can call this'
    owner = arg1
}

function changeController(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only owner can call this'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Only owner can call this'
    controllerAddress = arg1
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

function deposit(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if this.address != msg.sender:
        if not roleAdmin['DEPOSITOR_ROLE'][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor7.field_0)
            idx = 164
            s = 0
            while stor7.length + 164 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin['DEPOSITOR_ROLE'][1][address(mem[calldata.size + 96])].field_0:
            mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
            idx = ceil32(calldata.size) + 196
            s = 0
            while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor7.length,
                        mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    require arg2.length >= 32
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + cd[(arg2 + 36)] < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += cd[(arg2 + 36)]
    if stakeBalanceOf[address(arg1)] + cd[(arg2 + 36)] < stakeBalanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stakeBalanceOf[address(arg1)] += cd[(arg2 + 36)]
    emit Transfer(cd[(arg2 + 36)], 0, arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                        mem[211 len 17]
        if not roleAdmin[arg1][1][address(arg2)].field_0:
            roleAdmin[arg1].field_0++
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if this.address != msg.sender:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                        mem[ceil32(calldata.size) + 243 len 17]
        if not roleAdmin[arg1][1][address(arg2)].field_0:
            roleAdmin[arg1].field_0++
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if this.address != msg.sender:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
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

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                        mem[211 len 17]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if this.address != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2 != mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        47,
                        0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                        mem[ceil32(calldata.size) + 243 len 17]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if this.address != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                        mem[212 len 16]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if this.address != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 
                        32,
                        48,
                        0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                        mem[ceil32(calldata.size) + 244 len 16]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if this.address != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x97e2b9af with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > stakeBalanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stakeBalanceOf[address(arg1)] -= arg3
    if stakeBalanceOf[address(arg2)] + arg3 < stakeBalanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    stakeBalanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if this.address != msg.sender:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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
    mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
    mem[(2 * ceil32(calldata.size)) + 452] = uint64(calldata.size)
    revert with 0, 
                32,
                40,
                0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                mem[ceil32(calldata.size) + 296 len 24],
                uint64(calldata.size)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xaf07d667 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if this.address != msg.sender:
            mem[132] = arg1
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe98008a1 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(arg1),
                                mem[164 len 28],
                                mem[222 len 2]
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if not mem[calldata.size + 108 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(calldata.size) + 229 len 31]
                if arg1 > stakeBalanceOf[address(mem[calldata.size + 96])]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(calldata.size) + 194 len 30],
                                mem[ceil32(calldata.size) + 254 len 2]
                stakeBalanceOf[address(mem[calldata.size + 96])] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, mem[calldata.size + 108 len 20], 0);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(calldata.size) + 164] = arg1
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe98008a1 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(calldata.size) + 229 len 31]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(arg1),
                                mem[ceil32(calldata.size) + 196 len 28],
                                mem[ceil32(calldata.size) + 254 len 2]
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 261 len 31]
                mem[(2 * ceil32(calldata.size)) + 192 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[(2 * ceil32(calldata.size)) + 226 len 30],
                                mem[(2 * ceil32(calldata.size)) + 286 len 2]
                stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])] -= arg1
                mem[(2 * ceil32(calldata.size)) + 256] = 30
                mem[(2 * ceil32(calldata.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[(2 * ceil32(calldata.size)) + 320] = arg1
                emit Transfer(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20], 0);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xaf07d667 with:
                gas gas_remaining wei
               args mem[calldata.size + 108 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if msg.sender == this.address:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 196] = arg1
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe98008a1 with:
                 gas gas_remaining wei
                args mem[ceil32(calldata.size) + calldata.size + 140 len 20], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 261 len 31]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(arg1),
                                mem[(2 * ceil32(calldata.size)) + 228 len 28],
                                mem[(2 * ceil32(calldata.size)) + 286 len 2]
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
            else:
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[(4 * ceil32(calldata.size)) + 293 len 31]
                if arg1 > stakeBalanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[(4 * ceil32(calldata.size)) + 258 len 30],
                                mem[(4 * ceil32(calldata.size)) + 318 len 2]
                stakeBalanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[(4 * ceil32(calldata.size)) + 352] = arg1
                emit Transfer(arg1, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], 0);
        else:
            mem[ceil32(calldata.size) + 164] = arg1
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe98008a1 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(calldata.size) + 229 len 31]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(arg1),
                                mem[ceil32(calldata.size) + 196 len 28],
                                mem[ceil32(calldata.size) + 254 len 2]
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x6845524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 261 len 31]
                mem[(2 * ceil32(calldata.size)) + 192 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                    revert with 0, 
                                32,
                                34,
                                0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[(2 * ceil32(calldata.size)) + 226 len 30],
                                mem[(2 * ceil32(calldata.size)) + 286 len 2]
                stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])] -= arg1
                mem[(2 * ceil32(calldata.size)) + 256] = 30
                mem[(2 * ceil32(calldata.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[(2 * ceil32(calldata.size)) + 320] = arg1
                emit Transfer(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20], 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        mem[164] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x97e2b9af with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if this.address != msg.sender:
            mem[164] = arg1
            mem[196] = arg2
            mem[228] = 128
            mem[260] = 0
            mem[292 len 0] = None
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, '', 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[128] = calldata.size
                mem[160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[calldata.size + 140 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(calldata.size) + 265 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(calldata.size) + 263 len 29]
                if arg2 > stakeBalanceOf[address(mem[calldata.size + 128])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(calldata.size) + 230 len 26],
                                mem[ceil32(calldata.size) + 282 len 6]
                stakeBalanceOf[address(mem[calldata.size + 128])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, mem[calldata.size + 140 len 20], arg1);
        else:
            mem[128] = calldata.size
            mem[160 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(calldata.size) + 196] = arg1
            mem[ceil32(calldata.size) + 228] = arg2
            mem[ceil32(calldata.size) + 260] = 128
            mem[ceil32(calldata.size) + 292] = 0
            mem[ceil32(calldata.size) + 324 len 0] = None
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args mem[calldata.size + 140 len 20], address(arg1), arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, '', 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 297 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 295 len 29]
                mem[(2 * ceil32(calldata.size)) + 224 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg2 > stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[(2 * ceil32(calldata.size)) + 262 len 26],
                                mem[(2 * ceil32(calldata.size)) + 314 len 6]
                stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 160])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                mem[(2 * ceil32(calldata.size)) + 288] = arg2
                emit Transfer(arg2, mem[ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
    else:
        mem[128] = calldata.size
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 196] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x97e2b9af with:
                gas gas_remaining wei
               args mem[calldata.size + 140 len 20], address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if this.address != msg.sender:
            mem[ceil32(calldata.size) + 196] = arg1
            mem[ceil32(calldata.size) + 228] = arg2
            mem[ceil32(calldata.size) + 260] = 128
            mem[ceil32(calldata.size) + 292] = 0
            mem[ceil32(calldata.size) + 324 len 0] = None
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, '', 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 297 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[(2 * ceil32(calldata.size)) + 295 len 29]
                mem[(2 * ceil32(calldata.size)) + 224 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg2 > stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[(2 * ceil32(calldata.size)) + 262 len 26],
                                mem[(2 * ceil32(calldata.size)) + 314 len 6]
                stakeBalanceOf[address(mem[ceil32(calldata.size) + calldata.size + 160])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                mem[(2 * ceil32(calldata.size)) + 288] = arg2
                emit Transfer(arg2, mem[ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
        else:
            mem[ceil32(calldata.size) + 160] = calldata.size
            mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 228] = arg1
            mem[(2 * ceil32(calldata.size)) + 260] = arg2
            mem[(2 * ceil32(calldata.size)) + 292] = 128
            mem[(2 * ceil32(calldata.size)) + 324] = 0
            mem[(2 * ceil32(calldata.size)) + 356 len 0] = None
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args mem[ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, '', 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[(2 * ceil32(calldata.size)) + 192] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                if not mem[(2 * ceil32(calldata.size)) + calldata.size + 204 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[(4 * ceil32(calldata.size)) + 329 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[(4 * ceil32(calldata.size)) + 327 len 29]
                if arg2 > stakeBalanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 192])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[(4 * ceil32(calldata.size)) + 294 len 26],
                                mem[(4 * ceil32(calldata.size)) + 346 len 6]
                stakeBalanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 192])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, mem[(2 * ceil32(calldata.size)) + calldata.size + 204 len 20], arg1);
    return 1
}

function transferWithPurpose(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if this.address != msg.sender:
        mem[ceil32(arg3.length) + 164] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x97e2b9af with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if this.address != msg.sender:
            mem[ceil32(arg3.length) + 128] = 0x343b278f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 164] = arg1
            mem[ceil32(arg3.length) + 196] = arg2
            mem[ceil32(arg3.length) + 228] = 128
            mem[ceil32(arg3.length) + 260] = arg3.length
            mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(controllerAddress)
            call controllerAddress with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(arg3.length) + 128] = calldata.size
                mem[ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(arg3.length) + calldata.size + 140 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + ceil32(calldata.size) + 265 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + ceil32(calldata.size) + 263 len 29]
                if arg2 > stakeBalanceOf[address(mem[ceil32(arg3.length) + calldata.size + 128])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg3.length) + ceil32(calldata.size) + 230 len 26],
                                mem[ceil32(arg3.length) + ceil32(calldata.size) + 282 len 6]
                stakeBalanceOf[address(mem[ceil32(arg3.length) + calldata.size + 128])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, mem[ceil32(arg3.length) + calldata.size + 140 len 20], arg1);
        else:
            mem[ceil32(arg3.length) + 128] = calldata.size
            mem[ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 196] = arg1
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 228] = arg2
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 260] = 128
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 292] = arg3.length
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + calldata.size + 140 len 20], address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(arg3.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg3.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 297 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 295 len 29]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg2 > stakeBalanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 262 len 26],
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 314 len 6]
                stakeBalanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 288] = arg2
                emit Transfer(arg2, mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
    else:
        mem[ceil32(arg3.length) + 128] = calldata.size
        mem[ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg3.length) + ceil32(calldata.size) + 196] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x97e2b9af with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + calldata.size + 140 len 20], address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if this.address != msg.sender:
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 196] = arg1
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 228] = arg2
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 260] = 128
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 292] = arg3.length
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(arg3.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg3.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 297 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 295 len 29]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg2 > stakeBalanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 262 len 26],
                                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 314 len 6]
                stakeBalanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 288] = arg2
                emit Transfer(arg2, mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
        else:
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 160] = calldata.size
            mem[ceil32(arg3.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 228] = arg1
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260] = arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 292] = 128
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = arg3.length
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(controllerAddress)
            call controllerAddress.0x343b278f with:
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'sERC20: transfer from the zero addres'
                if not arg1:
                    revert with 0, 'sERC20: transfer to the zero addres'
                if arg2 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg2) >> 32, 0
                stakeBalanceOf[address(msg.sender)] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 192] = calldata.size
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + calldata.size + 204 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (4 * ceil32(calldata.size)) + 329 len 27]
                if not arg1:
                    revert with 0, 
                                32,
                                35,
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(arg3.length) + (4 * ceil32(calldata.size)) + 327 len 29]
                if arg2 > stakeBalanceOf[address(mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + calldata.size + 192])]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg3.length) + (4 * ceil32(calldata.size)) + 294 len 26],
                                mem[ceil32(arg3.length) + (4 * ceil32(calldata.size)) + 346 len 6]
                stakeBalanceOf[address(mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + calldata.size + 192])] -= arg2
                if stakeBalanceOf[address(arg1)] + arg2 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(arg1)] += arg2
                emit Transfer(arg2, mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + calldata.size + 204 len 20], arg1);
    return 1
}

function transferBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg2.length != arg1.length:
        revert with 0, 'Parameter counts do not match'
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        _407 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _409 = mem[(32 * idx) + 128]
        _410 = mem[64]
        mem[64] = mem[64] + 32
        mem[_410] = 0
        if this.address != msg.sender:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_409)
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x97e2b9af with:
                    gas gas_remaining wei
                   args msg.sender, address(_409)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                mem[mem[64]] = 0x343b278f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_409)
                mem[mem[64] + 68] = _407
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_410 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(controllerAddress)
                call controllerAddress.0x343b278f with:
                     gas gas_remaining wei
                    args msg.sender, address(_409), _407, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if this.address != msg.sender:
                    if not msg.sender:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _917 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_917] = 38
                    mem[_917 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(msg.sender)]:
                        _949 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_949 + idx + 68] = mem[_917 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_949 + 100] = mem[_949 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _949 + -mem[64] + 132
                    stakeBalanceOf[address(msg.sender)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, msg.sender, address(_409));
                else:
                    _837 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_837] = calldata.size
                    mem[_837 + 32 len calldata.size] = call.data[0 len calldata.size]
                    mem[_837 + calldata.size + 32] = 0
                    _838 = mem[_837 + calldata.size]
                    if not mem[_837 + calldata.size + 12 len 20]:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _919 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_919] = 38
                    mem[_919 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(_838)]:
                        _952 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_952 + idx + 68] = mem[_919 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_952 + 100] = mem[_952 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _952 + -mem[64] + 132
                    stakeBalanceOf[address(_838)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, address(_838), address(_409));
            else:
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_421] = calldata.size
                mem[_421 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_421 + calldata.size + 32] = 0
                _422 = mem[_421 + calldata.size]
                mem[mem[64]] = 0x343b278f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_422)
                mem[mem[64] + 36] = address(_409)
                mem[mem[64] + 68] = _407
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_410 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(controllerAddress)
                call controllerAddress.0x343b278f with:
                     gas gas_remaining wei
                    args address(_422), address(_409), _407, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if this.address != msg.sender:
                    if not msg.sender:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _921 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_921] = 38
                    mem[_921 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(msg.sender)]:
                        _955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_955 + idx + 68] = mem[_921 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_955 + 100] = mem[_955 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _955 + -mem[64] + 132
                    stakeBalanceOf[address(msg.sender)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, msg.sender, address(_409));
                else:
                    _839 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_839] = calldata.size
                    mem[_839 + 32 len calldata.size] = call.data[0 len calldata.size]
                    mem[_839 + calldata.size + 32] = 0
                    _840 = mem[_839 + calldata.size]
                    if not mem[_839 + calldata.size + 12 len 20]:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _923 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_923] = 38
                    mem[_923 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(_840)]:
                        _958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_958 + idx + 68] = mem[_923 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_958 + 100] = mem[_958 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _958 + -mem[64] + 132
                    stakeBalanceOf[address(_840)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, address(_840), address(_409));
        else:
            _411 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_411] = calldata.size
            mem[_411 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_411 + calldata.size + 32] = 0
            mem[mem[64] + 4] = mem[_411 + calldata.size + 12 len 20]
            mem[mem[64] + 36] = address(_409)
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x97e2b9af with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_409)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if this.address != msg.sender:
                mem[mem[64]] = 0x343b278f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_409)
                mem[mem[64] + 68] = _407
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_410 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(controllerAddress)
                call controllerAddress.0x343b278f with:
                     gas gas_remaining wei
                    args msg.sender, address(_409), _407, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if this.address != msg.sender:
                    if not msg.sender:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _925 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_925] = 38
                    mem[_925 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(msg.sender)]:
                        _961 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_961 + idx + 68] = mem[_925 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_961 + 100] = mem[_961 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _961 + -mem[64] + 132
                    stakeBalanceOf[address(msg.sender)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, msg.sender, address(_409));
                else:
                    _841 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_841] = calldata.size
                    mem[_841 + 32 len calldata.size] = call.data[0 len calldata.size]
                    mem[_841 + calldata.size + 32] = 0
                    _842 = mem[_841 + calldata.size]
                    if not mem[_841 + calldata.size + 12 len 20]:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _927 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_927] = 38
                    mem[_927 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(_842)]:
                        _964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_964 + idx + 68] = mem[_927 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_964 + 100] = mem[_964 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _964 + -mem[64] + 132
                    stakeBalanceOf[address(_842)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, address(_842), address(_409));
            else:
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_423] = calldata.size
                mem[_423 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_423 + calldata.size + 32] = 0
                _424 = mem[_423 + calldata.size]
                mem[mem[64]] = 0x343b278f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_424)
                mem[mem[64] + 36] = address(_409)
                mem[mem[64] + 68] = _407
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_410 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(controllerAddress)
                call controllerAddress.0x343b278f with:
                     gas gas_remaining wei
                    args address(_424), address(_409), _407, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if this.address != msg.sender:
                    if not msg.sender:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _929 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_929] = 38
                    mem[_929 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(msg.sender)]:
                        _967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_967 + idx + 68] = mem[_929 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_967 + 100] = mem[_967 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _967 + -mem[64] + 132
                    stakeBalanceOf[address(msg.sender)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, msg.sender, address(_409));
                else:
                    _843 = mem[64]
                    mem[64] = mem[64] + ceil32(calldata.size) + 32
                    mem[_843] = calldata.size
                    mem[_843 + 32 len calldata.size] = call.data[0 len calldata.size]
                    mem[_843 + calldata.size + 32] = 0
                    _844 = mem[_843 + calldata.size]
                    if not mem[_843 + calldata.size + 12 len 20]:
                        revert with 0, 'sERC20: transfer from the zero addres'
                    if not address(_409):
                        revert with 0, 'sERC20: transfer to the zero addres'
                    _931 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_931] = 38
                    mem[_931 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _407 > stakeBalanceOf[address(_844)]:
                        _970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_970 + idx + 68] = mem[_931 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_970 + 100] = mem[_970 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _970 + -mem[64] + 132
                    stakeBalanceOf[address(_844)] -= _407
                    if stakeBalanceOf[address(_409)] + _407 < stakeBalanceOf[address(_409)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_409)
                    mem[32] = 0
                    stakeBalanceOf[address(_409)] += _407
                    mem[mem[64]] = _407
                    emit Transfer(_407, address(_844), address(_409));
        idx = idx + 1
        continue 
}



}
