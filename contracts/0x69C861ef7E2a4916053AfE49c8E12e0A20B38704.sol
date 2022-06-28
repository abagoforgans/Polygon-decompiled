contract main {




// =====================  Runtime code  =====================


#
#  - workerExecuteMetaTransaction(address arg1, bytes32 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint8 arg6)
#
const name = 'GAME Credits ERC721'

const getChainId = chainid

const isLocalContract = 1

const symbol = ''

const EIP712_DOMAIN_TYPEHASH = sha3(0x72454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const CONTRACT_ERC712_NAME = Array(len=38, data=0x7747414d4520437265646974732053696465636861696e2045524337323120436f6e74726163, mem[166 len 26], mem[218 len 6])

const CONTRACT_ERC712_VERSION = ''


uint256 domainSeperator;
uint256 workerDomainSeperator;
mapping of uint256 nonce;
mapping of address validCryptoAccount;
mapping of struct cryptoToGame;
mapping of address approvedCryptoAccounts;
array of struct gamesLinkedToCrypto;
mapping of uint256 gamesLinkedToCryptoPointers;
mapping of struct indexToOwner;
mapping of address indexToApproved;
mapping of uint8 stor11;
array of struct balanceOfGame;
mapping of uint256 stor13;
mapping of uint256 indexToTradableTime;
address masterContractAddress;
address gameContractAddress;
address erc20ContractAddress;
mapping of uint8 stor18;
mapping of struct collectibleData;

function gameToCrypto(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return validCryptoAccount[arg1][arg2]
}

function getCollectibleData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint128(collectibleData[arg1].field_0), 
           Mask(96, 0, collectibleData[arg1].field_0),
           uint32(collectibleData[arg1].field_0)
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint256(indexToOwner[arg1].field_0):
        revert with 0, 'token Id is not valid'
    return indexToApproved[arg1]
}

function getWorkerDomainSeperator() {
    return workerDomainSeperator
}

function indexToApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    return indexToApproved[arg1]
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function cryptoToGame(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(cryptoToGame[arg1][arg2].field_0)
}

function gamesLinkedToCrypto(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(gamesLinkedToCrypto[arg1].field_0)
    return uint256(gamesLinkedToCrypto[arg1][arg2].field_0)
}

function collectibleData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(collectibleData[arg1].field_0)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not validCryptoAccount[arg1 << 192][uint256(stor9[arg1].field_0)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                    mem[204 len 24]
    return validCryptoAccount[arg1 << 192][uint256(stor9[arg1].field_0)]
}

function balanceOfGame(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not uint256(cryptoToGame[arg1][address(arg2)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                    mem[212 len 16]
    return uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)
}

function localContracts(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function getValidInGameAccount(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not uint256(cryptoToGame[arg1][address(arg2)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                    mem[212 len 16]
    return uint256(cryptoToGame[arg1][address(arg2)].field_0)
}

function getCryptoAccount(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return validCryptoAccount[arg1][arg2]
}

function getInGameAccount(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(cryptoToGame[arg1][address(arg2)].field_0)
}

function indexToTradableTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    return indexToTradableTime[arg1]
}

function erc20Contract() {
    return erc20ContractAddress
}

function inGameOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(indexToOwner[arg1].field_0)
}

function gamesLinkedToCryptoPointers(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return gamesLinkedToCryptoPointers[arg1][arg2]
}

function approvedCryptoAccounts(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return approvedCryptoAccounts[arg1][arg2]
}

function masterContract() {
    return masterContractAddress
}

function indexToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(indexToOwner[arg1].field_0)
}

function gameContract() {
    return gameContractAddress
}

function balanceOfInGameAccount(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return uint256(balanceOfGame[arg1][arg2].field_0)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor11[address(arg1)][address(arg2)])
}

function getValidCryptoAccount(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not validCryptoAccount[arg1][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                    mem[204 len 24]
    return validCryptoAccount[arg1][arg2]
}

function _fallback() payable {
    revert
}

function parseCollectibleData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return Mask(256, -128, arg1) << 128, Mask(96, 32, arg1) << 128, uint32(arg1)
}

function encodeCollectibleData(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint128(arg1) != arg1:
        revert with 0, 'no xp overflow'
    if Mask(96, 0, arg2) != arg2:
        revert with 0, 'no xpPerHour overflow'
    if uint32(arg3) != arg3:
        revert with 0, 'no creationTime overflow'
    return arg2
}

function linkContracts(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if gameContractAddress:
        revert with 0, 'data contract must be blank'
    if erc20ContractAddress:
        revert with 0, 'auction contract must be blank'
    gameContractAddress = arg1
    erc20ContractAddress = arg2
}

function updateLocalContract(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if masterContractAddress == arg1:
        revert with 0, 'can't reset the master contract'
    if erc20ContractAddress == arg1:
        revert with 0, 'can't reset the erc20 contract'
    if not arg1:
        revert with 0, 'can't be the zero address'
    stor18[address(arg1)] = uint8(arg2)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if arg1 == msg.sender:
            revert with 0, 'can't operate yourself'
        stor11[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 'can't operate yourself'
        stor11[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, mem[calldata.size + 108 len 20], arg1);
}

function encodeDomainSeperator(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not chainid:
        revert with 0, 'chain ID must not be zero'
    return sha3(sha3(0x72454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), chainid, this.address)
}

function generateCollectible(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if uint256(collectibleData[arg1].field_0):
        revert with 0, 'must not be an collectible here'
    if arg2 <= 0:
        revert with 0, 'must have at least 1 base xp'
    if arg4 <= 0:
        revert with 0, 'must have a creationTime'
    if uint128(arg2) != arg2:
        revert with 0, 'no xp overflow'
    if Mask(96, 0, arg3) != arg3:
        revert with 0, 'no xpPerHour overflow'
    if uint32(arg4) != arg4:
        revert with 0, 'no creationTime overflow'
    uint256(collectibleData[arg1].field_0) = arg3
    emit 0x7133d174: arg2, arg3, arg4, arg1
}

function getCurrentXP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint32(collectibleData[arg1].field_0) > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - uint32(collectibleData[arg1].field_0) / 3600:
        return (uint128(uint256(collectibleData[arg1].field_0)) >> 128)
    if Mask(96, 0, collectibleData[arg1].field_32) * block.timestamp - uint32(collectibleData[arg1].field_0) / 3600 / block.timestamp - uint32(collectibleData[arg1].field_0) / 3600 != Mask(96, 0, collectibleData[arg1].field_32):
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return ((uint128(uint256(collectibleData[arg1].field_0)) >> 128) + (Mask(96, 0, collectibleData[arg1].field_32) * block.timestamp - uint32(collectibleData[arg1].field_0) / 3600))
}

function getOrCreateInGameAccount(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if not arg2:
        revert with 0, 'account must be valid'
    if uint256(cryptoToGame[arg1][address(arg2)].field_0):
        return uint256(cryptoToGame[arg1][address(arg2)].field_0)
    approvedCryptoAccounts[arg1][address(arg2)] = 0
    Mask(96, 0, cryptoToGame[arg1][address(arg2)].field_0) = 0
    address(cryptoToGame[arg1][address(arg2)].field_96) = arg2
    validCryptoAccount[arg1][address(arg2)] = arg2
    uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
    uint256(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = arg1
    gamesLinkedToCryptoPointers[arg1][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
    emit 0x70f9a4f4: arg1, address(arg2), arg2
    return address(arg2)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0):
        if not uint256(cryptoToGame[uint256(stor7[address(arg1)][idx].field_0)][address(arg1)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                        mem[212 len 16]
        mem[0] = uint256(cryptoToGame[uint256(stor7[address(arg1)][idx].field_0)][address(arg1)].field_0)
        mem[32] = sha3(uint256(gamesLinkedToCrypto[address(arg1)][idx].field_0), 12)
        idx = idx + 1
        s = uint256(balanceOfGame[uint256(stor7[address(arg1)][idx].field_0)][uint256(stor5[uint256(stor7[address(arg1)][idx].field_0)][address(arg1)].field_0)].field_0) + s
        continue 
    return (uint256(stor[_19].field_0) * uint256(gamesLinkedToCrypto[address(arg1)].field_0))
}

function encodeWorkerDomainSeperator(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if 137 == chainid:
        return sha3(sha3(0x72454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 1, this.address)
    if 1 == chainid:
        return sha3(sha3(0x72454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 1, this.address)
    if chainid != 80001:
        revert with 0, 'chain ID must not be zero'
    return sha3(sha3(0x72454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 5, this.address)
}

function getCurrentLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint32(collectibleData[arg1].field_0) > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    if not block.timestamp - uint32(collectibleData[arg1].field_0) / 3600:
        idx = uint128(uint256(collectibleData[arg1].field_0)) >> 128
        s = 0
        while idx:
            _21 = mem[64]
            mem[64] = mem[64] + 64
            mem[_21] = 26
            mem[_21 + 32] = 'SafeMath: division by zero'
            idx = idx / 2
            s = s + 1
            continue 
    else:
        if Mask(96, 0, collectibleData[arg1].field_32) * block.timestamp - uint32(collectibleData[arg1].field_0) / 3600 / block.timestamp - uint32(collectibleData[arg1].field_0) / 3600 != Mask(96, 0, collectibleData[arg1].field_32):
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        idx = (uint128(uint256(collectibleData[arg1].field_0)) >> 128) + (Mask(96, 0, collectibleData[arg1].field_32) * block.timestamp - uint32(collectibleData[arg1].field_0) / 3600)
        s = 0
        while idx:
            _20 = mem[64]
            mem[64] = mem[64] + 64
            mem[_20] = 26
            mem[_20 + 32] = 'SafeMath: division by zero'
            idx = idx / 2
            s = s + 1
            continue 
    return s
}

function tokenIdsOfInGameAccount(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'Can't get tokens of address(0)'
    if not uint256(balanceOfGame[arg1][arg2].field_0):
        mem[(32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 128] = 32
        mem[(32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 160] = uint256(balanceOfGame[arg1][arg2].field_0)
        mem[(32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 192 len floor32(uint256(balanceOfGame[arg1][arg2].field_0))] = mem[128 len floor32(uint256(balanceOfGame[arg1][arg2].field_0))]
        return memory
          from (32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 128
           len (96 * uint256(balanceOfGame[arg1][arg2].field_0)) + 64
    mem[128] = uint256(balanceOfGame[arg1][arg2].field_0)
    idx = 128
    s = 0
    while (32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(balanceOfGame[arg1][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(balanceOfGame[arg1][arg2].field_0)) + 192 len floor32(uint256(balanceOfGame[arg1][arg2].field_0))] = mem[128 len floor32(uint256(balanceOfGame[arg1][arg2].field_0))]
    return Array(len=uint256(balanceOfGame[arg1][arg2].field_0), data=mem[128 len floor32(uint256(balanceOfGame[arg1][arg2].field_0))], mem[(32 * uint256(balanceOfGame[arg1][arg2].field_0)) + floor32(uint256(balanceOfGame[arg1][arg2].field_0)) + 192 len (32 * uint256(balanceOfGame[arg1][arg2].field_0)) - floor32(uint256(balanceOfGame[arg1][arg2].field_0))]), 
}

function getLinkedGames(address arg1) {
    require calldata.size - 4 >= 32
    if not uint256(gamesLinkedToCrypto[address(arg1)].field_0):
        mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
        mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 192 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
        return memory
          from (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 128
           len (96 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 64
    mem[128] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(gamesLinkedToCrypto[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 192 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
    return Array(len=uint256(gamesLinkedToCrypto[address(arg1)].field_0), data=mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))], mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 192 len (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) - floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]), 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[204 len 24]
        if arg1 == validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)]:
            revert with 0, 'can't approve the owner'
        if validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)] != msg.sender:
            if not stor11[stor4[arg2 << 192][uint256(stor9[arg2].field_0)]][address(msg.sender)]:
                revert with 0, 'must be able to approve'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)]:
            revert with 0, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[ceil32(calldata.size) + 236 len 24]
        if arg1 == validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)]:
            revert with 0, 'can't approve the owner'
        if validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)] != mem[calldata.size + 108 len 20]:
            if not stor11[stor4[arg2 << 192][uint256(stor9[arg2].field_0)]][address(mem[calldata.size + 96])]:
                revert with 0, 'must be able to approve'
    indexToApproved[arg2] = arg1
    emit Approval(arg2, validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)], arg1);
}

