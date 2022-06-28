contract main {




// =====================  Runtime code  =====================


#
#  - getSetData(uint256 arg1, uint256 arg2)
#  - addSetToGame(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, string arg5, bytes32[] arg6)
#  - workerExecuteMetaTransaction(address arg1, bytes32 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint8 arg6)
#  - oracleAddNewGame(uint256 arg1, uint256 arg2)
#
const getChainId = chainid

const maxGameId = 4294967296

const isLocalContract = 1

const EIP712_DOMAIN_TYPEHASH = sha3(0x74454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const CONTRACT_ERC712_NAME = Array(len=40, data=0x2947414d4520437265646974732053696465636861696e2047616d654461746120436f6e74726163, mem[168 len 24], mem[216 len 8])

const CONTRACT_ERC712_VERSION = ''


uint256 domainSeperator;
uint256 workerDomainSeperator;
mapping of uint256 nonce;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address operator;
array of uint256 gameIdsByOperator;
mapping of uint8 stor8;
address masterContractAddress;
address erc721ContractAddress;
address erc20ContractAddress;
mapping of uint8 stor12;
mapping of uint256 games;
mapping of uint8 stor14;
array of struct cardData;
mapping of uint256 latestTokenIds;
mapping of uint256 cardSetCounts;
mapping of uint256 tradeLockSeconds;
mapping of uint8 stor20;
mapping of uint256 stor21;

function tradeLockSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tradeLockSeconds[arg1]
}

function operatorAddressesByGameId(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(operator[arg1])
    return address(operator[arg1][arg2])
}

function isGameAdmin(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[arg1][address(arg2)])
}

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return games[arg1]
}

function getWorkerDomainSeperator() {
    return workerDomainSeperator
}

function getDomainSeperator() {
    return domainSeperator
}

function latestTokenIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return latestTokenIds[arg1]
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function workersBannedByGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function gameIdsByOperatorAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < gameIdsByOperator[arg1]
    return gameIdsByOperator[arg1][arg2]
}

function gameOperators(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1][arg2])
}

function cardSetCounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardSetCounts[arg1]
}

function adminOracleHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function localContracts(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function gameAdmins(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[arg1][arg2])
}

function cardData(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < cardData[arg1].field_0
    return cardData[arg1][arg2].field_0
}

function erc20Contract() {
    return erc20ContractAddress
}

function masterContract() {
    return masterContractAddress
}

function erc721Contract() {
    return erc721ContractAddress
}

function _fallback() payable {
    revert
}

function isValidCaller(address arg1, bool arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2:
        return not bool(stor8[arg3])
    if stor5[arg3][address(arg1)]:
        return bool(stor5[arg3][address(arg1)])
    return bool(stor4[arg3][address(arg1)])
}

function getCardPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 < stor15[arg1 or arg2 << 64].field_1024:
        return stor[('array', 4, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0
    else:
        return 0
}

function getCardLoyaltyPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 < stor15[arg1 or arg2 << 64].field_1280:
        return stor[('array', 5, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0
    else:
        return 0
}

function linkContracts(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'local contract'
    if erc721ContractAddress:
        revert with 0, 'token contract'
    if erc20ContractAddress:
        revert with 0, 'auction contract'
    erc721ContractAddress = arg1
    erc20ContractAddress = arg2
    stor12[address(arg1)] = 1
    stor12[arg2] = 1
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'local contract'
    require 0 < stor15[arg1 << 128].field_768
    if stor15[arg1 << 128][3].field_0 <= 0:
        revert with 0, 'must have supply'
    if 1 > stor15[arg1 << 128][3].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    require 0 < stor15[arg1 << 128].field_768
    stor15[arg1 << 128][3].field_0--
}

function updateLocalContract(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'local contract'
    if masterContractAddress == arg1:
        revert with 0, 'master'
    if erc721ContractAddress == arg1:
        revert with 0, 'erc721'
    if erc20ContractAddress == arg1:
        revert with 0, 'erc20'
    if not arg1:
        revert with 0, 'address(0)'
    stor12[address(arg1)] = uint8(arg2)
}

function getGameData(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(erc20ContractAddress)
    staticcall erc20ContractAddress.0x9dad1da5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return games[arg1], cardSetCounts[arg1], tradeLockSeconds[arg1], ext_call.return_data[0], bool(stor8[arg1])
}

function banWorkersFromMyGame(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not stor4[arg1][address(msg.sender)]:
            revert with 0, 'game admin'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not stor4[arg1][mem[calldata.size + 108 len 20]]:
            revert with 0, 'game admin'
    stor8[arg1] = uint8(arg2)
    emit 0x606e0acd: cardSetCounts[arg1], tradeLockSeconds[arg1], bool(stor8[arg1]), arg1
}

function isOperatorOrMinion(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor8[arg1]:
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
    if stor5[arg1][address(arg2)]:
        return bool(stor5[arg1][address(arg2)])
    return bool(stor4[arg1][address(arg2)])
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
    return sha3(sha3(0x74454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), chainid, this.address)
}

function getCardLoyaltyPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor15[arg1 or arg2 << 64].field_1280:
        mem[128] = stor15[arg1 or arg2 << 64][5].field_0
        if (32 * stor15[arg1 or arg2 << 64].field_1280) + 32 > 64:
            mem[160] = stor15[arg1 or arg2 << 64][5].field_256
            idx = 160
            s = 1
            while (32 * stor15[arg1 or arg2 << 64].field_1280) + 96 > idx:
                mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 5].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor15[arg1 or arg2 << 64].field_1280) + 128] = 32
    mem[(32 * stor15[arg1 or arg2 << 64].field_1280) + 160] = stor15[arg1 or arg2 << 64].field_1280
    mem[(32 * stor15[arg1 or arg2 << 64].field_1280) + 192 len floor32(stor15[arg1 or arg2 << 64].field_1280)] = mem[128 len floor32(stor15[arg1 or arg2 << 64].field_1280)]
    return memory
      from (32 * stor15[arg1 or arg2 << 64].field_1280) + 128
       len (96 * stor15[arg1 or arg2 << 64].field_1280) + 64
}

function oracleUpdateAdminPrivileges(bytes32 arg1, uint256 arg2, address arg3, bool arg4) {
    require calldata.size - 4 >= 128
    if msg.sender != this.address:
        require ext_code.size(masterContractAddress)
        call masterContractAddress.0x17937a07 with:
             gas gas_remaining wei
            args msg.sender
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
        revert with 0, 'worker or minion'
    if not stor14[arg1]:
        stor14[arg1] = 1
        emit 0x5b6a3ef0: arg1
        if arg4 != bool(stor4[arg2][address(arg3)]):
            stor4[arg2][address(arg3)] = uint8(arg4)
            emit AdminPrivilegesChanged(arg4, arg2, arg3);
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
        return sha3(sha3(0x74454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 1, this.address)
    if 1 == chainid:
        return sha3(sha3(0x74454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 1, this.address)
    if chainid != 80001:
        revert with 0, 'chain ID must not be zero'
    return sha3(sha3(0x74454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), 5, this.address)
}

function getCardPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor15[arg1 or arg2 << 64].field_1024:
        mem[(32 * stor15[arg1 or arg2 << 64].field_1024) + 128] = 32
        mem[(32 * stor15[arg1 or arg2 << 64].field_1024) + 160] = stor15[arg1 or arg2 << 64].field_1024
        mem[(32 * stor15[arg1 or arg2 << 64].field_1024) + 192 len floor32(stor15[arg1 or arg2 << 64].field_1024)] = mem[128 len floor32(stor15[arg1 or arg2 << 64].field_1024)]
        return memory
          from (32 * stor15[arg1 or arg2 << 64].field_1024) + 128
           len (96 * stor15[arg1 or arg2 << 64].field_1024) + 64
    mem[128] = stor15[arg1 or arg2 << 64][4].field_0
    idx = 128
    s = 0
    while (32 * stor15[arg1 or arg2 << 64].field_1024) + 96 > idx:
        mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15[arg1 or arg2 << 64].field_1024) + 192 len floor32(stor15[arg1 or arg2 << 64].field_1024)] = mem[128 len floor32(stor15[arg1 or arg2 << 64].field_1024)]
    return Array(len=stor15[arg1 or arg2 << 64].field_1024, data=mem[128 len floor32(stor15[arg1 or arg2 << 64].field_1024)], mem[(32 * stor15[arg1 or arg2 << 64].field_1024) + floor32(stor15[arg1 or arg2 << 64].field_1024) + 192 len (32 * stor15[arg1 or arg2 << 64].field_1024) - floor32(stor15[arg1 or arg2 << 64].field_1024)]), 
}

