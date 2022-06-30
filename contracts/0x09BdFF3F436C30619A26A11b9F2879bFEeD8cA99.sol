contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const VALIDATOR_ROLE = 0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926


array of struct roleAdmin;
array of struct address;
mapping of uint256 stor2;
mapping of struct byIndex;
array of uint256 schema;
array of struct stor5;
mapping of uint8 sub_d0409b6a;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getByIndex(uint256 arg1) payable {
    return byIndex[stor1[arg1].field_0][0 len byIndex[stor1[arg1].field_0].length].field_0
}

function getByAddress(address arg1) payable {
    return byIndex[address(arg1)][0 len byIndex[address(arg1)].length].field_0
}

function uri(address arg1) payable {
    return byIndex[address(arg1)][0 len byIndex[address(arg1)].length].field_0
}

function sub_5cd8b15e(?) payable {
    return address.length
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
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

function getAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < address.length
    return address[arg1].field_0
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_d0409b6a(?) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)]:
        revert with 0, 'Unregistered entity'
    return sub_d0409b6a[address(arg1)]
}

function schema() payable {
    return schema[0 len schema.length]
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function isValidated(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)]:
        revert with 0, 'Unregistered entity'
    return (sub_d0409b6a[address(arg1)] > 0)
}

function sub_979427d5(?) payable {
    require calldata.size - 4 >= 96
    if not stor2[address(arg2)]:
        revert with 0, 'Entity is not registered'
    sub_d0409b6a[address(arg2)] = arg3
    emit 0xc61a9a17: arg1, arg2, arg3
}

function sub_73281c75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    schema[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8f47f33f(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a validator'
    if not stor2[address(arg1)]:
        revert with 0, 'Entity is not registered'
    sub_d0409b6a[address(arg1)] = arg2
    emit 0xc61a9a17: msg.sender, arg1, arg2
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
        emit RoleGranted(arg1, arg2, msg.sender);
}

function unregister() payable {
    if stor2[address(msg.sender)]:
        require address.length - 1 < address.length
        require stor2[address(msg.sender)] - 1 < address.length
        address[stor2[address(msg.sender)]].field_0 = address[address.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(msg.sender)]
        require address.length
        address[address.length].field_0 = 0
        address.length--
        stor2[address(msg.sender)] = 0
        byIndex[address(msg.sender)].field_0 = 0
        byIndex[address(msg.sender)].field_1 = 0
        byIndex[address(msg.sender)].field_8 = mem[128 len 31]
        idx = 0
        while byIndex[address(msg.sender)].length + 31 / 32 > idx:
            byIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit 0x1a9a8723: msg.sender
    sub_d0409b6a[address(msg.sender)] = 0
}

function unregisterUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a validator'
    if stor2[address(arg1)]:
        require address.length - 1 < address.length
        require stor2[address(arg1)] - 1 < address.length
        address[stor2[address(arg1)]].field_0 = address[address.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require address.length
        address[address.length].field_0 = 0
        address.length--
        stor2[address(arg1)] = 0
        byIndex[address(arg1)].field_0 = 0
        byIndex[address(arg1)].field_1 = 0
        byIndex[address(arg1)].field_8 = mem[128 len 31]
        idx = 0
        while byIndex[address(arg1)].length + 31 / 32 > idx:
            byIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit 0x1a9a8723: arg1
    sub_d0409b6a[address(arg1)] = 0
}

function sub_e0b07e52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if address.length <= mem[(32 * idx) + 128]:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[(32 * arg1.length) + 230 len 30]
        require mem[(32 * idx) + 128] < address.length
        mem[0] = 1
        require idx < arg1.length
        mem[(32 * idx) + 128] = address[mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_b92df1d8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length <= 0:
        revert with 0, 'Validation: Nothing to validate'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x7456616c69646174696f6e3a2053686f756c642068617665206173206d7563682076616c69646174696f6e206c6576656c7320617320656e7469746965,
                    mem[225 len 3]
    idx = 0
    while idx < ('cd', 4).length:
        if not stor2[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Entity is not registered'
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        sub_d0409b6a[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
    mem[192 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[floor32(('cd', 4).length) + 192] = ('cd', 36).length
    emit 0x89fa1503: Array(len=('cd', 4).length, data=mem[192 len floor32(('cd', 4).length) + 32], call.data[cd[36] + 36 len floor32(('cd', 36).length)]), floor32(('cd', 4).length) + 96, msg.sender
}

function register(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor2[address(msg.sender)]:
        address.length++
        address[address.length].field_0 = msg.sender
        address[address.length].field_160 = 0
        stor2[address(msg.sender)] = address.length
    byIndex[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 160] = address.length
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd741a63d: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd741a63d: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32], msg.sender
}

function sub_30cbf4c2(?) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)]:
        revert with 0, 'Unregistered entity'
    idx = 128
    s = 0
    while byIndex[address(arg1)].length + 96 > idx:
        mem[idx + 32] = byIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not byIndex[address(arg1)].length:
        mem[ceil32(byIndex[address(arg1)].length) + 160] = uint256(stor5.field_0)
        idx = ceil32(byIndex[address(arg1)].length) + 160
        s = 0
        while ceil32(byIndex[address(arg1)].length) + stor5.length + 128 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor5.length, data=mem[ceil32(byIndex[address(arg1)].length) + 160 len stor5.length]), 
               sub_d0409b6a[address(arg1)]
    mem[ceil32(byIndex[address(arg1)].length) + 160] = byIndex[address(arg1)].field_0
    idx = ceil32(byIndex[address(arg1)].length) + 160
    s = 0
    while ceil32(byIndex[address(arg1)].length) + byIndex[address(arg1)].length + 128 > idx:
        mem[idx + 32] = byIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(2 * ceil32(byIndex[address(arg1)].length)) + 192] = sub_d0409b6a[address(arg1)]
    mem[(2 * ceil32(byIndex[address(arg1)].length)) + 160] = 64
    mem[(2 * ceil32(byIndex[address(arg1)].length)) + 224] = byIndex[address(arg1)].length
    mem[(2 * ceil32(byIndex[address(arg1)].length)) + 256 len ceil32(byIndex[address(arg1)].length)] = mem[ceil32(byIndex[address(arg1)].length) + 160 len ceil32(byIndex[address(arg1)].length)]
    return Array(len=byIndex[address(arg1)].length, data=mem[ceil32(byIndex[address(arg1)].length) + 160 len byIndex[address(arg1)].length]), 
           sub_d0409b6a[address(arg1)]
}