function revokeToken(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if block.timestamp >= indexToTradableTime[arg2]:
        return 0
    if not uint256(indexToOwner[arg2].field_0):
        return 0
    if not uint256(indexToOwner[arg2].field_0):
        revert with 0, 'token Id is not valid'
    if uint256(indexToOwner[arg2].field_0):
        indexToApproved[arg2] = 0
        if uint256(indexToOwner[arg2].field_0) != 0:
            if 1 > uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            require uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0) - 1 < uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            require stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2] < uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2]].field_0) = uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0)
            stor13[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(stor12[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(stor12[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0)] = stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2]
            require uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0) = 0
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)--
    uint256(indexToOwner[arg2].field_0) = 0
    emit Transfer(validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)], validCryptoAccount[arg2 << 192][0], arg2);
    emit 0x13fcab29: arg2, uint64(arg2), uint256(indexToOwner[arg2].field_0), 0
    emit 0x4f1b5c1d: arg2, arg1, uint256(indexToOwner[arg2].field_0), arg3
    return 1
}

function transferNewToken(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    indexToTradableTime[arg2] = arg3
    if uint256(indexToOwner[arg2].field_0):
        indexToApproved[arg2] = 0
        if arg1 != uint256(indexToOwner[arg2].field_0):
            if 1 > uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            require uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0) - 1 < uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            require stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2] < uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2]].field_0) = uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0)
            stor13[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(stor12[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(stor12[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0)] = stor13[arg2 << 192][uint256(stor9[arg2].field_0)][arg2]
            require uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)][uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)].field_0) = 0
            uint256(balanceOfGame[arg2 << 192][uint256(stor9[arg2].field_0)].field_0)--
    uint256(indexToOwner[arg2].field_0) = arg1
    if arg1:
        if uint256(indexToOwner[arg2].field_0) != arg1:
            stor13[arg2 << 192][arg1][arg2] = uint256(balanceOfGame[arg2 << 192][arg1].field_0)
            uint256(balanceOfGame[arg2 << 192][arg1].field_0)++
            uint256(balanceOfGame[arg2 << 192][arg1][uint256(balanceOfGame[arg2 << 192][arg1].field_0)].field_0) = arg2
    emit Transfer(validCryptoAccount[arg2 << 192][uint256(stor9[arg2].field_0)], validCryptoAccount[arg2 << 192][arg1], arg2);
    emit 0x13fcab29: arg2, uint64(arg2), uint256(indexToOwner[arg2].field_0), arg1
}

function approveCryptoAccount(uint256 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        require ext_code.size(gameContractAddress)
        call gameContractAddress.isOperatorOrMinion(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x296d7573742062652063616c6c656420627920616e206f70657261746f72206f7220776f726b65,
                        mem[203 len 25]
        if validCryptoAccount[arg1][arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                        mem[197 len 31]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(gameContractAddress)
        call gameContractAddress.isOperatorOrMinion(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, mem[calldata.size + 108 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        39,
                        0x296d7573742062652063616c6c656420627920616e206f70657261746f72206f7220776f726b65,
                        mem[ceil32(calldata.size) + 235 len 25]
        if validCryptoAccount[arg1][arg2]:
            revert with 0, 
                        32,
                        33,
                        0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                        mem[ceil32(calldata.size) + 229 len 31]
    ('iszero', ('stor', ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'validCryptoAccount', 4)))))
    approvedCryptoAccounts[arg1][arg2] = arg3
    emit 0x747406c7: arg1, arg2, arg3
}

function tokenIdsOfOwner(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not uint256(cryptoToGame[arg1][address(arg2)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                    mem[212 len 16]
    if not uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0):
        mem[(32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 128] = 32
        mem[(32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 160] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)
        mem[(32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 192 len floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))] = mem[128 len floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))]
        return memory
          from (32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 128
           len (96 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 64
    mem[128] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 192 len floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))] = mem[128 len floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))]
    return Array(len=uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0), data=mem[128 len floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))], mem[(32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) + 192 len (32 * uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0)) - floor32(uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(arg2)].field_0)].field_0))]), 
}

