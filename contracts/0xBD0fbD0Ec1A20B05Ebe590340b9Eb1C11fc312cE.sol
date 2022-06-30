contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const getChainId = chainid

const ERC712_VERSION = '1'

const BATCH_LIMIT = 20

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = sha3(Mask(112, 144, 'DEPOSITOR_ROLE') >> 144)


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor8;
array of struct baseURI;
array of struct roleAdmin;
array of struct stor11;
uint256 domainSeperator;
mapping of uint256 nonce;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
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
    return address(roleAdmin[arg1][arg2].field_0)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], arg1);
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
            address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
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
            address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if this.address != msg.sender:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                        0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                        0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
                        0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if this.address != msg.sender:
        if address(tokenByIndex[stor3[arg1] - 1].field_256) != msg.sender:
            revert with 0, 'ChildERC721: INVALID_TOKEN_OWNER'
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[265 len 23],
                        mem[311 len 9]
        require stor3[arg1] - 1 < tokenByIndex.length
        approved[arg1] = 0
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[361 len 23],
                        mem[407 len 9]
    else:
        mem[192] = calldata.size
        mem[224 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 204 len 20] != address(tokenByIndex[stor3[arg1] - 1].field_256):
            revert with 0, 'ChildERC721: INVALID_TOKEN_OWNER'
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 297 len 23],
                        mem[ceil32(calldata.size) + 343 len 9]
        require stor3[arg1] - 1 < tokenByIndex.length
        approved[arg1] = 0
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 393 len 23],
                        mem[ceil32(calldata.size) + 439 len 9]
    ('bool', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))))
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
    if Mask(255, 1, (256 * not bool(stor8[arg1].field_0)) - 1 and stor8[arg1].field_0):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]:
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] = 0
    if stor3[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor3[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor3[stor2[stor2.length - 1].field_0] = stor3[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor3[arg1] = 0
    emit Transfer(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if this.address != msg.sender:
        if msg.sender == address(tokenByIndex[stor3[arg2] - 1].field_256):
            approved[arg2] = arg1
            if not stor3[arg2]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[265 len 23],
                            mem[311 len 9]
        else:
            if this.address != msg.sender:
                if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                56,
                                0x524552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[316 len 8]
                approved[arg2] = arg1
                if not stor3[arg2]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[265 len 23],
                                mem[311 len 9]
            else:
                mem[192] = calldata.size
                mem[224 len calldata.size] = call.data[0 len calldata.size]
                if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(mem[calldata.size + 192])]:
                    revert with 0, 
                                32,
                                56,
                                0x524552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[ceil32(calldata.size) + 348 len 8]
                approved[arg2] = arg1
                if not stor3[arg2]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(calldata.size) + 297 len 23],
                                mem[ceil32(calldata.size) + 343 len 9]
    else:
        mem[192] = calldata.size
        mem[224 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 204 len 20] == address(tokenByIndex[stor3[arg2] - 1].field_256):
            approved[arg2] = arg1
            if not stor3[arg2]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(calldata.size) + 297 len 23],
                            mem[ceil32(calldata.size) + 343 len 9]
        else:
            if this.address != msg.sender:
                if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                56,
                                0x524552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[ceil32(calldata.size) + 348 len 8]
                approved[arg2] = arg1
                if not stor3[arg2]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(calldata.size) + 297 len 23],
                                mem[ceil32(calldata.size) + 343 len 9]
            else:
                mem[ceil32(calldata.size) + 224] = calldata.size
                mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
                if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(mem[ceil32(calldata.size) + calldata.size + 224])]:
                    revert with 0, 
                                32,
                                56,
                                0x524552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                                mem[(2 * ceil32(calldata.size)) + 380 len 8]
                approved[arg2] = arg1
                if not stor3[arg2]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[(2 * ceil32(calldata.size)) + 329 len 23],
                                mem[(2 * ceil32(calldata.size)) + 375 len 9]
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'stor3', 3))))
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if this.address != msg.sender:
        if not stor3[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[169 len 23],
                        mem[215 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
            if not stor3[arg3]:
                revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
            if approved[arg3] != msg.sender:
                if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                49,
                                0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[309 len 15]
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[265 len 23],
                        mem[311 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x294552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[361 len 23],
                        mem[407 len 9]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 240 len 20]
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 201 len 23],
                        mem[ceil32(calldata.size) + 247 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if mem[calldata.size + 108 len 20] != address(tokenByIndex[stor3[arg3] - 1].field_256):
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            44,
                            0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(calldata.size) + 336 len 20]
            if approved[arg3] != mem[calldata.size + 108 len 20]:
                if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(mem[calldata.size + 96])]:
                    revert with 0, 
                                32,
                                49,
                                0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[ceil32(calldata.size) + 341 len 15]
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 297 len 23],
                        mem[ceil32(calldata.size) + 343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
            revert with 0, 
                        32,
                        41,
                        0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                        mem[ceil32(calldata.size) + 429 len 23]
        if not arg2:
            revert with 0, 
                        32,
                        36,
                        0x294552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 424 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(calldata.size) + 393 len 23],
                        mem[ceil32(calldata.size) + 439 len 9]
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'stor3', 3))))
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x684552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[64] = ceil32(stor8[arg1].length) + 128
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var23001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length > 0:
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1077 = mem[_1006]
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        var33001 = ceil32(_1077)
        if not _1077 % 32:
            return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len _1077 + 32]
        mem[floor32(_1077) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224] = mem[floor32(_1077) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + -(_1077 % 32) + 256 len _1077 % 32]
        return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len floor32(_1077) + 64]
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + 192
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        var32001 = ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + 160
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function withdrawBatch(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > 20:
        revert with 0, 'ChildERC721: EXCEEDS_BATCH_LIMIT'
    idx = 0
    while idx < arg1.length:
        _253 = mem[64]
        mem[64] = mem[64] + 96
        mem[_253] = 41
        mem[_253 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 3
        if not stor3[cd[((32 * idx) + arg1 + 36)]]:
            _257 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[_257 + idx + 68] = mem[_253 + idx + 32]
                idx = idx + 32
                continue 
            mem[_257 + 100] = mem[_257 + 123 len 9]
            revert with memory
              from mem[64]
               len _257 + -mem[64] + 132
        require stor3[cd[((32 * idx) + arg1 + 36)]] - 1 < tokenByIndex.length
        mem[0] = 2
        if this.address != msg.sender:
            _271 = mem[64]
            mem[mem[64] + 32 len 33] = 0x654368696c644552433732313a20494e56414c49445f544f4b454e5f4f574e4552
            mem[mem[64] + 65] = cd[((32 * idx) + arg1 + 36)]
            _272 = mem[64]
            mem[mem[64]] = _271 + -mem[64] + 65
            mem[64] = _271 + 97
            if address(tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256) != msg.sender:
                mem[_271 + 97] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_271 + 101] = 32
                mem[_271 + 133] = mem[_272]
                _277 = mem[_272]
                idx = 0
                while idx < _277:
                    mem[_271 + idx + 165] = mem[_272 + idx + 32]
                    idx = idx + 32
                    continue 
                if not _277 % 32:
                    revert with 0, 32, mem[_271 + 133 len _277 + 32]
                mem[floor32(_277) + _271 + 165] = mem[floor32(_277) + _271 + -(_277 % 32) + 197 len _277 % 32]
                revert with 0, 32, mem[_271 + 133 len floor32(_277) + 64]
            mem[_271 + 97] = 41
            mem[_271 + 129 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor3[cd[((32 * idx) + arg1 + 36)]]:
                mem[_271 + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_271 + 197] = 32
                idx = 0
                while idx < 41:
                    mem[_271 + idx + 261] = mem[_271 + idx + 129]
                    idx = idx + 32
                    continue 
                mem[_271 + 293] = mem[_271 + 316 len 9]
                revert with 0, 32, 41, mem[_271 + 261 len 64]
            require stor3[cd[((32 * idx) + arg1 + 36)]] - 1 < tokenByIndex.length
            approved[cd[((32 * idx) + arg1 + 36)]] = 0
            mem[64] = _271 + 289
            mem[_271 + 193] = 41
            mem[_271 + 225 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor3[cd[((32 * idx) + arg1 + 36)]]:
                mem[_271 + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_271 + 293] = 32
                idx = 0
                while idx < 41:
                    mem[_271 + idx + 357] = mem[_271 + idx + 225]
                    idx = idx + 32
                    continue 
                mem[_271 + 389] = mem[_271 + 412 len 9]
                revert with 0, 32, 41, mem[_271 + 357 len 64]
        else:
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_269] = calldata.size
            mem[_269 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_269 + calldata.size + 32] = 0
            _270 = mem[_269 + calldata.size]
            _273 = mem[64]
            mem[mem[64] + 32 len 33] = 0x654368696c644552433732313a20494e56414c49445f544f4b454e5f4f574e4552
            mem[mem[64] + 65] = cd[((32 * idx) + arg1 + 36)]
            _274 = mem[64]
            mem[mem[64]] = _273 + -mem[64] + 65
            mem[64] = _273 + 97
            if address(_270) != address(tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256):
                mem[_273 + 97] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_273 + 101] = 32
                mem[_273 + 133] = mem[_274]
                _280 = mem[_274]
                idx = 0
                while idx < _280:
                    mem[_273 + idx + 165] = mem[_274 + idx + 32]
                    idx = idx + 32
                    continue 
                if not _280 % 32:
                    revert with 0, 32, mem[_273 + 133 len _280 + 32]
                mem[floor32(_280) + _273 + 165] = mem[floor32(_280) + _273 + -(_280 % 32) + 197 len _280 % 32]
                revert with 0, 32, mem[_273 + 133 len floor32(_280) + 64]
            mem[_273 + 97] = 41
            mem[_273 + 129 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor3[cd[((32 * idx) + arg1 + 36)]]:
                mem[_273 + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_273 + 197] = 32
                idx = 0
                while idx < 41:
                    mem[_273 + idx + 261] = mem[_273 + idx + 129]
                    idx = idx + 32
                    continue 
                mem[_273 + 293] = mem[_273 + 316 len 9]
                revert with 0, 32, 41, mem[_273 + 261 len 64]
            require stor3[cd[((32 * idx) + arg1 + 36)]] - 1 < tokenByIndex.length
            approved[cd[((32 * idx) + arg1 + 36)]] = 0
            mem[64] = _273 + 289
            mem[_273 + 193] = 41
            mem[_273 + 225 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor3[cd[((32 * idx) + arg1 + 36)]]:
                mem[_273 + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_273 + 293] = 32
                idx = 0
                while idx < 41:
                    mem[_273 + idx + 357] = mem[_273 + idx + 225]
                    idx = idx + 32
                    continue 
                mem[_273 + 389] = mem[_273 + 412 len 9]
                revert with 0, 32, 41, mem[_273 + 357 len 64]
        ('iszero', ('iszero', ('stor', ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('param', 'arg1'))), ('name', 'stor3', 3)))))
        require stor3[cd[((32 * idx) + arg1 + 36)]] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256), 0, cd[((32 * idx) + arg1 + 36)]);
        if Mask(255, 1, (256 * not bool(stor8[cd[((32 * idx) + arg1 + 36)]].field_0)) - 1 and stor8[cd[((32 * idx) + arg1 + 36)]].field_0):
            stor8[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
            if 31 < stor8[cd[((32 * idx) + arg1 + 36)]].length:
                s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 8))
                while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 8)) + (stor8[cd[((32 * idx) + arg1 + 36)]].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][cd[((32 * idx) + arg1 + 36)]]:
            require tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]
            require tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][cd[((32 * idx) + arg1 + 36)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][cd[((32 * idx) + arg1 + 36)]]] = tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]]
            tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][cd[((32 * idx) + arg1 + 36)]]
            require tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]] = 0
            tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)]--
            tokenOfOwnerByIndex[address(stor2[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256)][1][cd[((32 * idx) + arg1 + 36)]] = 0
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 3
        if stor3[cd[((32 * idx) + arg1 + 36)]]:
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor3[cd[((32 * idx) + arg1 + 36)]] - 1 < tokenByIndex.length
            tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
            tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
            stor3[stor2[stor2.length - 1].field_0] = stor3[cd[((32 * idx) + arg1 + 36)]]
            require tokenByIndex.length
            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
            tokenByIndex.length--
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            stor3[cd[((32 * idx) + arg1 + 36)]] = 0
        emit Transfer(address(tokenByIndex[stor3[cd[((32 * idx) + arg1 + 36)]] - 1].field_256), 0, cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        continue 
    if this.address != msg.sender:
        _260 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1.length
        mem[mem[64] + 64 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[mem[64] + (32 * arg1.length) + 64] = 0
        emit WithdrawnBatch(mem[mem[64] len _260 + floor32(arg1.length) + -mem[64] + 64], msg.sender);
    else:
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(calldata.size) + 32
        mem[_254] = calldata.size
        mem[_254 + 32 len calldata.size] = call.data[0 len calldata.size]
        mem[_254 + calldata.size + 32] = 0
        _255 = mem[_254 + calldata.size]
        _262 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1.length
        mem[mem[64] + 64 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[mem[64] + (32 * arg1.length) + 64] = 0
        emit WithdrawnBatch(mem[mem[64] len _262 + floor32(arg1.length) + -mem[64] + 64], address(_255));
}

function deposit(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if this.address != msg.sender:
        if not roleAdmin['DEPOSITOR_ROLE'][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor11.field_0)
            idx = 164
            s = 0
            while stor11.length + 164 > idx + 32:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor11.length, mem[164 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
        require arg2.length >= 32
        if arg2.length != 32:
            require cd[(arg2 + 36)] <= 4294967296
            require cd[(arg2 + 36)] + 68 <= arg2.length + 36
            require cd[(arg2 + cd[(arg2 + 36)] + 36)] <= 4294967296 and cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68 <= arg2.length + 36
            mem[64] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 128
            mem[96] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + 36)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
            mem[(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 128] = 0
            idx = 0
            while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                require idx < mem[96]
                _154 = mem[(32 * idx) + 128]
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][mem[(32 * idx) + 128]]:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 3
                    if stor3[mem[(32 * idx) + 128]]:
                        require stor3[mem[(32 * idx) + 128]] - 1 < tokenByIndex.length
                        mem[0] = 2
                        address(tokenByIndex[stor3[mem[(32 * idx) + 128]] - 1].field_256) = arg1
                        Mask(96, 0, tokenByIndex[stor3[mem[(32 * idx) + 128]] - 1].field_416) = 0
                        emit Transfer(0, arg1, mem[(32 * idx) + 128]);
                    else:
                        _180 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_180] = mem[(32 * idx) + 128]
                        mem[_180 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _154
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = _154
                        mem[32] = 3
                        stor3[_154] = tokenByIndex.length
                        emit Transfer(0, arg1, _154);
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = mem[(32 * idx) + 128]
                    tokenOfOwnerByIndex[address(arg1)][1][mem[(32 * idx) + 128]] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 3
                    if stor3[mem[(32 * idx) + 128]]:
                        require stor3[mem[(32 * idx) + 128]] - 1 < tokenByIndex.length
                        mem[0] = 2
                        address(tokenByIndex[stor3[mem[(32 * idx) + 128]] - 1].field_256) = arg1
                        Mask(96, 0, tokenByIndex[stor3[mem[(32 * idx) + 128]] - 1].field_416) = 0
                        emit Transfer(0, arg1, mem[(32 * idx) + 128]);
                    else:
                        _185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_185] = mem[(32 * idx) + 128]
                        mem[_185 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _154
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = _154
                        mem[32] = 3
                        stor3[_154] = tokenByIndex.length
                        emit Transfer(0, arg1, _154);
                idx = idx + 1
                continue 
        else:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor3[cd[(arg2 + 36)]]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(arg1)][1][cd[(arg2 + 36)]]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = cd[(arg2 + 36)]
                tokenOfOwnerByIndex[address(arg1)][1][cd[(arg2 + 36)]] = tokenOfOwnerByIndex[address(arg1)]
            if stor3[cd[(arg2 + 36)]]:
                require stor3[cd[(arg2 + 36)]] - 1 < tokenByIndex.length
                address(tokenByIndex[stor3[cd[(arg2 + 36)]] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor3[cd[(arg2 + 36)]] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = cd[(arg2 + 36)]
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[cd[(arg2 + 36)]] = tokenByIndex.length
            emit Transfer(0, arg1, cd[(arg2 + 36)]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin['DEPOSITOR_ROLE'][1][address(mem[calldata.size + 96])].field_0:
            mem[ceil32(calldata.size) + 196] = uint256(stor11.field_0)
            idx = ceil32(calldata.size) + 196
            s = 0
            while ceil32(calldata.size) + stor11.length + 196 > idx + 32:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor11.length,
                        mem[ceil32(calldata.size) + 196 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
        require arg2.length >= 32
        if arg2.length != 32:
            require cd[(arg2 + 36)] <= 4294967296
            require cd[(arg2 + 36)] + 68 <= arg2.length + 36
            require cd[(arg2 + cd[(arg2 + 36)] + 36)] <= 4294967296 and cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68 <= arg2.length + 36
            mem[64] = ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160
            mem[ceil32(calldata.size) + 128] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + 36)] + 68 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
            mem[ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 160] = 0
            idx = 0
            while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                require idx < mem[ceil32(calldata.size) + 128]
                _156 = mem[(32 * idx) + ceil32(calldata.size) + 160]
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][mem[(32 * idx) + ceil32(calldata.size) + 160]]:
                    mem[0] = mem[(32 * idx) + ceil32(calldata.size) + 160]
                    mem[32] = 3
                    if stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]]:
                        require stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1 < tokenByIndex.length
                        mem[0] = 2
                        address(tokenByIndex[stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1].field_256) = arg1
                        Mask(96, 0, tokenByIndex[stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1].field_416) = 0
                        emit Transfer(0, arg1, mem[(32 * idx) + ceil32(calldata.size) + 160]);
                    else:
                        _190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_190] = mem[(32 * idx) + ceil32(calldata.size) + 160]
                        mem[_190 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _156
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = _156
                        mem[32] = 3
                        stor3[_156] = tokenByIndex.length
                        emit Transfer(0, arg1, _156);
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = mem[(32 * idx) + ceil32(calldata.size) + 160]
                    tokenOfOwnerByIndex[address(arg1)][1][mem[(32 * idx) + ceil32(calldata.size) + 160]] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = mem[(32 * idx) + ceil32(calldata.size) + 160]
                    mem[32] = 3
                    if stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]]:
                        require stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1 < tokenByIndex.length
                        mem[0] = 2
                        address(tokenByIndex[stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1].field_256) = arg1
                        Mask(96, 0, tokenByIndex[stor3[mem[(32 * idx) + ceil32(calldata.size) + 160]] - 1].field_416) = 0
                        emit Transfer(0, arg1, mem[(32 * idx) + ceil32(calldata.size) + 160]);
                    else:
                        _195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_195] = mem[(32 * idx) + ceil32(calldata.size) + 160]
                        mem[_195 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _156
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = _156
                        mem[32] = 3
                        stor3[_156] = tokenByIndex.length
                        emit Transfer(0, arg1, _156);
                idx = idx + 1
                continue 
        else:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor3[cd[(arg2 + 36)]]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(arg1)][1][cd[(arg2 + 36)]]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = cd[(arg2 + 36)]
                tokenOfOwnerByIndex[address(arg1)][1][cd[(arg2 + 36)]] = tokenOfOwnerByIndex[address(arg1)]
            if stor3[cd[(arg2 + 36)]]:
                require stor3[cd[(arg2 + 36)]] - 1 < tokenByIndex.length
                address(tokenByIndex[stor3[cd[(arg2 + 36)]] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor3[cd[(arg2 + 36)]] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = cd[(arg2 + 36)]
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[cd[(arg2 + 36)]] = tokenByIndex.length
            emit Transfer(0, arg1, cd[(arg2 + 36)]);
}



}
