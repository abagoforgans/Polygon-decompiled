contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const getChainId = chainid

const ERC712_VERSION = ''

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = sha3(Mask(112, 144, 'DEPOSITOR_ROLE') >> 144)


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 uri;
array of struct roleAdmin;
array of struct stor5;
uint256 domainSeperator;
mapping of uint256 nonce;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x74455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) {
    return uri[0 len uri.length]
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

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x72456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x68455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                        mem[205 len 23]
        if msg.sender != this.address:
            stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor2[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 
                        32,
                        41,
                        0x68455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                        mem[ceil32(calldata.size) + 237 len 23]
        if msg.sender != this.address:
            stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor2[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
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
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
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
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        49,
                        0x73455243313135353a2062617463682062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 309 len 15]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
            revert with 0, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
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
            revert with 0, 
                        32,
                        48,
                        0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function withdrawSingle(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[199 len 29]
        if msg.sender != this.address:
            if arg2 > balanceOf[arg1][address(msg.sender)]:
                revert with 0, 32, 36, 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
            balanceOf[arg1][address(msg.sender)] -= arg2
            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if arg2 > balanceOf[arg1][address(msg.sender)]:
                revert with 0, 
                            32,
                            36,
                            0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 356 len 28],
                            mem[ceil32(calldata.size) + 412 len 4]
            balanceOf[arg1][address(msg.sender)] -= arg2
            emit TransferSingle(arg1, arg2, mem[calldata.size + 108 len 20], msg.sender, 0);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 231 len 29]
        if msg.sender != this.address:
            if arg2 > balanceOf[arg1][address(mem[calldata.size + 96])]:
                revert with 0, 
                            32,
                            36,
                            0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 356 len 28],
                            mem[ceil32(calldata.size) + 412 len 4]
            balanceOf[arg1][address(mem[calldata.size + 96])] -= arg2
            emit TransferSingle(arg1, arg2, msg.sender, mem[calldata.size + 108 len 20], 0);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 192] = arg1
            mem[(2 * ceil32(calldata.size)) + 224] = 1
            mem[(2 * ceil32(calldata.size)) + 256] = arg2
            mem[(2 * ceil32(calldata.size)) + 288] = 0
            mem[(2 * ceil32(calldata.size)) + 320] = 36
            mem[(2 * ceil32(calldata.size)) + 352 len 36] = 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[arg1][address(mem[calldata.size + 96])]:
                revert with 0, 
                            32,
                            36,
                            0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[(2 * ceil32(calldata.size)) + 388 len 28],
                            mem[(2 * ceil32(calldata.size)) + 444 len 4]
            balanceOf[arg1][address(mem[calldata.size + 96])] -= arg2
            mem[(2 * ceil32(calldata.size)) + 416] = arg1
            mem[(2 * ceil32(calldata.size)) + 448] = arg2
            emit TransferSingle(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], mem[calldata.size + 108 len 20], 0);
}