function workerResetCollectible(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if msg.sender != this.address:
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[200 len 28]
        if uint128(uint256(collectibleData[arg1].field_0)) >> 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x29636f6c6c65637469626c65206d757374206578697374202620616c7265616479206861766520736f6d652058,
                        mem[209 len 19]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[ceil32(calldata.size) + 232 len 28]
        if uint128(uint256(collectibleData[arg1].field_0)) >> 128 <= 0:
            revert with 0, 
                        32,
                        45,
                        0x29636f6c6c65637469626c65206d757374206578697374202620616c7265616479206861766520736f6d652058,
                        mem[ceil32(calldata.size) + 241 len 19]
    ('gt', ('mask_shl', 256, -128, -128, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'collectibleData', 19)))))), 0)
    if arg2 <= 0:
        revert with 0, 'must have at least 1 base xp'
    if arg4 <= 0:
        revert with 0, 'must have a creationTime'
    emit 0x741803f3: uint128(collectibleData[arg1].field_0), Mask(96, 0, collectibleData[arg1].field_0), uint32(collectibleData[arg1].field_0), arg1
    if uint128(arg2) != arg2:
        revert with 0, 'no xp overflow'
    if Mask(96, 0, arg3) != arg3:
        revert with 0, 'no xpPerHour overflow'
    if uint32(arg4) != arg4:
        revert with 0, 'no creationTime overflow'
    uint256(collectibleData[arg1].field_0) = arg3
    emit 0x7133d174: arg2, arg3, arg4, arg1
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    if not arg1:
        revert with 0, 32, 33, 0x655369676e657220616e64207369676e617475726520646f206e6f74206d617463, mem[ceil32(arg2.length) + 421 len 31]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0x644d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x655369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[ceil32(arg2.length) + 866 len 4]
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 770] = msg.sender
    mem[ceil32(arg2.length) + 802] = 96
    mem[ceil32(arg2.length) + 834] = arg2.length
    mem[ceil32(arg2.length) + 866 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 770 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 802 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790 len floor32(arg2.length + 20)] = call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 20) + -(arg2.length + 20 % 32) + 822 len arg2.length + 20 % 32] = Mask(8 * (arg2.length + 20 % 32) + -floor32(arg2.length + 20) + arg2.length - 12, 0, arg1), Mask(8 * floor32(arg2.length + 20), -(8 * floor32(arg2.length + 20)) + 256, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]) << (8 * floor32(arg2.length + 20)) - 256, mem[ceil32(arg2.length) + arg2.length + floor32(arg2.length + 20) + 790 len (2 * floor32(arg2.length + 20)) + -arg2.length + 12]
    call this.address.mem[arg2.length + ceil32(arg2.length) + 790 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 794 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function workerAddXpToCollectible(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[200 len 28]
        if uint128(uint256(collectibleData[arg1].field_0)) >> 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x29636f6c6c65637469626c65206d757374206578697374202620616c7265616479206861766520736f6d652058,
                        mem[209 len 19]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[ceil32(calldata.size) + 232 len 28]
        if uint128(uint256(collectibleData[arg1].field_0)) >> 128 <= 0:
            revert with 0, 
                        32,
                        45,
                        0x29636f6c6c65637469626c65206d757374206578697374202620616c7265616479206861766520736f6d652058,
                        mem[ceil32(calldata.size) + 241 len 19]
    ('gt', ('mask_shl', 256, -128, -128, ('type', 256, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'collectibleData', 19)))))), 0)
    if arg2 <= 0:
        revert with 0, 'must add at least 1 xp'
    if arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128) < uint128(uint256(collectibleData[arg1].field_0)) >> 128:
        revert with 0, 'SafeMath: addition overflow'
    emit 0x6ef200c6: arg2, arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128), arg1
    if uint128(arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128)) != arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128):
        revert with 0, 'no xp overflow'
    if Mask(96, 0, collectibleData[arg1].field_32) != Mask(96, 0, collectibleData[arg1].field_32):
        revert with 0, 'no xpPerHour overflow'
    if uint32(collectibleData[arg1].field_0) != uint32(collectibleData[arg1].field_0):
        revert with 0, 'no creationTime overflow'
    uint256(collectibleData[arg1].field_0) = arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128) << 128 or Mask(96, 0, collectibleData[arg1].field_32) << 32 or uint32(collectibleData[arg1].field_0)
    emit 0x7133d174: arg2 + (uint128(uint256(collectibleData[arg1].field_0)) >> 128), Mask(96, 0, collectibleData[arg1].field_0), uint32(collectibleData[arg1].field_0), arg1
}

function unlinkCryptoAccount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if not uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
            revert with 0, 'can't un-merge a null account'
        if uint256(cryptoToGame[arg1][address(msg.sender)].field_0) != uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
            revert with 0, 'account must be linked'
        validCryptoAccount[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)] = 0
        uint256(cryptoToGame[arg1][address(msg.sender)].field_0) = 0
        if 1 > uint256(gamesLinkedToCrypto[address(msg.sender)].field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        require uint256(gamesLinkedToCrypto[address(msg.sender)].field_0) - 1 < uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)
        gamesLinkedToCryptoPointers[uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0)][address(msg.sender)] = gamesLinkedToCryptoPointers[arg1][address(msg.sender)]
        require gamesLinkedToCryptoPointers[arg1][address(msg.sender)] < uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)
        uint256(gamesLinkedToCrypto[address(msg.sender)][stor8[arg1][address(msg.sender)]].field_0) = uint256(gamesLinkedToCrypto[address(msg.sender)][uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)].field_0)
        gamesLinkedToCryptoPointers[arg1][address(msg.sender)] = 0
        require uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)
        uint256(gamesLinkedToCrypto[address(msg.sender)][uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)].field_0) = 0
        uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)--
        emit 0xc1ca767d: arg1, uint256(cryptoToGame[arg1][address(msg.sender)].field_0), msg.sender
        return uint256(cryptoToGame[arg1][address(msg.sender)].field_0)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if not uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
        revert with 0, 'can't un-merge a null account'
    if uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0) != uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
        revert with 0, 'account must be linked'
    validCryptoAccount[arg1][uint256(stor5[arg1][address(mem[calldata.size + 96])].field_0)] = 0
    uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0) = 0
    if 1 > uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0):
        revert with 0, 'SafeMath: subtraction overflow'
    require uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0) - 1 < uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)
    gamesLinkedToCryptoPointers[uint256(stor7[address(mem[calldata.size + 96])][uint256(stor7[address(mem[calldata.size + 96])].field_0)].field_0)][address(mem[calldata.size + 96])] = gamesLinkedToCryptoPointers[arg1][address(mem[calldata.size + 96])]
    require gamesLinkedToCryptoPointers[arg1][address(mem[calldata.size + 96])] < uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)
    uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])][stor8[arg1][address(mem[calldata.size + 96])]].field_0) = uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])][uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)].field_0)
    gamesLinkedToCryptoPointers[arg1][address(mem[calldata.size + 96])] = 0
    require uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)
    uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])][uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)].field_0) = 0
    uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)--
    emit 0xc1ca767d: arg1, uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0), mem[calldata.size + 108 len 20]
    return uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0)
}