function registerUser(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a validator'
    if not stor2[address(arg1)]:
        address.length++
        address[address.length].field_0 = arg1
        address[address.length].field_160 = 0
        stor2[address(arg1)] = address.length
    byIndex[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 160] = address.length
    mem[ceil32(arg2.length) + 128] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xd741a63d: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit 0xd741a63d: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1
}

function sub_81efad24(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a validator'
    if not stor2[address(arg1)]:
        address.length++
        address[address.length].field_0 = arg1
        address[address.length].field_160 = 0
        stor2[address(arg1)] = address.length
    byIndex[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 160] = address.length
    mem[ceil32(arg2.length) + 128] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xd741a63d: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit 0xd741a63d: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1
    if not stor2[address(arg1)]:
        revert with 0, 'Entity is not registered'
    sub_d0409b6a[address(arg1)] = arg3
    emit 0xc61a9a17: msg.sender, arg1, arg3
}

function transferAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7344657374696e6174696f6e206164647265737320697320616c726561647920726567697374657265,
                    mem[205 len 23]
    if not stor2[address(msg.sender)]:
        revert with 0, 'Caller not registered'
    sub_d0409b6a[address(arg1)] = sub_d0409b6a[address(msg.sender)]
    sub_d0409b6a[address(msg.sender)] = 0
    mem[128] = byIndex[address(msg.sender)].field_0
    idx = 128
    s = 0
    while byIndex[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = byIndex[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor2[address(arg1)]:
        address.length++
        address[address.length].field_0 = arg1
        address[address.length].field_160 = 0
        stor2[address(arg1)] = address.length
    byIndex[address(arg1)][].field_0 = Array(len=byIndex[address(msg.sender)].length, data=mem[128 len byIndex[address(msg.sender)].length])
    emit 0xd741a63d: Array(len=byIndex[address(msg.sender)].length, data=mem[128 len byIndex[address(msg.sender)].length]), address.length, arg1
    if stor2[address(msg.sender)]:
        require address.length - 1 < address.length
        require stor2[address(msg.sender)] - 1 < address.length
        address[stor2[address(msg.sender)]].field_0 = address[address.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(msg.sender)]
        require address.length
        address[address.length].field_0 = 0
        address.length--
        stor2[address(msg.sender)] = 0
        byIndex[address(msg.sender)].field_0 = 0
        byIndex[address(msg.sender)].field_1 = 0
        byIndex[address(msg.sender)].field_8 = address.length.field_8
        idx = 0
        while byIndex[address(msg.sender)].length + 31 / 32 > idx:
            byIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit 0x1a9a8723: msg.sender
    sub_d0409b6a[address(msg.sender)] = 0
}

function sub_39b3c058(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a validator'
    if not stor2[address(arg1)]:
        revert with 0, 'From address not registered'
    if stor2[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7344657374696e6174696f6e206164647265737320697320616c726561647920726567697374657265,
                    mem[205 len 23]
    sub_d0409b6a[address(arg2)] = sub_d0409b6a[address(arg1)]
    sub_d0409b6a[address(arg1)] = 0
    mem[128] = byIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while byIndex[address(arg1)].length + 96 > idx:
        mem[idx + 32] = byIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor2[address(arg2)]:
        address.length++
        address[address.length].field_0 = arg2
        address[address.length].field_160 = 0
        stor2[address(arg2)] = address.length
    byIndex[address(arg2)][].field_0 = Array(len=byIndex[address(arg1)].length, data=mem[128 len byIndex[address(arg1)].length])
    emit 0xd741a63d: Array(len=byIndex[address(arg1)].length, data=mem[128 len byIndex[address(arg1)].length]), address.length, arg2
    if stor2[address(arg1)]:
        require address.length - 1 < address.length
        require stor2[address(arg1)] - 1 < address.length
        address[stor2[address(arg1)]].field_0 = address[address.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require address.length
        address[address.length].field_0 = 0
        address.length--
        stor2[address(arg1)] = 0
        byIndex[address(arg1)].field_0 = 0
        byIndex[address(arg1)].field_1 = 0
        byIndex[address(arg1)].field_8 = address.length.field_8
        idx = 0
        while byIndex[address(arg1)].length + 31 / 32 > idx:
            byIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit 0x1a9a8723: arg1
    sub_d0409b6a[address(arg1)] = 0
}

function sub_e71536a9(?) payable {
    require calldata.size - 4 >= 32
    if address.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < address.length
    if not stor2[stor1[arg1].field_0]:
        revert with 0, 'Unregistered entity'
    idx = 128
    s = 0
    while byIndex[stor1[arg1].field_0].length + 96 > idx:
        mem[idx + 32] = byIndex[stor1[arg1].field_0][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not byIndex[stor1[arg1].field_0].length:
        mem[ceil32(byIndex[stor1[arg1].field_0].length) + 160] = uint256(stor5.field_0)
        idx = ceil32(byIndex[stor1[arg1].field_0].length) + 160
        s = 0
        while ceil32(byIndex[stor1[arg1].field_0].length) + stor5.length + 128 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor5.length, data=mem[ceil32(byIndex[stor1[arg1].field_0].length) + 160 len stor5.length]), 
               address[arg1].field_0,
               sub_d0409b6a[stor1[arg1].field_0]
    mem[ceil32(byIndex[stor1[arg1].field_0].length) + 160] = byIndex[stor1[arg1].field_0].field_0
    idx = ceil32(byIndex[stor1[arg1].field_0].length) + 160
    s = 0
    while ceil32(byIndex[stor1[arg1].field_0].length) + byIndex[stor1[arg1].field_0].length + 128 > idx:
        mem[idx + 32] = byIndex[stor1[arg1].field_0][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(2 * ceil32(byIndex[stor1[arg1].field_0].length)) + 192] = address[arg1].field_0
    mem[(2 * ceil32(byIndex[stor1[arg1].field_0].length)) + 224] = sub_d0409b6a[stor1[arg1].field_0]
    mem[(2 * ceil32(byIndex[stor1[arg1].field_0].length)) + 160] = 96
    mem[(2 * ceil32(byIndex[stor1[arg1].field_0].length)) + 256] = byIndex[stor1[arg1].field_0].length
    mem[(2 * ceil32(byIndex[stor1[arg1].field_0].length)) + 288 len ceil32(byIndex[stor1[arg1].field_0].length)] = mem[ceil32(byIndex[stor1[arg1].field_0].length) + 160 len ceil32(byIndex[stor1[arg1].field_0].length)]
    return Array(len=byIndex[stor1[arg1].field_0].length, data=mem[ceil32(byIndex[stor1[arg1].field_0].length) + 160 len byIndex[stor1[arg1].field_0].length]), 
           address[arg1].field_0,
           sub_d0409b6a[stor1[arg1].field_0]
}



}