function workerUpdateTradeLock(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not stor4[arg1][address(msg.sender)]:
            if stor8[arg1]:
                revert with 0, 'admin or worker'
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'admin or worker'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not stor4[arg1][address(mem[calldata.size + 96])]:
            if stor8[arg1]:
                revert with 0, 'admin or worker'
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'admin or worker'
    tradeLockSeconds[arg1] = arg2
}

function workerManageOperatorPrivilieges(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if not stor4[arg1][address(msg.sender)]:
            if stor8[arg1]:
                revert with 0, 'admin or worker'
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'admin or worker'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not stor4[arg1][address(mem[calldata.size + 96])]:
            if stor8[arg1]:
                revert with 0, 'admin or worker'
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'admin or worker'
    if arg3 != bool(stor5[arg1][address(arg2)]):
        stor5[arg1][address(arg2)] = uint8(arg3)
        emit OperatorPrivilegesChanged(arg3, arg1, arg2);
}

function createTokenFromCard(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'local contract'
    if not stor20[arg1][arg2]:
        revert with 0, 'set must exist'
    if arg3 >= stor15[arg1 or arg2 << 64].field_768:
        revert with 0, 'card must be existing card'
    if block.timestamp >= stor15[arg1 or arg2 << 64].field_256:
        revert with 0, 'card must be on sale'
    if block.timestamp <= stor15[arg1 or arg2 << 64].field_0:
        revert with 0, 'card must be on sale'
    latestTokenIds[arg1 or arg2 << 64 or arg3 << 128]++
    if latestTokenIds[arg1 or arg2 << 64 or arg3 << 128] + 1 >= 18446744073709551616:
        revert with 0, 'token ID must be in range'
    require arg3 < stor15[arg1 or arg2 << 64].field_768
    stor[arg3 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0++
    require arg3 < stor15[arg1 or arg2 << 64].field_1536
    if stor[('array', 6, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0 > 0:
        if stor[arg3 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 + 1 > stor[('array', 6, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0:
            revert with 0, 'supply < max'
    if not arg1:
        return arg1 or arg2 << 64 or arg3 << 128 or latestTokenIds[arg1 or arg2 << 64 or arg3 << 128] + 1 << 192, 
               tradeLockSeconds[arg1],
               stor21[arg2][arg3]
    return arg1 or arg2 << 64 or arg3 << 128 or latestTokenIds[arg1 or arg2 << 64 or arg3 << 128] + 1 << 192, 
           tradeLockSeconds[arg1],
           0
}

function updateCardJson(uint256 arg1, uint256 arg2, uint256 arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if msg.sender != this.address:
        if stor8[arg1]:
            if not stor5[arg1][address(msg.sender)]:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(msg.sender)]:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if not stor5[arg1][address(mem[calldata.size + 96])]:
                if not stor4[arg1][address(mem[calldata.size + 96])]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(mem[calldata.size + 96])]:
                    if not stor4[arg1][address(mem[calldata.size + 96])]:
                        revert with 0, 'nadmin, operator, or worker'
    emit 0xf118003c: Array(len=arg4.length, data=arg4[all]), arg1, arg2, arg3
}

function putCollectibleOnSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if stor8[arg1]:
            if not stor5[arg1][address(msg.sender)]:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(msg.sender)]:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if not stor5[arg1][address(mem[calldata.size + 96])]:
                if not stor4[arg1][address(mem[calldata.size + 96])]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(mem[calldata.size + 96])]:
                    if not stor4[arg1][address(mem[calldata.size + 96])]:
                        revert with 0, 'nadmin, operator, or worker'
    require ext_code.size(masterContractAddress)
    call masterContractAddress.0xcda875eb with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x67cc7a26: arg3, stor21[arg1][arg2], arg1, arg2
}

function getCardMetadata(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if cardData[arg3 << 128 or arg1 or arg2 << 64].field_0:
        mem[128] = cardData[arg3 << 128 or arg1 or arg2 << 64].field_0
        idx = 128
        s = 0
        while (32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 96 > idx:
            mem[idx + 32] = cardData[arg3 << 128 or arg1 or arg2 << 64][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 256 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)] = mem[128 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)]
    if arg3 < stor15[arg1 or arg2 << 64].field_1024:
        if arg3 < stor15[arg1 or arg2 << 64].field_1280:
            return stor[('array', 4, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0, 
                   stor[('array', 5, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0,
                   Array(len=cardData[arg3 << 128 or arg1 or arg2 << 64].field_0, data=mem[128 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)], mem[(32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 256 len (32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) - floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)])
        return stor[('array', 4, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0, 
               0,
               96,
               cardData[arg3 << 128 or arg1 or arg2 << 64].field_0,
               mem[128 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)],
               mem[(32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 256 len (32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) - floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)]
    if arg3 < stor15[arg1 or arg2 << 64].field_1280:
        return 0, 
               stor[('array', 5, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15))) + arg3].field_0,
               96,
               cardData[arg3 << 128 or arg1 or arg2 << 64].field_0,
               mem[128 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)],
               mem[(32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 256 len (32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) - floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)]
    return 0, 
           0,
           96,
           cardData[arg3 << 128 or arg1 or arg2 << 64].field_0,
           mem[128 len floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)],
           mem[(32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) + 256 len (32 * cardData[arg3 << 128 or arg1 or arg2 << 64].field_0) - floor32(cardData[arg3 << 128 or arg1 or arg2 << 64].field_0)]
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
        revert with 0, 32, 33, 0x775369676e657220616e64207369676e617475726520646f206e6f74206d617463, mem[ceil32(arg2.length) + 421 len 31]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x775369676e657220616e64207369676e617475726520646f206e6f74206d617463,
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

function updateSetSaleDates(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if msg.sender != this.address:
        if stor8[arg1]:
            if not stor5[arg1][address(msg.sender)]:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(msg.sender)]:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
        if not stor20[arg1][arg2]:
            revert with 0, 'set must exist'
        stor15[arg1 or arg2 << 64].field_0 = arg3
        stor15[arg1 or arg2 << 64].field_256 = arg4
        mem[256] = stor15[arg1 or arg2 << 64][2].field_0
        idx = 256
        s = 0
        while stor15[arg1 or arg2 << 64][2].length + 256 > idx + 32:
            mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 256] = stor15[arg1 or arg2 << 64].field_1792
        if not stor15[arg1 or arg2 << 64].field_1792:
            emit 0x525bfade: arg3, arg4, Array(len=stor15[arg1 or arg2 << 64][2].length, data=mem[256 len stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 32]), stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 160, arg1, arg2
        else:
            mem[stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 288] = stor15[arg1 or arg2 << 64][7].field_0
            idx = stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 288
            s = 0
            while stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + (32 * stor15[arg1 or arg2 << 64].field_1792) + 288 > idx + 32:
                mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x525bfade: arg3, arg4, Array(len=stor15[arg1 or arg2 << 64][2].length, data=mem[256 len stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + (32 * stor15[arg1 or arg2 << 64].field_1792) + 32]), stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 160, arg1, arg2
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if not stor5[arg1][address(mem[calldata.size + 96])]:
                if not stor4[arg1][address(mem[calldata.size + 96])]:
                    revert with 0, 'nadmin, operator, or worker'
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor5[arg1][address(mem[calldata.size + 96])]:
                    if not stor4[arg1][address(mem[calldata.size + 96])]:
                        revert with 0, 'nadmin, operator, or worker'
        if not stor20[arg1][arg2]:
            revert with 0, 'set must exist'
        stor15[arg1 or arg2 << 64].field_0 = arg3
        stor15[arg1 or arg2 << 64].field_256 = arg4
        mem[ceil32(calldata.size) + 288] = stor15[arg1 or arg2 << 64][2].field_0
        idx = ceil32(calldata.size) + 288
        s = 0
        while ceil32(calldata.size) + stor15[arg1 or arg2 << 64][2].length + 288 > idx + 32:
            mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(calldata.size) + stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 288] = stor15[arg1 or arg2 << 64].field_1792
        if not stor15[arg1 or arg2 << 64].field_1792:
            emit 0x525bfade: arg3, arg4, Array(len=stor15[arg1 or arg2 << 64][2].length, data=mem[ceil32(calldata.size) + 288 len stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 32]), stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 160, arg1, arg2
        else:
            mem[ceil32(calldata.size) + stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 320] = stor15[arg1 or arg2 << 64][7].field_0
            idx = ceil32(calldata.size) + stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 320
            s = 0
            while ceil32(calldata.size) + stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + (32 * stor15[arg1 or arg2 << 64].field_1792) + 320 > idx + 32:
                mem[idx + 32] = stor15[arg1 or arg2 << 64][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x525bfade: arg3, arg4, Array(len=stor15[arg1 or arg2 << 64][2].length, data=mem[ceil32(calldata.size) + 288 len stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + (32 * stor15[arg1 or arg2 << 64].field_1792) + 32]), stor15[arg1 or arg2 << 64][2].length + (floor32(stor15[arg1 or arg2 << 64][2].length - 1) + -stor15[arg1 or arg2 << 64][2].length + 32 % 32) + 160, arg1, arg2
}