function balanceByGameOf(address arg1) {
    require calldata.size - 4 >= 32
    if not uint256(gamesLinkedToCrypto[address(arg1)].field_0):
        require uint256(gamesLinkedToCrypto[address(arg1)].field_0) <= test266151307()
        mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 128] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
        if uint256(gamesLinkedToCrypto[address(arg1)].field_0):
            mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160 len 32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0):
            require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
            if not uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0):
                revert with 0, 
                            32,
                            48,
                            0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 276 len 16]
            mem[0] = uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0)
            mem[32] = sha3(mem[(32 * idx) + 128], 12)
            require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
            mem[(32 * idx) + (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = uint256(balanceOfGame[mem[(32 * idx) + 128]][uint256(stor5[mem[(32 * idx) + 128]][address(arg1)].field_0)].field_0)
            idx = idx + 1
            continue 
        mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = 64
        mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 224] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
        mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 256 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
    else:
        mem[128] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(gamesLinkedToCrypto[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require uint256(gamesLinkedToCrypto[address(arg1)].field_0) <= test266151307()
        mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 128] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
        if not uint256(gamesLinkedToCrypto[address(arg1)].field_0):
            idx = 0
            while idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0):
                require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
                if not uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0):
                    revert with 0, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 276 len 16]
                mem[0] = uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0)
                mem[32] = sha3(mem[(32 * idx) + 128], 12)
                require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
                mem[(32 * idx) + (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = uint256(balanceOfGame[mem[(32 * idx) + 128]][uint256(stor5[mem[(32 * idx) + 128]][address(arg1)].field_0)].field_0)
                idx = idx + 1
                continue 
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = 64
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 224] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 256 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
        else:
            mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160 len 32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)]
            idx = 0
            while idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0):
                require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
                if not uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0):
                    revert with 0, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 276 len 16]
                mem[0] = uint256(cryptoToGame[mem[(32 * idx) + 128]][address(arg1)].field_0)
                mem[32] = sha3(mem[(32 * idx) + 128], 12)
                require idx < uint256(gamesLinkedToCrypto[address(arg1)].field_0)
                mem[(32 * idx) + (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = uint256(balanceOfGame[mem[(32 * idx) + 128]][uint256(stor5[mem[(32 * idx) + 128]][address(arg1)].field_0)].field_0)
                idx = idx + 1
                continue 
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160] = 64
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 224] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
            mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 256 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[128 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
            var19001 = floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))
    mem[(64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 192] = (32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 96
    mem[(98 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 256] = uint256(gamesLinkedToCrypto[address(arg1)].field_0)
    mem[(98 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 288 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))] = mem[(32 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160 len floor32(uint256(gamesLinkedToCrypto[address(arg1)].field_0))]
    return memory
      from (64 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 160
       len (162 * uint256(gamesLinkedToCrypto[address(arg1)].field_0)) + 128
}

function auctionTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor18[msg.sender]:
        revert with 0, 32, 31, 0xfe53656e646572206d7573742062652061206c6f63616c20636f6e7472616374
    if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
        revert with 0, 'owner must be from address'
    if not uint256(indexToOwner[arg3].field_0):
        revert with 0, 'token Id is not valid'
    if not arg2:
        revert with 0, 'can't transfer to zero address'
    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
        if uint256(indexToOwner[arg3].field_0):
            if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                if block.timestamp < indexToTradableTime[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                mem[205 len 23]
            indexToApproved[arg3] = 0
            if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) != uint256(indexToOwner[arg3].field_0):
                if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
        uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
        emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
        emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
    else:
        approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
        Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
        address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
        validCryptoAccount[arg3 << 192][address(arg2)] = arg2
        uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
        uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
        Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
        gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
        emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
        if uint256(indexToOwner[arg3].field_0):
            if arg2:
                if block.timestamp < indexToTradableTime[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                mem[205 len 23]
            indexToApproved[arg3] = 0
            if address(arg2) != uint256(indexToOwner[arg3].field_0):
                if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
        Mask(96, 0, indexToOwner[arg3].field_0) = 0
        address(indexToOwner[arg3].field_96) = arg2
        if arg2:
            if uint256(indexToOwner[arg3].field_0) != address(arg2):
                stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
        emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
        emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
}

function linkCryptoAccountToGame(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if msg.sender == address(arg2) >> 96:
            if validCryptoAccount[arg1][arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x696e2d67616d65206163636f756e74206d757374206e6f7420616c7265616479206265206c696e6b6500,
                            mem[206 len 22]
            if uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
                if approvedCryptoAccounts[arg1][arg2] != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                                mem[199 len 29]
                if validCryptoAccount[arg1][arg2]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                                mem[197 len 31]
                if not uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[212 len 16]
                # nil
            else:
                approvedCryptoAccounts[arg1][arg2] = 0
                uint256(cryptoToGame[arg1][address(msg.sender)].field_0) = arg2
                validCryptoAccount[arg1][arg2] = msg.sender
                uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)++
                uint256(gamesLinkedToCrypto[address(msg.sender)][uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)].field_0) = arg1
                gamesLinkedToCryptoPointers[arg1][address(msg.sender)] = uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)
                emit 0x70f9a4f4: arg1, arg2, msg.sender
        else:
            if approvedCryptoAccounts[arg1][arg2] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x7973656e646572206d75737420626520617574686f72697a6564206f722073616d65206163636f756e,
                            mem[205 len 23]
            if validCryptoAccount[arg1][arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x696e2d67616d65206163636f756e74206d757374206e6f7420616c7265616479206265206c696e6b6500,
                            mem[206 len 22]
            if uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
                if approvedCryptoAccounts[arg1][arg2] != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                                mem[199 len 29]
                if validCryptoAccount[arg1][arg2]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                                mem[197 len 31]
                if not uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[212 len 16]
                # nil
            else:
                approvedCryptoAccounts[arg1][arg2] = 0
                uint256(cryptoToGame[arg1][address(msg.sender)].field_0) = arg2
                validCryptoAccount[arg1][arg2] = msg.sender
                uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)++
                uint256(gamesLinkedToCrypto[address(msg.sender)][uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)].field_0) = arg1
                gamesLinkedToCryptoPointers[arg1][address(msg.sender)] = uint256(gamesLinkedToCrypto[address(msg.sender)].field_0)
                emit 0x70f9a4f4: arg1, arg2, msg.sender
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == address(arg2) >> 96:
            if validCryptoAccount[arg1][arg2]:
                revert with 0, 
                            32,
                            42,
                            0x696e2d67616d65206163636f756e74206d757374206e6f7420616c7265616479206265206c696e6b6500,
                            mem[ceil32(calldata.size) + 238 len 22]
            if uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
                if approvedCryptoAccounts[arg1][arg2] != mem[calldata.size + 108 len 20]:
                    revert with 0, 
                                32,
                                35,
                                0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                                mem[ceil32(calldata.size) + 231 len 29]
                if validCryptoAccount[arg1][arg2]:
                    revert with 0, 
                                32,
                                33,
                                0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                                mem[ceil32(calldata.size) + 229 len 31]
                if not uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
                    revert with 0, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[ceil32(calldata.size) + 244 len 16]
                # nil
            else:
                approvedCryptoAccounts[arg1][arg2] = 0
                uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0) = arg2
                validCryptoAccount[arg1][arg2] = mem[calldata.size + 108 len 20]
                uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)++
                uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])][uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)].field_0) = arg1
                gamesLinkedToCryptoPointers[arg1][address(mem[calldata.size + 96])] = uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)
                emit 0x70f9a4f4: arg1, arg2, mem[calldata.size + 108 len 20]
        else:
            if approvedCryptoAccounts[arg1][arg2] != mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            41,
                            0x7973656e646572206d75737420626520617574686f72697a6564206f722073616d65206163636f756e,
                            mem[ceil32(calldata.size) + 237 len 23]
            if validCryptoAccount[arg1][arg2]:
                revert with 0, 
                            32,
                            42,
                            0x696e2d67616d65206163636f756e74206d757374206e6f7420616c7265616479206265206c696e6b6500,
                            mem[ceil32(calldata.size) + 238 len 22]
            if uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
                if approvedCryptoAccounts[arg1][arg2] != mem[calldata.size + 108 len 20]:
                    revert with 0, 
                                32,
                                35,
                                0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                                mem[ceil32(calldata.size) + 231 len 29]
                if validCryptoAccount[arg1][arg2]:
                    revert with 0, 
                                32,
                                33,
                                0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                                mem[ceil32(calldata.size) + 229 len 31]
                if not uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
                    revert with 0, 
                                32,
                                48,
                                0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                                mem[ceil32(calldata.size) + 244 len 16]
                # nil
            else:
                approvedCryptoAccounts[arg1][arg2] = 0
                uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0) = arg2
                validCryptoAccount[arg1][arg2] = mem[calldata.size + 108 len 20]
                uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)++
                uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])][uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)].field_0) = arg1
                gamesLinkedToCryptoPointers[arg1][address(mem[calldata.size + 96])] = uint256(gamesLinkedToCrypto[address(mem[calldata.size + 96])].field_0)
                emit 0x70f9a4f4: arg1, arg2, mem[calldata.size + 108 len 20]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[204 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != msg.sender:
            if indexToApproved[arg3] != msg.sender:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(msg.sender)]:
                    revert with 0, 'must be legal to transfer'
        if this.address == arg2:
            revert with 0, 'never transfer to this contract'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if uint256(indexToOwner[arg3].field_0):
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[205 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) != uint256(indexToOwner[arg3].field_0):
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
            uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
            if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                    uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
            emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
            emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if uint256(indexToOwner[arg3].field_0):
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[205 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) != uint256(indexToOwner[arg3].field_0):
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
            Mask(96, 0, indexToOwner[arg3].field_0) = 0
            address(indexToOwner[arg3].field_96) = arg2
            if arg2:
                if uint256(indexToOwner[arg3].field_0) != address(arg2):
                    stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                    uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                    uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
            emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
            emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[ceil32(calldata.size) + 236 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != mem[calldata.size + 108 len 20]:
            if indexToApproved[arg3] != mem[calldata.size + 108 len 20]:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(mem[calldata.size + 96])]:
                    revert with 0, 'must be legal to transfer'
        if this.address == arg2:
            revert with 0, 'never transfer to this contract'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if uint256(indexToOwner[arg3].field_0):
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(calldata.size) + 237 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) != uint256(indexToOwner[arg3].field_0):
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
            uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
            if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                    uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
            emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
            emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if uint256(indexToOwner[arg3].field_0):
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(calldata.size) + 237 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) != uint256(indexToOwner[arg3].field_0):
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
            Mask(96, 0, indexToOwner[arg3].field_0) = 0
            address(indexToOwner[arg3].field_96) = arg2
            if arg2:
                if uint256(indexToOwner[arg3].field_0) != address(arg2):
                    stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                    uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                    uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
            emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
            emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
}

