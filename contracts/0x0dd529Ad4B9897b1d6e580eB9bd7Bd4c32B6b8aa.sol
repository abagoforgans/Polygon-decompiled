contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, uint256 arg3, uint256 arg4)
#  - sub_97d6c446(?)
#
const getChainId = chainid

const BURNER_ROLE = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 cap;
array of struct roleAdmin;
uint256 domainSeperator;
mapping of uint256 nonce;
array of uint256 stor203;

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
    require arg1 == arg1
    return nonce[address(arg1)]
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function sub_238b9f5c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if msg.sender != this.address:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'Caller is not an admin'
    else:
        mem[(32 * ('cd', 4).length) + 128] = calldata.size
        mem[(32 * ('cd', 4).length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0][1][address(mem[calldata.size + (32 * ('cd', 4).length) + 128])].field_0:
            revert with 0, 'Caller is not an admin'
    stor203.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor203.length > idx:
            stor203[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor203[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor203.length > idx:
            stor203[idx] = 0
            idx = idx + 1
            continue 
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(msg.sender)].field_0:
            revert with 0, 'Caller is not a burner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 'Caller is not a burner'
        if not arg1:
            revert with 0, 'ERC20: burn from the zero address'
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 194 len 30] >> 16,
                        0
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 51))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] < allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(mem[calldata.size + 96])][address(arg1)] = arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]
        emit Approval((arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]), mem[calldata.size + 108 len 20], arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
        if not roleAdmin[arg1][1][address(arg2)].field_0:
            roleAdmin[arg1].field_0++
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 'AccessControl: sender must be an admin to grant'
        if not roleAdmin[arg1][1][address(arg2)].field_0:
            roleAdmin[arg1].field_0++
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 32, 37, 0xa645524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
        if not msg.sender:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        return 1
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 224] = calldata.size
    mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
    if arg2 <= allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)]:
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2
        emit Approval((allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
        return 1
    mem[(2 * ceil32(calldata.size)) + 260] = 32
    mem[(2 * ceil32(calldata.size)) + 292] = 37
    mem[(2 * ceil32(calldata.size)) + 324 len 64] = 0xa645524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(calldata.size) + 197 len 27]
    mem[(2 * ceil32(calldata.size)) + 361] = 0
    revert with 0, 
                32,
                37,
                0xa645524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(calldata.size) + 197 len 27] >> 40,
                0
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        return 0
    if not arg2:
        return 0
    if msg.sender != this.address:
        if not roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(msg.sender)].field_0:
            revert with 0, 'Caller is not a minter'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 'Caller is not a minter'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply <= cap:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        return arg2
    if totalSupply > cap:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if cap < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if cap > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if cap < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply = cap
    if cap - totalSupply + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = cap - totalSupply + balanceOf[address(arg1)]
    emit Transfer((cap - totalSupply), 0, arg1);
    return (cap - totalSupply)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if not msg.sender:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + totalSupply > cap:
                revert with 0, 'ERC20Capped: cap exceeded'
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 38, 0x2945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if not mem[calldata.size + 108 len 20]:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + totalSupply > cap:
                revert with 0, 'ERC20Capped: cap exceeded'
        if arg2 > balanceOf[address(mem[calldata.size + 96])]:
            revert with 0, 
                        32,
                        38,
                        0x2945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(calldata.size) + 198 len 26] >> 48,
                        0
        balanceOf[address(mem[calldata.size + 96])] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2 != mem[calldata.size + 108 len 20]:
            revert with 0, 'AccessControl: can only renounce roles for self'
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 'AccessControl: sender must be an admin to revoke'
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = 0
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0x654d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 770] = msg.sender
    mem[ceil32(arg2.length) + 802] = 96
    mem[ceil32(arg2.length) + 834] = arg2.length
    mem[ceil32(arg2.length) + 866 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 866] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 770 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(arg2.length) + 810] = 0
    call this.address.mem[arg2.length + ceil32(arg2.length) + 790 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 794 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x2945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if msg.sender != this.address:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    mem[192] = calldata.size
    mem[224 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 320] = calldata.size
    mem[ceil32(calldata.size) + 352 len calldata.size] = call.data[0 len calldata.size]
    if arg3 <= allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]]:
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not mem[calldata.size + 204 len 20]:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(mem[calldata.size + 192])] = allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3
        emit Approval((allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3), arg1, mem[calldata.size + 204 len 20]);
        return 1
    mem[(2 * ceil32(calldata.size)) + 356] = 32
    mem[(2 * ceil32(calldata.size)) + 388] = 40
    mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
    mem[(2 * ceil32(calldata.size)) + 460] = 0
    revert with 0, 
                32,
                40,
                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24] >> 64,
                0
}

function sub_42d2d9c6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender != this.address:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'Caller is not an admin'
        if roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0:
            if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                if msg.sender != this.address:
                    emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + 108 len 20]);
        else:
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0++
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0 = address(arg1)
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_160 = 0
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0 = roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
            if msg.sender != this.address:
                emit RoleGranted(0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, address(arg1), msg.sender);
                if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                    if msg.sender != this.address:
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                    else:
                        mem[96] = calldata.size
                        mem[128 len calldata.size] = call.data[0 len calldata.size]
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + 108 len 20]);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, address(arg1), mem[calldata.size + 108 len 20]);
                if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                    if msg.sender != this.address:
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                    else:
                        mem[ceil32(calldata.size) + 128] = calldata.size
                        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 'Caller is not an admin'
        if roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0:
            if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                if msg.sender != this.address:
                    emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                else:
                    mem[ceil32(calldata.size) + 128] = calldata.size
                    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                    emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
        else:
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0++
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_0 = address(arg1)
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0].field_160 = 0
            roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0 = roleAdmin[0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0
            if msg.sender != this.address:
                emit RoleGranted(0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, address(arg1), msg.sender);
                if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                    if msg.sender != this.address:
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                    else:
                        mem[ceil32(calldata.size) + 128] = calldata.size
                        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(0x659f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, address(arg1), mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
                if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = address(arg1)
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                    roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
                    if msg.sender != this.address:
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), msg.sender);
                    else:
                        mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                        mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, address(arg1), mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20]);
}



}