function addOrUpdateCollectible(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32[] arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[(32 * arg5.length) + arg6.length + 160] = 0
    if msg.sender != this.address:
        if stor8[arg1]:
            if stor5[arg1][address(msg.sender)]:
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if stor5[arg1][address(msg.sender)]:
                    if not stor20[0][arg1]:
                        revert with 0, 'set must exist'
                    if uint64(arg2) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg2) > stor15[arg1].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg2) == stor15[arg1].field_768:
                        stor15[arg1].field_768++
                        stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
                else:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
                    if not stor20[0][arg1]:
                        revert with 0, 'set must exist'
                    if uint64(arg2) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg2) > stor15[arg1].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg2) == stor15[arg1].field_768:
                        stor15[arg1].field_768++
                        stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
    else:
        mem[(32 * arg5.length) + ceil32(arg6.length) + 160] = calldata.size
        mem[(32 * arg5.length) + ceil32(arg6.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if stor5[arg1][address(mem[calldata.size + (32 * arg5.length) + ceil32(arg6.length) + 160])]:
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if not stor4[arg1][address(mem[calldata.size + (32 * arg5.length) + ceil32(arg6.length) + 160])]:
                    revert with 0, 'nadmin, operator, or worker'
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + (32 * arg5.length) + ceil32(arg6.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not stor20[0][arg1]:
                    revert with 0, 'set must exist'
                if uint64(arg2) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg2) > stor15[arg1].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg2) == stor15[arg1].field_768:
                    stor15[arg1].field_768++
                    stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if stor5[arg1][address(mem[calldata.size + (32 * arg5.length) + ceil32(arg6.length) + 160])]:
                    if not stor20[0][arg1]:
                        revert with 0, 'set must exist'
                    if uint64(arg2) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg2) > stor15[arg1].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg2) == stor15[arg1].field_768:
                        stor15[arg1].field_768++
                        stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
                else:
                    if not stor4[arg1][address(mem[calldata.size + (32 * arg5.length) + ceil32(arg6.length) + 160])]:
                        revert with 0, 'nadmin, operator, or worker'
                    if not stor20[0][arg1]:
                        revert with 0, 'set must exist'
                    if uint64(arg2) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg2) > stor15[arg1].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg2) == stor15[arg1].field_768:
                        stor15[arg1].field_768++
                        stor[stor15[arg1].field_768 + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
}