function workerMergeCollectibles(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender != this.address:
        mem[100] = msg.sender
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[200 len 28]
        if arg1.length <= 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x656d757374206265206174206c65617374203220636f6c6c65637469626c657320746f206d657267,
                        mem[204 len 24]
        require 0 < arg1.length
        mem[0] = cd[(arg1 + 36)]
        mem[32] = 19
        idx = 1
        s = uint128(uint256(stor[sha3(mem[0 len 64])].field_0)) >> 128
        t = uint32(stor[sha3(mem[0 len 64])].field_0)
        u = Mask(96, 0, stor[sha3(mem[0 len 64])].field_32)
        v = cd[(arg1 + 36)]
        while idx < arg1.length:
            w = 0
            while w < idx:
                require w < arg1.length
                require idx < arg1.length
                if cd[((32 * idx) + arg1 + 36)] == cd[((32 * w) + arg1 + 36)]:
                    revert with 0, 32, 37, 0x68636f6c6c65637469626c6520494473206d75737420616c6c20626520646966666572656e, mem[mem[64] + 105 len 27]
                w = w + 1
                continue 
            require idx < arg1.length
            if Mask(64, 64, cd[((32 * idx) + arg1 + 36)]) >> 64 != Mask(64, 64, cd[(arg1 + 36)]) >> 64:
                revert with 0, 'champion ID must match'
            require idx < arg1.length
            require idx < arg1.length
            if uint256(indexToOwner[v].field_0) != uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                revert with 0, 'must be owned by the same user'
            require idx < arg1.length
            if (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u < u:
                revert with 0, 'SafeMath: addition overflow'
            if uint32(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0) < t:
                if not uint256(indexToOwner[v].field_0):
                    revert with 0, 'token Id is not valid'
                mem[mem[64] + 4] = v
                require ext_code.size(gameContractAddress)
                call gameContractAddress.burnToken(uint256 arg1) with:
                     gas gas_remaining wei
                    args v
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint256(indexToOwner[v].field_0):
                    indexToApproved[v] = 0
                    if uint256(indexToOwner[v].field_0) != 0:
                        mem[0] = uint256(indexToOwner[v].field_0)
                        mem[32] = sha3(v << 192, 12)
                        _739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_739] = 30
                        mem[_739 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0):
                            _765 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _765 + 68] = mem[idx + _739 + 32]
                                idx = idx + 32
                                continue 
                            mem[_765 + 68] = mem[_765 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _765 + -mem[64] + 100
                        require uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0) - 1 < uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        require stor13[v << 192][uint256(stor9[v].field_0)][v] < uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][stor13[v << 192][uint256(stor9[v].field_0)][v]].field_0) = uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)].field_0)
                        stor13[v << 192][uint256(stor9[v].field_0)][uint256(stor12[v << 192][uint256(stor9[v].field_0)][uint256(stor12[v << 192][uint256(stor9[v].field_0)].field_0)].field_0)] = stor13[v << 192][uint256(stor9[v].field_0)][v]
                        require uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)].field_0) = 0
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)--
                uint256(indexToOwner[v].field_0) = 0
                mem[0] = 0
                mem[32] = sha3(v << 192, 4)
                emit Transfer(validCryptoAccount[v << 192][uint256(stor9[v].field_0)], validCryptoAccount[v << 192][0], v);
                emit 0x13fcab29: v, uint64(v), uint256(indexToOwner[v].field_0), 0
                require idx < arg1.length
                mem[mem[64]] = uint128(uint256(collectibleData[cd[(arg1 + 36)]].field_0)) >> 128
                emit 0xf8d19388: (uint128(uint256(collectibleData[cd[(arg1 + 36)]].field_0)) >> 128), cd[((32 * idx) + arg1 + 36)], v
                idx = idx + 1
                s = (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s
                t = uint32(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)
                u = Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u
                v = cd[((32 * idx) + arg1 + 36)]
                continue 
            require idx < arg1.length
            if not uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                revert with 0, 'token Id is not valid'
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(gameContractAddress)
            call gameContractAddress.burnToken(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                indexToApproved[cd[((32 * idx) + arg1 + 36)]] = 0
                if uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0) != 0:
                    mem[0] = uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0)
                    mem[32] = sha3(cd[((32 * idx) + arg1 + 36)] << 192, 12)
                    _757 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_757] = 30
                    mem[_757 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0):
                        _776 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _776 + 68] = mem[idx + _757 + 32]
                            idx = idx + 32
                            continue 
                        mem[_776 + 68] = mem[_776 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _776 + -mem[64] + 100
                    require uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0) - 1 < uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    require stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]] < uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]]].field_0) = uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0)
                    stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(stor12[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(stor12[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0)] = stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]]
                    require uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)--
            uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            emit Transfer(validCryptoAccount[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)], validCryptoAccount[cd[((32 * idx) + arg1 + 36)] << 192][0], cd[((32 * idx) + arg1 + 36)]);
            emit 0x13fcab29: cd[((32 * idx) + arg1 + 36)], uint64(cd[((32 * idx) + arg1 + 36)]), uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0), 0
            mem[0] = v
            mem[32] = 19
            uint256(collectibleData[v].field_0) = 0
            require idx < arg1.length
            mem[mem[64]] = uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128
            emit 0xf8d19388: (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128), v, cd[((32 * idx) + arg1 + 36)]
            idx = idx + 1
            s = (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s
            t = t
            u = Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u
            v = v
            continue 
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[ceil32(calldata.size) + 132] = mem[calldata.size + 108 len 20]
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20]
        mem[ceil32(calldata.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        36,
                        0x746d7573742062652063616c6c6564206279206120776f726b6572206f72206d696e696f,
                        mem[ceil32(calldata.size) + 232 len 28]
        if arg1.length <= 1:
            revert with 0, 
                        32,
                        40,
                        0x656d757374206265206174206c65617374203220636f6c6c65637469626c657320746f206d657267,
                        mem[ceil32(calldata.size) + 236 len 24]
        require 0 < arg1.length
        mem[0] = cd[(arg1 + 36)]
        mem[32] = 19
        idx = 1
        s = uint128(uint256(stor[sha3(mem[0 len 64])].field_0)) >> 128
        t = uint32(stor[sha3(mem[0 len 64])].field_0)
        u = Mask(96, 0, stor[sha3(mem[0 len 64])].field_32)
        v = cd[(arg1 + 36)]
        while idx < arg1.length:
            w = 0
            while w < idx:
                require w < arg1.length
                require idx < arg1.length
                if cd[((32 * idx) + arg1 + 36)] == cd[((32 * w) + arg1 + 36)]:
                    revert with 0, 32, 37, 0x68636f6c6c65637469626c6520494473206d75737420616c6c20626520646966666572656e, mem[mem[64] + 105 len 27]
                w = w + 1
                continue 
            require idx < arg1.length
            if Mask(64, 64, cd[((32 * idx) + arg1 + 36)]) >> 64 != Mask(64, 64, cd[(arg1 + 36)]) >> 64:
                revert with 0, 'champion ID must match'
            require idx < arg1.length
            require idx < arg1.length
            if uint256(indexToOwner[v].field_0) != uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                revert with 0, 'must be owned by the same user'
            require idx < arg1.length
            if (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u < u:
                revert with 0, 'SafeMath: addition overflow'
            if uint32(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0) < t:
                if not uint256(indexToOwner[v].field_0):
                    revert with 0, 'token Id is not valid'
                mem[mem[64] + 4] = v
                require ext_code.size(gameContractAddress)
                call gameContractAddress.burnToken(uint256 arg1) with:
                     gas gas_remaining wei
                    args v
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint256(indexToOwner[v].field_0):
                    indexToApproved[v] = 0
                    if uint256(indexToOwner[v].field_0) != 0:
                        mem[0] = uint256(indexToOwner[v].field_0)
                        mem[32] = sha3(v << 192, 12)
                        _752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_752] = 30
                        mem[_752 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0):
                            _770 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _770 + 68] = mem[idx + _752 + 32]
                                idx = idx + 32
                                continue 
                            mem[_770 + 68] = mem[_770 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _770 + -mem[64] + 100
                        require uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0) - 1 < uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        require stor13[v << 192][uint256(stor9[v].field_0)][v] < uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][stor13[v << 192][uint256(stor9[v].field_0)][v]].field_0) = uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)].field_0)
                        stor13[v << 192][uint256(stor9[v].field_0)][uint256(stor12[v << 192][uint256(stor9[v].field_0)][uint256(stor12[v << 192][uint256(stor9[v].field_0)].field_0)].field_0)] = stor13[v << 192][uint256(stor9[v].field_0)][v]
                        require uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)][uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)].field_0) = 0
                        uint256(balanceOfGame[v << 192][uint256(stor9[v].field_0)].field_0)--
                uint256(indexToOwner[v].field_0) = 0
                mem[0] = 0
                mem[32] = sha3(v << 192, 4)
                emit Transfer(validCryptoAccount[v << 192][uint256(stor9[v].field_0)], validCryptoAccount[v << 192][0], v);
                emit 0x13fcab29: v, uint64(v), uint256(indexToOwner[v].field_0), 0
                require idx < arg1.length
                mem[mem[64]] = uint128(uint256(collectibleData[cd[(arg1 + 36)]].field_0)) >> 128
                emit 0xf8d19388: (uint128(uint256(collectibleData[cd[(arg1 + 36)]].field_0)) >> 128), cd[((32 * idx) + arg1 + 36)], v
                idx = idx + 1
                s = (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s
                t = uint32(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)
                u = Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u
                v = cd[((32 * idx) + arg1 + 36)]
                continue 
            require idx < arg1.length
            if not uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                revert with 0, 'token Id is not valid'
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(gameContractAddress)
            call gameContractAddress.burnToken(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0):
                indexToApproved[cd[((32 * idx) + arg1 + 36)]] = 0
                if uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0) != 0:
                    mem[0] = uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0)
                    mem[32] = sha3(cd[((32 * idx) + arg1 + 36)] << 192, 12)
                    _762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_762] = 30
                    mem[_762 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0):
                        _784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _784 + 68] = mem[idx + _762 + 32]
                            idx = idx + 32
                            continue 
                        mem[_784 + 68] = mem[_784 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _784 + -mem[64] + 100
                    require uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0) - 1 < uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    require stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]] < uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]]].field_0) = uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0)
                    stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(stor12[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(stor12[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0)] = stor13[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][cd[((32 * idx) + arg1 + 36)]]
                    require uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)][uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)].field_0)--
            uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            emit Transfer(validCryptoAccount[cd[((32 * idx) + arg1 + 36)] << 192][uint256(stor9[cd[((32 * idx) + arg1 + 36)]].field_0)], validCryptoAccount[cd[((32 * idx) + arg1 + 36)] << 192][0], cd[((32 * idx) + arg1 + 36)]);
            emit 0x13fcab29: cd[((32 * idx) + arg1 + 36)], uint64(cd[((32 * idx) + arg1 + 36)]), uint256(indexToOwner[cd[((32 * idx) + arg1 + 36)]].field_0), 0
            mem[0] = v
            mem[32] = 19
            uint256(collectibleData[v].field_0) = 0
            require idx < arg1.length
            mem[mem[64]] = uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128
            emit 0xf8d19388: (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128), v, cd[((32 * idx) + arg1 + 36)]
            idx = idx + 1
            s = (uint128(uint256(collectibleData[cd[((32 * idx) + arg1 + 36)]].field_0)) >> 128) + s
            t = t
            u = Mask(96, 0, collectibleData[cd[((32 * idx) + arg1 + 36)]].field_32) + u
            v = v
            continue 
    if uint128(s) != s:
        revert with 0, 'no xp overflow'
    if Mask(96, 0, u) != u:
        revert with 0, 'no xpPerHour overflow'
    if uint32(t) != t:
        revert with 0, 'no creationTime overflow'
    uint256(collectibleData[v].field_0) = u
    emit 0x7133d174: s, u, t, v
}

