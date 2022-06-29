contract main {




// =====================  Runtime code  =====================


const STATE_SYNCER_ROLE = sha3(Mask(136, 120, 'STATE_SYNCER_ROLE') >> 120)

const MAPPER_ROLE = sha3(Mask(88, 168, 'MAPPER_ROLE') >> 168)

const MAP_TOKEN = sha3(1425105660101949867342)

const DEFAULT_ADMIN_ROLE = 0

const DEPOSIT = sha3(19216509646883156)


uint8 stor0;
array of struct roleAdmin;
array of struct stor2;
mapping of address rootToChildToken;
mapping of address childToRootToken;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function childToRootToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return childToRootToken[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function rootToChildToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return rootToChildToken[arg1]
}

function _fallback() payable {
    revert
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

function mapToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin['MAPPER_ROLE'][1][address(msg.sender)].field_0:
        mem[164] = uint256(stor2.field_0)
        idx = 164
        s = 0
        while stor2.length + 164 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor2.length, mem[164 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]
    if rootToChildToken[stor4[address(arg2)]]:
        rootToChildToken[stor4[address(arg2)]] = 0
    if childToRootToken[stor3[address(arg1)]]:
        childToRootToken[stor3[address(arg1)]] = 0
    rootToChildToken[address(arg1)] = arg2
    childToRootToken[address(arg2)] = arg1
    emit TokenMapped(arg1, arg2);
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
                    0x44416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'already inited'
    mem[192 len 17] = 0x4368696c64436861696e4d616e61676572
    mem[209] = ': INSUFFICIENT_PERMISSIONS'
    stor2.length = 87
    s = 0
    idx = 192
    while 235 > idx:
        stor2[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    if not roleAdmin['MAPPER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['MAPPER_ROLE'].field_0++
        roleAdmin['MAPPER_ROLE'][roleAdmin['MAPPER_ROLE'].field_0].field_0 = arg1
        roleAdmin['MAPPER_ROLE'][roleAdmin['MAPPER_ROLE'].field_0].field_160 = 0
        roleAdmin['MAPPER_ROLE'][1][address(arg1)].field_0 = roleAdmin['MAPPER_ROLE'].field_0
        emit RoleGranted(sha3('MAPPER_ROLE'), arg1, msg.sender);
    if not roleAdmin['STATE_SYNCER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['STATE_SYNCER_ROLE'].field_0++
        roleAdmin['STATE_SYNCER_ROLE'][roleAdmin['STATE_SYNCER_ROLE'].field_0].field_0 = arg1
        roleAdmin['STATE_SYNCER_ROLE'][roleAdmin['STATE_SYNCER_ROLE'].field_0].field_160 = 0
        roleAdmin['STATE_SYNCER_ROLE'][1][address(arg1)].field_0 = roleAdmin['STATE_SYNCER_ROLE'].field_0
        emit RoleGranted(sha3('STATE_SYNCER_ROLE'), arg1, msg.sender);
    stor0 = 1
}

function onStateReceive(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin['STATE_SYNCER_ROLE'][1][address(msg.sender)].field_0:
        mem[164] = uint256(stor2.field_0)
        idx = 164
        s = 0
        while stor2.length + 164 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor2.length, mem[164 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]
    require arg2.length >= 64
    require cd[(arg2 + 68)] <= 4294967296
    require cd[(arg2 + 68)] + 68 <= arg2.length + 36
    require cd[(arg2 + cd[(arg2 + 68)] + 36)] <= 4294967296 and cd[(arg2 + 68)] + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 68 <= arg2.length + 36
    mem[96] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    mem[128 len cd[(arg2 + cd[(arg2 + 68)] + 36)]] = call.data[arg2 + cd[(arg2 + 68)] + 68 len cd[(arg2 + cd[(arg2 + 68)] + 36)]]
    mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 128] = 0x4445504f53495400000000000000000000000000000000000000000000000000
    if cd[(arg2 + 36)] != sha3(Mask(56, -(8 * ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -cd[(arg2 + cd[(arg2 + 68)] + 36)] + 7) + 256, 0) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -cd[(arg2 + cd[(arg2 + 68)] + 36)] + 7) + 256):
        mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 128] = 0x4d41505f544f4b454e0000000000000000000000000000000000000000000000
        if cd[(arg2 + 36)] != sha3(Mask(72, -(8 * ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -cd[(arg2 + cd[(arg2 + 68)] + 36)] + 9) + 256, 0) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -cd[(arg2 + cd[(arg2 + 68)] + 36)] + 9) + 256):
            revert with 0, 
                        32,
                        36,
                        0x744368696c64436861696e4d616e616765723a20494e56414c49445f53594e435f545950,
                        mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 232 len 28]
        require cd[(arg2 + cd[(arg2 + 68)] + 36)] >= 96
        if rootToChildToken[stor4[address(mem[160])]]:
            rootToChildToken[stor4[address(mem[160])]] = 0
        if childToRootToken[stor3[mem[140 len 20]]]:
            childToRootToken[stor3[mem[140 len 20]]] = 0
        rootToChildToken[address(mem[128])] = mem[172 len 20]
        childToRootToken[address(mem[160])] = mem[140 len 20]
        emit TokenMapped(mem[140 len 20], mem[172 len 20]);
    else:
        require cd[(arg2 + cd[(arg2 + 68)] + 36)] >= 96
        _24 = mem[128]
        _25 = mem[160]
        _26 = mem[192]
        require mem[192] <= 4294967296
        require mem[192] + 64 <= cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32
        require cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32 >= mem[mem[192] + 128] + mem[192] + 64 and mem[mem[192] + 128] <= 4294967296
        mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 128] = mem[mem[192] + 128]
        _39 = mem[_26 + 128]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160 len ceil32(mem[_26 + 128])] = mem[_26 + 160 len ceil32(mem[_26 + 128])]
        if not _39 % 32:
            mem[64] = _39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160
            mem[0] = address(_25)
            mem[32] = 3
            if not rootToChildToken[address(_25)]:
                revert with 0, 
                            32,
                            35,
                            0x454368696c64436861696e4d616e616765723a20544f4b454e5f4e4f545f4d41505045,
                            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 263 len 29]
            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160] = 0xcf2c52cb00000000000000000000000000000000000000000000000000000000
            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 164] = address(_24)
            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 196] = 64
            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 228] = Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]
            mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])])] = mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])])]
            if not Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32:
                require ext_code.size(rootToChildToken[address(_25)])
                call rootToChildToken[address(_25)].deposit(address arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 164 len Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] + 96]
            else:
                mem[floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + _39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + _39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32]
                require ext_code.size(rootToChildToken[address(_25)])
                call rootToChildToken[address(_25)].deposit(address arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args mem[_39 + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 164 len floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + 128]
        else:
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160] = mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -(_39 % 32) + 192 len _39 % 32]
            mem[64] = floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192
            mem[0] = address(_25)
            mem[32] = 3
            if not rootToChildToken[address(_25)]:
                revert with 0, 
                            32,
                            35,
                            0x454368696c64436861696e4d616e616765723a20544f4b454e5f4e4f545f4d41505045,
                            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 295 len 29]
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] = 0xcf2c52cb00000000000000000000000000000000000000000000000000000000
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 196] = address(_24)
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 228] = 64
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 260] = Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]
            mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 292 len ceil32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])])] = mem[ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])])]
            if not Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32:
                require ext_code.size(rootToChildToken[address(_25)])
                call rootToChildToken[address(_25)].deposit(address arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 196 len Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] + 96]
            else:
                mem[floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 292] = mem[floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32) + 324 len Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] % 32]
                require ext_code.size(rootToChildToken[address(_25)])
                call rootToChildToken[address(_25)].deposit(address arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args mem[floor32(_39) + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 196 len floor32(Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg2 + cd[(arg2 + 68)] + 36)] + 160 len -cd[(arg2 + cd[(arg2 + 68)] + 36)] + ceil32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