function withdrawBatch(uint256[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender != this.address:
        mem[96] = arg1.length
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg2.length
        mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not msg.sender:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg1.length) + 263 len 29]
        if arg1.length != arg2.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg1.length) + 268 len 24]
        if msg.sender != this.address:
            mem[64] = (32 * arg2.length) + (32 * arg1.length) + 192
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _155 = mem[(32 * idx) + (32 * arg1.length) + 160]
                _156 = mem[64]
                mem[64] = mem[64] + 96
                mem[_156] = 36
                mem[_156 + 32 len 36] = 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
                require idx < mem[96]
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if _155 <= balanceOf[mem[(32 * idx) + 128]][address(msg.sender)]:
                    require idx < mem[96]
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= _155
                    idx = idx + 1
                    continue 
                _193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 36
                idx = 0
                while idx < 36:
                    mem[idx + _193 + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
                mem[_193 + 100] = mem[_193 + 128 len 4]
                revert with memory
                  from mem[64]
                   len _193 + -mem[64] + 132
            _139 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _141 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _139 + 96] = mem[(32 * arg1.length) + 128]
            _244 = mem[(32 * arg1.length) + 128]
            mem[(32 * _141) + _139 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len (32 * _244) + (32 * _141) + _139 + -mem[64] + 128],
                               msg.sender,
                               msg.sender,
                               0,
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = calldata.size
            mem[(32 * arg2.length) + (32 * arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg2.length) + (32 * arg1.length) + calldata.size + 192] = 0
            _20 = mem[calldata.size + (32 * arg2.length) + (32 * arg1.length) + 160]
            mem[64] = (32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 224
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 192] = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _158 = mem[(32 * idx) + (32 * arg1.length) + 160]
                _159 = mem[64]
                mem[64] = mem[64] + 96
                mem[_159] = 36
                mem[_159 + 32 len 36] = 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
                require idx < mem[96]
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if _158 <= balanceOf[mem[(32 * idx) + 128]][address(msg.sender)]:
                    require idx < mem[96]
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= _158
                    idx = idx + 1
                    continue 
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 36
                idx = 0
                while idx < 36:
                    mem[idx + _198 + 68] = mem[idx + _159 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 100] = mem[_198 + 128 len 4]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 132
            _143 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _145 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _143 + 96] = mem[(32 * arg1.length) + 128]
            _248 = mem[(32 * arg1.length) + 128]
            mem[(32 * _145) + _143 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len (32 * _248) + (32 * _145) + _143 + -mem[64] + 128],
                               address(_20),
                               msg.sender,
                               0,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        _2 = mem[calldata.size + 96]
        mem[ceil32(calldata.size) + 128] = arg1.length
        mem[ceil32(calldata.size) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[ceil32(calldata.size) + (32 * arg1.length) + 160] = arg2.length
        mem[ceil32(calldata.size) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 295 len 29]
        if arg1.length != arg2.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 300 len 24]
        if msg.sender != this.address:
            mem[64] = (32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 224
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 192] = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
                _161 = mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]
                _162 = mem[64]
                mem[64] = mem[64] + 96
                mem[_162] = 36
                mem[_162 + 32 len 36] = 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
                require idx < mem[ceil32(calldata.size) + 128]
                mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
                if _161 <= balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(_2)]:
                    require idx < mem[ceil32(calldata.size) + 128]
                    mem[0] = address(_2)
                    mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
                    balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(_2)] -= _161
                    idx = idx + 1
                    continue 
                _203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 36
                idx = 0
                while idx < 36:
                    mem[idx + _203 + 68] = mem[idx + _162 + 32]
                    idx = idx + 32
                    continue 
                mem[_203 + 100] = mem[_203 + 128 len 4]
                revert with memory
                  from mem[64]
                   len _203 + -mem[64] + 132
            _147 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[ceil32(calldata.size) + 128]
            _149 = mem[ceil32(calldata.size) + 128]
            mem[mem[64] + 96 len floor32(mem[ceil32(calldata.size) + 128])] = mem[ceil32(calldata.size) + 160 len floor32(mem[ceil32(calldata.size) + 128])]
            mem[mem[64] + 32] = (32 * _149) + 96
            mem[(32 * _149) + _147 + 96] = mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
            _252 = mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
            mem[(32 * _149) + _147 + 128 len floor32(mem[ceil32(calldata.size) + (32 * arg1.length) + 160])] = mem[ceil32(calldata.size) + (32 * arg1.length) + 192 len floor32(mem[ceil32(calldata.size) + (32 * arg1.length) + 160])]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len (32 * _252) + (32 * _149) + _147 + -mem[64] + 128],
                               msg.sender,
                               address(_2),
                               0,
        else:
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 192] = calldata.size
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + calldata.size + 224] = 0
            _22 = mem[calldata.size + (32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 192]
            mem[64] = (32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 256
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 224] = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
                _164 = mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]
                _165 = mem[64]
                mem[64] = mem[64] + 96
                mem[_165] = 36
                mem[_165 + 32 len 36] = 0x29455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
                require idx < mem[ceil32(calldata.size) + 128]
                mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
                if _164 <= balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(_2)]:
                    require idx < mem[ceil32(calldata.size) + 128]
                    mem[0] = address(_2)
                    mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
                    balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(_2)] -= _164
                    idx = idx + 1
                    continue 
                _208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 36
                idx = 0
                while idx < 36:
                    mem[idx + _208 + 68] = mem[idx + _165 + 32]
                    idx = idx + 32
                    continue 
                mem[_208 + 100] = mem[_208 + 128 len 4]
                revert with memory
                  from mem[64]
                   len _208 + -mem[64] + 132
            _151 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[ceil32(calldata.size) + 128]
            _153 = mem[ceil32(calldata.size) + 128]
            mem[mem[64] + 96 len floor32(mem[ceil32(calldata.size) + 128])] = mem[ceil32(calldata.size) + 160 len floor32(mem[ceil32(calldata.size) + 128])]
            mem[mem[64] + 32] = (32 * _153) + 96
            mem[(32 * _153) + _151 + 96] = mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
            _256 = mem[ceil32(calldata.size) + (32 * arg1.length) + 160]
            mem[(32 * _153) + _151 + 128 len floor32(mem[ceil32(calldata.size) + (32 * arg1.length) + 160])] = mem[ceil32(calldata.size) + (32 * arg1.length) + 192 len floor32(mem[ceil32(calldata.size) + (32 * arg1.length) + 160])]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len (32 * _256) + (32 * _153) + _151 + -mem[64] + 128],
                               address(_22),
                               address(_2),
                               0,
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x52455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if msg.sender != this.address:
        if arg1 == msg.sender:
            if msg.sender != this.address:
                mem[ceil32(arg5.length) + 128] = 1
                require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + 330 len 22],
                                mem[ceil32(arg5.length) + 374 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + 128] = calldata.size
                mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + 140 len 20], arg1, arg2);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg5.length) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        else:
            if msg.sender != this.address:
                if not stor2[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                41,
                                0x52455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[ceil32(arg5.length) + 237 len 23]
                if msg.sender != this.address:
                    mem[ceil32(arg5.length) + 128] = 1
                    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + 330 len 22],
                                    mem[ceil32(arg5.length) + 374 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + 128] = calldata.size
                    mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + 140 len 20], arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg5.length) + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + 128] = calldata.size
                mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not stor2[address(arg1)][address(mem[calldata.size + ceil32(arg5.length) + 128])]:
                    revert with 0, 
                                32,
                                41,
                                0x52455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                if msg.sender != this.address:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20]
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
    else:
        mem[ceil32(arg5.length) + 128] = calldata.size
        mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + ceil32(arg5.length) + 140 len 20]:
            if msg.sender != this.address:
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], arg1, arg2);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20]
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        else:
            if this.address == msg.sender:
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not stor2[address(arg1)][address(mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 160])]:
                    revert with 0, 
                                32,
                                41,
                                0x52455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 301 len 23]
                if msg.sender != this.address:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 192] = calldata.size
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 426 len 22],
                                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 470 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 448] = arg3
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 480] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 204 len 20], arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 448] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = mem[calldata.size + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 204 len 20]
                            mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 644 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 204 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                if not stor2[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                41,
                                0x52455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                if msg.sender != this.address:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], arg1, arg2);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20]
                            mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            require ext_code.size(arg2)
                            call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg5.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                            Mask(96, 0, arg4)
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function deposit(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        mem[0] = msg.sender
        if not roleAdmin['DEPOSITOR_ROLE'][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor5.field_0)
            idx = 164
            s = 0
            while stor5.length + 164 > idx + 32:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor5.length, mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
        require arg2.length >= 96
        require cd[(arg2 + 36)] <= 4294967296
        require cd[(arg2 + 36)] + 68 <= arg2.length + 36
        require cd[(arg2 + cd[(arg2 + 36)] + 36)] <= 4294967296 and cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68 <= arg2.length + 36
        mem[96] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
        mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + 36)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
        require cd[(arg2 + 68)] <= 4294967296
        require cd[(arg2 + 68)] + 68 <= arg2.length + 36
        require cd[(arg2 + cd[(arg2 + 68)] + 36)] <= 4294967296 and cd[(arg2 + 68)] + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 68 <= arg2.length + 36
        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 128] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = call.data[arg2 + cd[(arg2 + 68)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
        require cd[(arg2 + 100)] <= 4294967296
        require cd[(arg2 + 100)] + 68 <= arg2.length + 36
        require cd[(arg2 + cd[(arg2 + 100)] + 36)] <= 4294967296 and cd[(arg2 + 100)] + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 68 <= arg2.length + 36
        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 160] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192 len cd[(arg2 + cd[(arg2 + 100)] + 36)]] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]]
        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 192] = 0
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x654368696c64455243313135353a20494e56414c49445f4445504f5349545f555345,
                        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 294 len 30]
        if cd[(arg2 + cd[(arg2 + 36)] + 36)] != cd[(arg2 + cd[(arg2 + 68)] + 36)]:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 300 len 24]
        if msg.sender != this.address:
            idx = 0
            while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
                require idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160] < mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]
                idx = idx + 1
                continue 
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 192] = 64
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 288 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 288] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            s = 0
            while cd[(arg2 + cd[(arg2 + 36)] + 36)] < 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]:
                mem[(67 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 320] = mem[(34 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]
                s = cd[(arg2 + cd[(arg2 + 36)] + 36)] + 32
                continue 
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 32, 0, 0),
                               mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 224 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -cd[(arg2 + cd[(arg2 + 100)] + 36)] + 32],
                               cd[(arg2 + cd[(arg2 + 36)] + 36)],
                               call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])],
                               mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 288 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 32],
                               msg.sender,
                               0,
                               arg1,
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            if not ext_code.hash(arg1):
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 388 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 388] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 420 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] = call.data[arg2 + cd[(arg2 + 68)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]
            mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 420] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
            mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 192 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)]]
            if not cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32:
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 388 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 64]
            else:
                mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452] = mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -(cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32) + 484 len cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32]
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 388 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                Mask(192, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if not bool(36 <= return_data.size):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if not (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 192:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[floor32((32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 31) + 127 len 12]
        else:
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 192] = calldata.size
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + calldata.size + 224] = 0
            idx = 0
            while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
                require idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160] < mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]
                idx = idx + 1
                continue 
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 224] = 64
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 288] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 320 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 256] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 320] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            s = 0
            while cd[(arg2 + cd[(arg2 + 36)] + 36)] < 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]:
                mem[(67 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 352] = mem[(34 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]
                s = cd[(arg2 + cd[(arg2 + 36)] + 36)] + 32
                continue 
            emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 320 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 32]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, mem[calldata.size + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 204 len 20], 0, arg1);
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            if not ext_code.hash(arg1):
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 420 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 420] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 452 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] = call.data[arg2 + cd[(arg2 + 68)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]
            mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 452] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
            mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 484 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 192 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)]]
            if not cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32:
                require ext_code.size(arg1)
                call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[calldata.size + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 204 len 20], 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 420 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 64]
            else:
                mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 484] = mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + -(cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32) + 516 len cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32]
                require ext_code.size(arg1)
                call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[calldata.size + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 204 len 20], 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 420 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                Mask(192, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if not bool(36 <= return_data.size):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
            if not (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 224:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[floor32((32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + ceil32(calldata.size) + 31) + 128 len 12]
        revert with 0, ''
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    mem[0] = mem[calldata.size + 108 len 20]
    mem[32] = sha3(sha3('DEPOSITOR_ROLE'), 4) + 1
    if not roleAdmin['DEPOSITOR_ROLE'][1][address(mem[calldata.size + 96])].field_0:
        mem[ceil32(calldata.size) + 196] = uint256(stor5.field_0)
        idx = ceil32(calldata.size) + 196
        s = 0
        while ceil32(calldata.size) + stor5.length + 196 > idx + 32:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor5.length,
                    mem[ceil32(calldata.size) + 196 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
    require arg2.length >= 96
    require cd[(arg2 + 36)] <= 4294967296
    require cd[(arg2 + 36)] + 68 <= arg2.length + 36
    require cd[(arg2 + cd[(arg2 + 36)] + 36)] <= 4294967296 and cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68 <= arg2.length + 36
    mem[ceil32(calldata.size) + 128] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
    mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + 36)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
    require cd[(arg2 + 68)] <= 4294967296
    require cd[(arg2 + 68)] + 68 <= arg2.length + 36
    require cd[(arg2 + cd[(arg2 + 68)] + 36)] <= 4294967296 and cd[(arg2 + 68)] + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 68 <= arg2.length + 36
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = call.data[arg2 + cd[(arg2 + 68)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
    require cd[(arg2 + 100)] <= 4294967296
    require cd[(arg2 + 100)] + 68 <= arg2.length + 36
    require cd[(arg2 + cd[(arg2 + 100)] + 36)] <= 4294967296 and cd[(arg2 + 100)] + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 68 <= arg2.length + 36
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224 len cd[(arg2 + cd[(arg2 + 100)] + 36)]] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]]
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 224] = 0
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x654368696c64455243313135353a20494e56414c49445f4445504f5349545f555345,
                    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 326 len 30]
    if cd[(arg2 + cd[(arg2 + 36)] + 36)] != cd[(arg2 + cd[(arg2 + 68)] + 36)]:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 332 len 24]
    if msg.sender != this.address:
        idx = 0
        while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
            require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
            require idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]
            if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] + mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192] < mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
            balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] += mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192]
            idx = idx + 1
            continue 
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224] = 64
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 288] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 320 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96
        mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 320] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        s = 0
        while cd[(arg2 + cd[(arg2 + 36)] + 36)] < 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]:
            mem[(67 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 352] = mem[(34 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + 192]
            s = cd[(arg2 + cd[(arg2 + 36)] + 36)] + 32
            continue 
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           Mask(8 * -ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 32, 0, 0),
                           mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 256 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -cd[(arg2 + cd[(arg2 + 100)] + 36)] + 32],
                           cd[(arg2 + cd[(arg2 + 36)] + 36)],
                           call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])],
                           mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 320 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 32],
                           msg.sender,
                           0,
                           arg1,
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        if not ext_code.hash(arg1):
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 420 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
        mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 420] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])] = call.data[arg2 + cd[(arg2 + 68)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 68)] + 36)])]
        mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
        mem[(64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 484 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 224 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)]]
        if not cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32:
            require ext_code.size(arg1)
            call arg1 with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 420 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 64]
        else:
            mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 484] = mem[floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -(cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32) + 516 len cd[(arg2 + cd[(arg2 + 100)] + 36)] % 32]
            require ext_code.size(arg1)
            call arg1 with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 420 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            Mask(192, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
        if not bool(36 <= return_data.size):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
        if 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192)
        if not ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[floor32(ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 31) + 128 len 12]
        revert with 0, ''
    mem[64] = (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224] = calldata.size
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + calldata.size + 256] = 0
    _41 = mem[calldata.size + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 224]
    idx = 0
    while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
        require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
        require idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]
        if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] + mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192] < mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 1)
        balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] += mem[(32 * idx) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192]
        idx = idx + 1
        continue 
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = 64
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 320] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 352 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])] = call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])]
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 288] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96
    mem[(64 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 352] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    s = 0
    while cd[(arg2 + cd[(arg2 + 36)] + 36)] < 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]:
        mem[(67 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 384] = mem[(34 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(calldata.size) + 192]
        s = cd[(arg2 + cd[(arg2 + 36)] + 36)] + 32
        continue 
    emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + 36)] + 68 len floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)])], mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 352 len (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + -floor32(cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 32]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, address(_41), 0, arg1);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
    if not ext_code.hash(arg1):
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 260] = address(_41)
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 292] = 0
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 324] = 160
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 420] = mem[ceil32(calldata.size) + 128]
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452 len floor32(mem[ceil32(calldata.size) + 128])] = mem[ceil32(calldata.size) + 160 len floor32(mem[ceil32(calldata.size) + 128])]
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 356] = (32 * mem[ceil32(calldata.size) + 128]) + 192
    mem[(32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452] = mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]
    mem[(32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 484 len floor32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160])] = mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192 len floor32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160])]
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 388] = (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 224
    mem[(32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 484] = mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192]
    mem[(32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 516 len ceil32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192])] = mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224 len ceil32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192])]
    if not mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] % 32:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(_41), 0, 160, (32 * mem[ceil32(calldata.size) + 128]) + 192, (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 224, mem[ceil32(calldata.size) + 128], mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452 len mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] + (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 64]
    else:
        mem[floor32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192]) + (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 516] = mem[floor32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192]) + (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] % 32) + 548 len mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192] % 32]
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(_41), 0, 160, (32 * mem[ceil32(calldata.size) + 128]) + 192, (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 224, mem[ceil32(calldata.size) + 128], mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 452 len (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 32], mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192], mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + (32 * mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160]) + (32 * mem[ceil32(calldata.size) + 128]) + 516 len floor32(mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 192]) + 32]
    if ext_call.success:
        require return_data.size >= 32
        if 0xbc197c8100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 260] = 32
        mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 292] = 40
        mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 324 len 40] = 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e
        revert with 0, 
                    32,
                    40,
                    0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                    Mask(192, 0, (32 * mem[ceil32(calldata.size) + 128]) + 192)
    if return_data.size >= 68:
        if uint32(mem[4 len 28]) >> 224 == Error(string arg1):
            mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if bool(36 <= return_data.size):
                if 32 <= return_data.size:
                    if not (2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256:
                        revert with 0, 
                                    32,
                                    52,
                                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                    mem[floor32((2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 31) + 129 len 12]
                    revert with 0, ''
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 260] = 32
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 292] = 52
    mem[(2 * ceil32(calldata.size)) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + 324 len 52] = 0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465
    revert with 0, 
                32,
                52,
                0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                Mask(96, 0, (32 * mem[ceil32(calldata.size) + 128]) + 192)
}



}