function partialMergeTokens(uint256 arg1, bytes32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if approvedCryptoAccounts[arg1][arg2] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                        mem[199 len 29]
        if validCryptoAccount[arg1][arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                        mem[197 len 31]
        if not uint256(cryptoToGame[arg1][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                        mem[212 len 16]
        mem[0] = uint256(cryptoToGame[arg1][address(msg.sender)].field_0)
        mem[32] = sha3(arg1, 12)
        if arg3 > uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x6e6561726c79206f757420696620796f752074727920746f207472616e7366657220746f6f206d616e,
                        mem[205 len 23]
        require arg3 <= test266151307()
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                require 0 < uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                if not uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                    revert with 0, 'token Id is not valid'
                if uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                    indexToApproved[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] = 0
                    if arg2 != uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                        mem[0] = uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)
                        mem[32] = sha3(uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), 12)
                        _677 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_677] = 30
                        mem[_677 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0):
                            _731 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _731 + 68] = mem[idx + _677 + 32]
                                idx = idx + 32
                                continue 
                            mem[_731 + 68] = mem[_731 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _731 + -mem[64] + 100
                        require uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0) - 1 < uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        require stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] < uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][stor13[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)]].field_0) = uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0)
                        stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0)] = stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)]
                        require uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0) = 0
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)--
                uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0) = arg2
                if arg2:
                    if uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0) != arg2:
                        stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] = uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)++
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)].field_0) = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                mem[0] = arg2
                mem[32] = sha3(uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), 4)
                emit Transfer(validCryptoAccount[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)], validCryptoAccount[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2], uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0));
                mem[mem[64]] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                emit 0x13fcab29: uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0), arg2
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                require 0 < uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                if not uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                    revert with 0, 'token Id is not valid'
                if uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                    indexToApproved[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] = 0
                    if arg2 != uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0):
                        mem[0] = uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)
                        mem[32] = sha3(uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), 12)
                        _682 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_682] = 30
                        mem[_682 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0):
                            _748 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _748 + 68] = mem[idx + _682 + 32]
                                idx = idx + 32
                                continue 
                            mem[_748 + 68] = mem[_748 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _748 + -mem[64] + 100
                        require uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0) - 1 < uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        require stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] < uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][stor13[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)]].field_0) = uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0)
                        stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0)] = stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)]
                        require uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)].field_0) = 0
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)].field_0)--
                uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0) = arg2
                if arg2:
                    if uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0) != arg2:
                        stor13[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2][uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)] = uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)++
                        uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2][uint256(balanceOfGame[uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2].field_0)].field_0) = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                mem[0] = arg2
                mem[32] = sha3(uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), 4)
                emit Transfer(validCryptoAccount[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][uint256(stor9[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0)], validCryptoAccount[uint64(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)][arg2], uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0));
                mem[mem[64]] = uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)
                emit 0x13fcab29: uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), uint64(balanceOfGame[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0), uint256(indexToOwner[uint256(stor12[arg1][uint256(stor5[arg1][address(msg.sender)].field_0)].field_0)].field_0), arg2
                idx = idx + 1
                continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    if approvedCryptoAccounts[arg1][arg2] != mem[calldata.size + 108 len 20]:
        revert with 0, 
                    32,
                    35,
                    0x6473656e646572206d75737420626520617574686f72697a656420627920636c69656e,
                    mem[ceil32(calldata.size) + 231 len 29]
    if validCryptoAccount[arg1][arg2]:
        revert with 0, 
                    32,
                    33,
                    0x74636c69656e74206d757374206e6f7420616c7265616479206265206c696e6b65,
                    mem[ceil32(calldata.size) + 229 len 31]
    if not uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0):
        revert with 0, 
                    32,
                    48,
                    0x74696e2067616d65206163636f756e74206d757374206265206c696e6b6564202873657420746f206e6f6e2d7a65726f,
                    mem[ceil32(calldata.size) + 244 len 16]
    mem[0] = uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0)
    mem[32] = sha3(arg1, 12)
    _32 = sha3(uint256(cryptoToGame[arg1][address(mem[calldata.size + 96])].field_0), sha3(arg1, 12))
    if arg3 > uint256(balanceOfGame[arg1][uint256(stor5[arg1][address(mem[calldata.size + 96])].field_0)].field_0):
        revert with 0, 
                    32,
                    41,
                    0x6e6561726c79206f757420696620796f752074727920746f207472616e7366657220746f6f206d616e,
                    mem[ceil32(calldata.size) + 237 len 23]
    require arg3 <= test266151307()
    mem[ceil32(calldata.size) + 128] = arg3
    mem[64] = ceil32(calldata.size) + (32 * arg3) + 160
    if not arg3:
        idx = 0
        while idx < arg3:
            require 0 < uint256(stor[_32].field_0)
            require idx < mem[ceil32(calldata.size) + 128]
            mem[(32 * idx) + ceil32(calldata.size) + 160] = uint256(stor[sha3(_32)].field_0)
            if not uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
                revert with 0, 'token Id is not valid'
            if uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
                indexToApproved[uint256(stor[sha3(_32)].field_0)] = 0
                if arg2 != uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
                    mem[0] = uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0)
                    mem[32] = sha3(uint64(stor[sha3(_32)].field_0), 12)
                    _687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_687] = 30
                    mem[_687 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0):
                        _765 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _765 + 68] = mem[idx + _687 + 32]
                            idx = idx + 32
                            continue 
                        mem[_765 + 68] = mem[_765 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _765 + -mem[64] + 100
                    require uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0) - 1 < uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                    require stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)] < uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                    uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)]].field_0) = uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0)
                    stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor12[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor12[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0)] = stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)]
                    require uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                    uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)--
            uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0) = arg2
            if arg2:
                if uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0) != arg2:
                    stor13[uint64(stor[sha3(_32)].field_0)][arg2][uint256(stor[sha3(_32)].field_0)] = uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)
                    uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)++
                    uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)].field_0) = uint256(stor[sha3(_32)].field_0)
            mem[0] = arg2
            mem[32] = sha3(uint64(stor[sha3(_32)].field_0), 4)
            emit Transfer(validCryptoAccount[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)], validCryptoAccount[uint64(stor[sha3(_32)].field_0)][arg2], uint256(stor[sha3(_32)].field_0));
            mem[mem[64]] = uint256(stor[sha3(_32)].field_0)
            emit 0x13fcab29: uint256(stor[sha3(_32)].field_0), uint64(stor[sha3(_32)].field_0), uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0), arg2
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(calldata.size) + 128]
        _569 = mem[ceil32(calldata.size) + 128]
        mem[mem[64] + 64 len floor32(mem[ceil32(calldata.size) + 128])] = mem[ceil32(calldata.size) + 160 len floor32(mem[ceil32(calldata.size) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _569) + 32]
    mem[ceil32(calldata.size) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        require 0 < uint256(stor[_32].field_0)
        require idx < mem[ceil32(calldata.size) + 128]
        mem[(32 * idx) + ceil32(calldata.size) + 160] = uint256(stor[sha3(_32)].field_0)
        if not uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
            revert with 0, 'token Id is not valid'
        if uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
            indexToApproved[uint256(stor[sha3(_32)].field_0)] = 0
            if arg2 != uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0):
                mem[0] = uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0)
                mem[32] = sha3(uint64(stor[sha3(_32)].field_0), 12)
                _692 = mem[64]
                mem[64] = mem[64] + 64
                mem[_692] = 30
                mem[_692 + 32] = 'SafeMath: subtraction overflow'
                if 1 > uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0):
                    _782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _782 + 68] = mem[idx + _692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_782 + 68] = mem[_782 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 100
                require uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0) - 1 < uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                require stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)] < uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)]].field_0) = uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0)
                stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor12[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor12[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0)] = stor13[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(stor[sha3(_32)].field_0)]
                require uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)
                uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)].field_0) = 0
                uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)].field_0)--
        uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0) = arg2
        if arg2:
            if uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0) != arg2:
                stor13[uint64(stor[sha3(_32)].field_0)][arg2][uint256(stor[sha3(_32)].field_0)] = uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)
                uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)++
                uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2][uint256(balanceOfGame[uint64(stor[sha3(_32)].field_0)][arg2].field_0)].field_0) = uint256(stor[sha3(_32)].field_0)
        mem[0] = arg2
        mem[32] = sha3(uint64(stor[sha3(_32)].field_0), 4)
        emit Transfer(validCryptoAccount[uint64(stor[sha3(_32)].field_0)][uint256(stor9[uint256(stor[sha3(_32)].field_0)].field_0)], validCryptoAccount[uint64(stor[sha3(_32)].field_0)][arg2], uint256(stor[sha3(_32)].field_0));
        mem[mem[64]] = uint256(stor[sha3(_32)].field_0)
        emit 0x13fcab29: uint256(stor[sha3(_32)].field_0), uint64(stor[sha3(_32)].field_0), uint256(indexToOwner[uint256(stor[sha3(_32)].field_0)].field_0), arg2
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(calldata.size) + 128]
    _574 = mem[ceil32(calldata.size) + 128]
    mem[mem[64] + 64 len floor32(mem[ceil32(calldata.size) + 128])] = mem[ceil32(calldata.size) + 160 len floor32(mem[ceil32(calldata.size) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _574) + 32]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0, 32, 40, 0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f, mem[236 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != msg.sender:
            if indexToApproved[arg3] != msg.sender:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(msg.sender)]:
                    revert with 0, 'must be legal to transfer'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if not uint256(indexToOwner[arg3].field_0):
                uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                    else:
                        mem[128] = calldata.size
                        mem[160 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + 140 len 20], address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 32, 41, 0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d, mem[237 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) == uint256(indexToOwner[arg3].field_0):
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        else:
                            mem[128] = calldata.size
                            mem[160 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + 140 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[192] = calldata.size
                            mem[224 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + 204 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if not uint256(indexToOwner[arg3].field_0):
                Mask(96, 0, indexToOwner[arg3].field_0) = 0
                address(indexToOwner[arg3].field_96) = arg2
                if arg2:
                    if uint256(indexToOwner[arg3].field_0) != address(arg2):
                        stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                        uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                    else:
                        mem[128] = calldata.size
                        mem[160 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + 140 len 20], address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 32, 41, 0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d, mem[237 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) == uint256(indexToOwner[arg3].field_0):
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        else:
                            mem[128] = calldata.size
                            mem[160 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + 140 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[192] = calldata.size
                            mem[224 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + 204 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
    else:
        mem[128] = calldata.size
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[ceil32(calldata.size) + 268 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != mem[calldata.size + 140 len 20]:
            if indexToApproved[arg3] != mem[calldata.size + 140 len 20]:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(mem[calldata.size + 128])]:
                    revert with 0, 'must be legal to transfer'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if not uint256(indexToOwner[arg3].field_0):
                uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                    else:
                        mem[ceil32(calldata.size) + 160] = calldata.size
                        mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(calldata.size) + 269 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) == uint256(indexToOwner[arg3].field_0):
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[ceil32(calldata.size) + 160] = calldata.size
                            mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[ceil32(calldata.size) + 224] = calldata.size
                            mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 236 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if not uint256(indexToOwner[arg3].field_0):
                Mask(96, 0, indexToOwner[arg3].field_0) = 0
                address(indexToOwner[arg3].field_96) = arg2
                if arg2:
                    if uint256(indexToOwner[arg3].field_0) != address(arg2):
                        stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                        uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                    else:
                        mem[ceil32(calldata.size) + 160] = calldata.size
                        mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(calldata.size) + 269 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) == uint256(indexToOwner[arg3].field_0):
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[ceil32(calldata.size) + 160] = calldata.size
                            mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                        else:
                            mem[ceil32(calldata.size) + 224] = calldata.size
                            mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(calldata.size) + 236 len 20], address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if msg.sender != this.address:
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[ceil32(arg4.length) + 236 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != msg.sender:
            if indexToApproved[arg3] != msg.sender:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(msg.sender)]:
                    revert with 0, 'must be legal to transfer'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if not uint256(indexToOwner[arg3].field_0):
                uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                mem[ceil32(arg4.length) + 128] = arg3
                emit 0x13fcab29: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(arg4.length) + 128] = calldata.size
                        mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg4.length) + 140 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(arg4.length) + 237 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) == uint256(indexToOwner[arg3].field_0):
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    mem[ceil32(arg4.length) + 128] = arg3
                    emit 0x13fcab29: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + 128] = calldata.size
                            mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + 140 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + 192] = calldata.size
                            mem[ceil32(arg4.length) + 224 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + 204 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if not uint256(indexToOwner[arg3].field_0):
                Mask(96, 0, indexToOwner[arg3].field_0) = 0
                address(indexToOwner[arg3].field_96) = arg2
                if arg2:
                    if uint256(indexToOwner[arg3].field_0) != address(arg2):
                        stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                        uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                mem[ceil32(arg4.length) + 128] = arg3
                emit 0x13fcab29: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(arg4.length) + 128] = calldata.size
                        mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg4.length) + 140 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(arg4.length) + 237 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) == uint256(indexToOwner[arg3].field_0):
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    mem[ceil32(arg4.length) + 128] = arg3
                    emit 0x13fcab29: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + 128] = calldata.size
                            mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + 140 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + 192] = calldata.size
                            mem[ceil32(arg4.length) + 224 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + 204 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
    else:
        mem[ceil32(arg4.length) + 128] = calldata.size
        mem[ceil32(arg4.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if not validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)]:
            revert with 0, 
                        32,
                        40,
                        0x5063727970746f206163636f756e74206d757374206265206c696e6b656420286e6f6e2d7a65726f,
                        mem[ceil32(arg4.length) + ceil32(calldata.size) + 268 len 24]
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != arg1:
            revert with 0, 'owner must be from address'
        if validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)] != mem[calldata.size + ceil32(arg4.length) + 140 len 20]:
            if indexToApproved[arg3] != mem[calldata.size + ceil32(arg4.length) + 140 len 20]:
                if not stor11[stor4[arg3 << 192][uint256(stor9[arg3].field_0)]][address(mem[calldata.size + ceil32(arg4.length) + 128])]:
                    revert with 0, 'must be legal to transfer'
        if not uint256(indexToOwner[arg3].field_0):
            revert with 0, 'token Id is not valid'
        if not arg2:
            revert with 0, 'can't transfer to zero address'
        if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
            if not uint256(indexToOwner[arg3].field_0):
                uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(arg4.length) + ceil32(calldata.size) + 160] = calldata.size
                        mem[ceil32(arg4.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(arg4.length) + ceil32(calldata.size) + 269 len 23]
                indexToApproved[arg3] = 0
                if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0) == uint256(indexToOwner[arg3].field_0):
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 160] = calldata.size
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    uint256(indexToOwner[arg3].field_0) = uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                        if uint256(indexToOwner[arg3].field_0) != uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0):
                            stor13[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][arg3] = uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][uint256(stor5[arg3 << 192][address(arg2)].field_0)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), uint256(cryptoToGame[arg3 << 192][address(arg2)].field_0)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 224] = calldata.size
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
                            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 420 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 236 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
        else:
            approvedCryptoAccounts[arg3 << 192][address(arg2)] = 0
            Mask(96, 0, cryptoToGame[arg3 << 192][address(arg2)].field_0) = 0
            address(cryptoToGame[arg3 << 192][address(arg2)].field_96) = arg2
            validCryptoAccount[arg3 << 192][address(arg2)] = arg2
            uint256(gamesLinkedToCrypto[address(arg2)].field_0)++
            uint64(gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_0) = uint64(arg3)
            Mask(192, 0, gamesLinkedToCrypto[address(arg2)][uint256(gamesLinkedToCrypto[address(arg2)].field_0)].field_64) = 0
            gamesLinkedToCryptoPointers[arg3 << 192][address(arg2)] = uint256(gamesLinkedToCrypto[address(arg2)].field_0)
            emit 0x70f9a4f4: uint64(arg3), address(arg2), arg2
            if not uint256(indexToOwner[arg3].field_0):
                Mask(96, 0, indexToOwner[arg3].field_0) = 0
                address(indexToOwner[arg3].field_96) = arg2
                if arg2:
                    if uint256(indexToOwner[arg3].field_0) != address(arg2):
                        stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                        uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                        uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                if ext_code.size(arg2):
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(arg4.length) + ceil32(calldata.size) + 160] = calldata.size
                        mem[ceil32(arg4.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, ')response must match erc721 receive'
            else:
                if arg2:
                    if block.timestamp < indexToTradableTime[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e746f6b656e206d757374206265206c6567616c20746f20747261646520617420746869732074696d,
                                    mem[ceil32(arg4.length) + ceil32(calldata.size) + 269 len 23]
                indexToApproved[arg3] = 0
                if address(arg2) == uint256(indexToOwner[arg3].field_0):
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 160] = calldata.size
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 172 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
                else:
                    if 1 > uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0) - 1 < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    require stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3] < uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]].field_0) = uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)
                    stor13[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(stor12[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0)] = stor13[arg3 << 192][uint256(stor9[arg3].field_0)][arg3]
                    require uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)][uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)].field_0) = 0
                    uint256(balanceOfGame[arg3 << 192][uint256(stor9[arg3].field_0)].field_0)--
                    Mask(96, 0, indexToOwner[arg3].field_0) = 0
                    address(indexToOwner[arg3].field_96) = arg2
                    if arg2:
                        if uint256(indexToOwner[arg3].field_0) != address(arg2):
                            stor13[arg3 << 192][address(arg2)][arg3] = uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)
                            uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)++
                            uint256(balanceOfGame[arg3 << 192][address(arg2)][uint256(balanceOfGame[arg3 << 192][address(arg2)].field_0)].field_0) = arg3
                    emit Transfer(validCryptoAccount[arg3 << 192][uint256(stor9[arg3].field_0)], validCryptoAccount[arg3 << 192][address(arg2)], arg3);
                    emit 0x13fcab29: arg3, uint64(arg3), uint256(indexToOwner[arg3].field_0), address(arg2)
                    if ext_code.size(arg2):
                        if msg.sender != this.address:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 224] = calldata.size
                            mem[ceil32(arg4.length) + ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
                            mem[ceil32(arg4.length) + (2 * ceil32(calldata.size)) + 420 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[calldata.size + ceil32(arg4.length) + ceil32(calldata.size) + 236 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, ')response must match erc721 receive'
}



}