function updateSetMetadata(uint256 arg1, uint256 arg2, string arg3, bytes32[] arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if msg.sender != this.address:
        if stor8[arg1]:
            if stor5[arg1][address(msg.sender)]:
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
            else:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
            else:
                if stor5[arg1][address(msg.sender)]:
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                        stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    # nil
                else:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                        stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    # nil
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if stor5[arg1][address(mem[calldata.size + 96])]:
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
            else:
                if not stor4[arg1][address(mem[calldata.size + 96])]:
                    revert with 0, 'nadmin, operator, or worker'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                    stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                # nil
            else:
                if stor5[arg1][address(mem[calldata.size + 96])]:
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                        stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    # nil
                else:
                    if not stor4[arg1][address(mem[calldata.size + 96])]:
                        revert with 0, 'nadmin, operator, or worker'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    stor15[arg1 or arg2 << 64].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor15[arg1 or arg2 << 64][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor15[arg1 or arg2 << 64][2].length + 31 / 32 > idx:
                        stor15[arg1 or arg2 << 64][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    # nil
}

function addOrUpdateCard(uint256 arg1, uint256 arg2, uint256 arg3, bytes32[] arg4, string arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg4.length) + arg5.length + 160] = 0
    if msg.sender != this.address:
        if stor8[arg1]:
            if stor5[arg1][address(msg.sender)]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if stor5[arg1][address(msg.sender)]:
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if uint64(arg3) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                        stor15[arg1 or arg2 << 64].field_768++
                        stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
                else:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if uint64(arg3) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                        stor15[arg1 or arg2 << 64].field_768++
                        stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
    else:
        mem[(32 * arg4.length) + ceil32(arg5.length) + 160] = calldata.size
        mem[(32 * arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        if stor8[arg1]:
            if stor5[arg1][address(mem[calldata.size + (32 * arg4.length) + ceil32(arg5.length) + 160])]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if not stor4[arg1][address(mem[calldata.size + (32 * arg4.length) + ceil32(arg5.length) + 160])]:
                    revert with 0, 'nadmin, operator, or worker'
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
        else:
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + (32 * arg4.length) + ceil32(arg5.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if uint64(arg3) > 4294967296:
                    revert with 0, 'cardId < 2**32'
                if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                    revert with 0, 'sequential cards'
                if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                    stor15[arg1 or arg2 << 64].field_768++
                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                # nil
            else:
                if stor5[arg1][address(mem[calldata.size + (32 * arg4.length) + ceil32(arg5.length) + 160])]:
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if uint64(arg3) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                        stor15[arg1 or arg2 << 64].field_768++
                        stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
                else:
                    if not stor4[arg1][address(mem[calldata.size + (32 * arg4.length) + ceil32(arg5.length) + 160])]:
                        revert with 0, 'nadmin, operator, or worker'
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if uint64(arg3) > 4294967296:
                        revert with 0, 'cardId < 2**32'
                    if uint64(arg3) > stor15[arg1 or arg2 << 64].field_768:
                        revert with 0, 'sequential cards'
                    if uint64(arg3) == stor15[arg1 or arg2 << 64].field_768:
                        stor15[arg1 or arg2 << 64].field_768++
                        stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                    # nil
}

function updateSetCards(uint256 arg1, uint256 arg2, uint256[] arg3, bytes32[] arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender != this.address:
        if stor8[arg1]:
            if stor5[arg1][address(msg.sender)]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var75001 >= arg3.length:
                        require var75001 < arg3.length
                        if mem[(32 * var75001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var75001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var75001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var75001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var76001 >= arg3.length:
                        require var76001 < arg3.length
                        if mem[(32 * var76001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var76001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var76001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var76001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var80001 >= arg3.length:
                            require var80001 < arg3.length
                            if mem[(32 * var80001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var80001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var80001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var80001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
            else:
                if not stor4[arg1][address(msg.sender)]:
                    revert with 0, 'nadmin, operator, or worker'
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var76001 >= arg3.length:
                        require var76001 < arg3.length
                        if mem[(32 * var76001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var76001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var76001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var76001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var77001 >= arg3.length:
                        require var77001 < arg3.length
                        if mem[(32 * var77001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var77001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var77001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var77001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var83001 >= arg3.length:
                            require var83001 < arg3.length
                            if mem[(32 * var83001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var83001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var83001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var83001 < arg3.length
                            # nil
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var78001 >= arg3.length:
                        require var78001 < arg3.length
                        if mem[(32 * var78001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var78001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var78001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var78001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var79001 >= arg3.length:
                        require var79001 < arg3.length
                        if mem[(32 * var79001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var79001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var79001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var79001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var83001 >= arg3.length:
                            require var83001 < arg3.length
                            if mem[(32 * var83001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var83001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var83001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var83001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var84001 >= arg3.length:
                            require var84001 < arg3.length
                            if mem[(32 * var84001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var84001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var84001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var84001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var84001 >= arg3.length:
                            require var84001 < arg3.length
                            if mem[(32 * var84001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var84001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var84001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var84001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var85001 >= arg3.length:
                            require var85001 < arg3.length
                            if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var85001 < arg3.length
                            # nil
            else:
                if stor5[arg1][address(msg.sender)]:
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if arg3.length <= 0:
                        revert with 0, 'must add at least one card'
                    require arg3.length
                    if 0 == arg4.length:
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var79001 >= arg3.length:
                            require var79001 < arg3.length
                            if mem[(32 * var79001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var79001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var79001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var79001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var80001 >= arg3.length:
                            require var80001 < arg3.length
                            if mem[(32 * var80001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var80001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var80001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var80001 < arg3.length
                            # nil
                    else:
                        if not arg3.length:
                            if arg4.length != 0:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var84001 >= arg3.length:
                                require var84001 < arg3.length
                                if mem[(32 * var84001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var84001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var84001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var84001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var85001 >= arg3.length:
                                require var85001 < arg3.length
                                if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var85001 < arg3.length
                                # nil
                        else:
                            if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                                revert with 0, 
                                            32,
                                            33,
                                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                            if arg4.length / arg3.length * arg3.length != arg4.length:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var85001 >= arg3.length:
                                require var85001 < arg3.length
                                if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var85001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                else:
                    if not stor4[arg1][address(msg.sender)]:
                        revert with 0, 'nadmin, operator, or worker'
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if arg3.length <= 0:
                        revert with 0, 'must add at least one card'
                    require arg3.length
                    if 0 == arg4.length:
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var80001 >= arg3.length:
                            require var80001 < arg3.length
                            if mem[(32 * var80001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var80001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var80001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var80001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                    else:
                        if not arg3.length:
                            if arg4.length != 0:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var85001 >= arg3.length:
                                require var85001 < arg3.length
                                if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var85001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                        else:
                            if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                                revert with 0, 
                                            32,
                                            33,
                                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                            if arg4.length / arg3.length * arg3.length != arg4.length:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var87001 >= arg3.length:
                                require var87001 < arg3.length
                                if mem[(32 * var87001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var87001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var87001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var87001 < arg3.length
                                # nil
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = calldata.size
        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[(32 * arg3.length) + (32 * arg4.length) + calldata.size + 192] = 0
        if stor8[arg1]:
            if stor5[arg1][address(mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 160])]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var76001 >= arg3.length:
                        require var76001 < arg3.length
                        if mem[(32 * var76001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var76001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var76001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var76001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var77001 >= arg3.length:
                        require var77001 < arg3.length
                        if mem[(32 * var77001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var77001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var77001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var77001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 293 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var83001 >= arg3.length:
                            require var83001 < arg3.length
                            if mem[(32 * var83001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var83001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var83001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var83001 < arg3.length
                            # nil
            else:
                if not stor4[arg1][address(mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 160])]:
                    revert with 0, 'nadmin, operator, or worker'
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var77001 >= arg3.length:
                        require var77001 < arg3.length
                        if mem[(32 * var77001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var77001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var77001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var77001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var78001 >= arg3.length:
                        require var78001 < arg3.length
                        if mem[(32 * var78001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var78001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var78001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var78001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var83001 >= arg3.length:
                            require var83001 < arg3.length
                            if mem[(32 * var83001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var83001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var83001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var83001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 293 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var83001 >= arg3.length:
                            require var83001 < arg3.length
                            if mem[(32 * var83001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var83001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var83001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var83001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var84001 >= arg3.length:
                            require var84001 < arg3.length
                            if mem[(32 * var84001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var84001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var84001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var84001 < arg3.length
                            # nil
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 196] = mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 172 len 20]
            require ext_code.size(masterContractAddress)
            call masterContractAddress.0x17937a07 with:
                 gas gas_remaining wei
                args mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if arg1 <= 0:
                    revert with 0, 'not for collectibles'
                if not stor20[arg1][arg2]:
                    revert with 0, 'set must exist'
                if arg3.length <= 0:
                    revert with 0, 'must add at least one card'
                require arg3.length
                if 0 == arg4.length:
                    require arg4.length / arg3.length <= test266151307()
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                    if not arg4.length / arg3.length:
                        if var79001 >= arg3.length:
                        require var79001 < arg3.length
                        if mem[(32 * var79001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var79001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var79001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var79001 < arg3.length
                        # nil
                    else:
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                        if var80001 >= arg3.length:
                        require var80001 < arg3.length
                        if mem[(32 * var80001) + 152 len 8] > 4294967296:
                            revert with 0, 'cardId < 2**32'
                        if mem[(32 * var80001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                            revert with 0, 'sequential cards'
                        if mem[(32 * var80001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                            stor15[arg1 or arg2 << 64].field_768++
                            stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                        require var80001 < arg3.length
                        # nil
                else:
                    if not arg3.length:
                        if arg4.length != 0:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var84001 >= arg3.length:
                            require var84001 < arg3.length
                            if mem[(32 * var84001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var84001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var84001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var84001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var85001 >= arg3.length:
                            require var85001 < arg3.length
                            if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var85001 < arg3.length
                            # nil
                    else:
                        if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                            revert with 0, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 293 len 31]
                        if arg4.length / arg3.length * arg3.length != arg4.length:
                            revert with 0, 'card metadata must be valid'
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var85001 >= arg3.length:
                            require var85001 < arg3.length
                            if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var85001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var86001 >= arg3.length:
                            require var86001 < arg3.length
                            if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var86001 < arg3.length
                            # nil
            else:
                if stor5[arg1][address(mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 160])]:
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if arg3.length <= 0:
                        revert with 0, 'must add at least one card'
                    require arg3.length
                    if 0 == arg4.length:
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var80001 >= arg3.length:
                            require var80001 < arg3.length
                            if mem[(32 * var80001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var80001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var80001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var80001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                    else:
                        if not arg3.length:
                            if arg4.length != 0:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var85001 >= arg3.length:
                                require var85001 < arg3.length
                                if mem[(32 * var85001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var85001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var85001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var85001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                        else:
                            if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                                revert with 0, 
                                            32,
                                            33,
                                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 293 len 31]
                            if arg4.length / arg3.length * arg3.length != arg4.length:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var87001 >= arg3.length:
                                require var87001 < arg3.length
                                if mem[(32 * var87001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var87001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var87001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var87001 < arg3.length
                                # nil
                else:
                    if not stor4[arg1][address(mem[calldata.size + (32 * arg3.length) + (32 * arg4.length) + 160])]:
                        revert with 0, 'nadmin, operator, or worker'
                    if arg1 <= 0:
                        revert with 0, 'not for collectibles'
                    if not stor20[arg1][arg2]:
                        revert with 0, 'set must exist'
                    if arg3.length <= 0:
                        revert with 0, 'must add at least one card'
                    require arg3.length
                    if 0 == arg4.length:
                        require arg4.length / arg3.length <= test266151307()
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                        if not arg4.length / arg3.length:
                            if var81001 >= arg3.length:
                            require var81001 < arg3.length
                            if mem[(32 * var81001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var81001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var81001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var81001 < arg3.length
                            # nil
                        else:
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                            if var82001 >= arg3.length:
                            require var82001 < arg3.length
                            if mem[(32 * var82001) + 152 len 8] > 4294967296:
                                revert with 0, 'cardId < 2**32'
                            if mem[(32 * var82001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                revert with 0, 'sequential cards'
                            if mem[(32 * var82001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                stor15[arg1 or arg2 << 64].field_768++
                                stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                            require var82001 < arg3.length
                            # nil
                    else:
                        if not arg3.length:
                            if arg4.length != 0:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var86001 >= arg3.length:
                                require var86001 < arg3.length
                                if mem[(32 * var86001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var86001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var86001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var86001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var87001 >= arg3.length:
                                require var87001 < arg3.length
                                if mem[(32 * var87001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var87001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var87001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var87001 < arg3.length
                                # nil
                        else:
                            if arg4.length / arg3.length * arg3.length / arg3.length != arg4.length / arg3.length:
                                revert with 0, 
                                            32,
                                            33,
                                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 293 len 31]
                            if arg4.length / arg3.length * arg3.length != arg4.length:
                                revert with 0, 'card metadata must be valid'
                            require arg4.length / arg3.length <= test266151307()
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 192] = arg4.length / arg3.length
                            if not arg4.length / arg3.length:
                                if var87001 >= arg3.length:
                                require var87001 < arg3.length
                                if mem[(32 * var87001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var87001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var87001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var87001 < arg3.length
                                # nil
                            else:
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(calldata.size) + 224 len 32 * arg4.length / arg3.length] = call.data[calldata.size len 32 * arg4.length / arg3.length]
                                if var88001 >= arg3.length:
                                require var88001 < arg3.length
                                if mem[(32 * var88001) + 152 len 8] > 4294967296:
                                    revert with 0, 'cardId < 2**32'
                                if mem[(32 * var88001) + 152 len 8] > stor15[arg1 or arg2 << 64].field_768:
                                    revert with 0, 'sequential cards'
                                if mem[(32 * var88001) + 152 len 8] == stor15[arg1 or arg2 << 64].field_768:
                                    stor15[arg1 or arg2 << 64].field_768++
                                    stor[stor15[arg1 or arg2 << 64].field_768 + ('array', 3, ('map', ('or', ('param', 'arg1'), ('mask_shl', 192, 0, 64, ('param', 'arg2'))), ('name', 'stor15', 15)))].field_0 = 0
                                require var88001 < arg3.length
                                # nil
}



}
