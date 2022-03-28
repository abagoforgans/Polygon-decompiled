contract main {




// =====================  Runtime code  =====================


const name = 'BlockchainCuties'

const isCutieCore = 1

const symbol = 'CUTIE'


array of struct cooldownIndex;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of address sub_55179913;
address saleMarketAddress;
address breedingMarketAddress;
address utilsAddress;
mapping of uint8 stor8;
address configAddress;
address stor10;
mapping of uint8 stor11;
uint8 paused;
uint64 promoCutieCreatedCount; offset 168
uint64 gen0CutieCreatedCount; offset 208
address upgradedContractAddress; offset 8
uint256 stor12;
uint256 stor12;
uint64 gen0Limit;
address stor13; offset 40
mapping of uint64 stor14;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
address sub_58af80cfAddress;

function gen0CutieCreatedCount() {
    return gen0CutieCreatedCount
}

function getApproved(uint256 arg1) {
    if arg1 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    return approved[arg1 << 216]
}

function upgradedContractAddress() {
    return upgradedContractAddress
}

function sub_10e9678b(?) {
    return approved[arg1 % 1099511627776]
}

function getCooldownIndex(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_416
}

function getOptional(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_448
}

function sub_55179913(?) {
    return sub_55179913[arg1 % 1099511627776]
}

function sub_58af80cf(?) {
    return sub_58af80cfAddress
}

function utils() {
    return utilsAddress
}

function breedingMarket() {
    return breedingMarketAddress
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    if arg1 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    require ownerOf[arg1 << 216]
    return ownerOf[arg1 << 216]
}

function isOperator(address arg1) {
    return bool(stor11[address(arg1)])
}

function balanceOf(address arg1) {
    if not arg1:
        revert with 0, 'Owner can't be 0x0'
    return balanceOf[address(arg1)]
}

function config() {
    return configAddress
}

function getGenes(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_0
}

function getGeneration(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_432
}

function sub_aad8e431(?) {
    return bool(stor8[arg1][arg2])
}

function sub_b1d95497(?) {
    return ownerOf[arg1 % 1099511627776]
}

function promoCutieCreatedCount() {
    return promoCutieCreatedCount
}

function saleMarket() {
    return saleMarketAddress
}

function gen0Limit() {
    return gen0Limit
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor8[address(arg1)][address(arg2)])
}

function getCooldownEndTime(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_296
}

function _fallback() payable {
  stop
}

function totalSupply() {
    return (cooldownIndex.length - 1)
}

function pause() {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    paused = 1
}

function tokenByIndex(uint256 arg1) {
    require arg1 < cooldownIndex.length - 1
    return (arg1 - 1)
}

function sub_5fd29a11(?) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    saleMarketAddress = arg1
}

function sub_566b447e(?) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    sub_58af80cfAddress = arg1
}

function sub_5160c9a6(?) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    breedingMarketAddress = arg1
}

function setUtilsAddress(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    utilsAddress = arg1
}

function setOwner(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require arg1
    stor10 = arg1
}

function removeOperator(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    stor11[address(arg1)] = 0
}

function unpause() {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require not upgradedContractAddress
    paused = 0
}

function setOperator(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require arg1
    stor11[address(arg1)] = 1
}

function checkOwnerAndApprove(address arg1, uint40 arg2, address arg3) {
    require msg.sender == sub_58af80cfAddress
    require ownerOf[arg2 << 216] == arg1
    approved[arg2 << 216] = arg3
}

function canBreed(uint40 arg1) {
    require 0 < arg1 % 1099511627776
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_256 <= block.timestamp
}

function setApprovalForAll(address arg1, bool arg2) {
    if not arg2:
        stor8[msg.sender][address(arg1)] = 0
    else:
        stor8[msg.sender][address(arg1)] = 1
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approveBreeding(address arg1, uint40 arg2) {
    require not paused
    require ownerOf[arg2 << 216] == msg.sender
    sub_55179913[arg2 << 216] = arg1
    emit BreedingApproval((arg2 % 1099511627776), msg.sender, arg1);
}

function setUpgradedAddress(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require paused
    require arg1
    upgradedContractAddress = arg1
    emit ContractUpgrade(address rg1):
                         0,
                         arg1,
}

function approve(address arg1, uint256 arg2) {
    require not paused
    if arg2 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if ownerOf[arg2 << 216] != msg.sender:
        revert with 0, 'Wrong cutie owner'
    approved[arg2 << 216] = arg1
    emit Approval(arg2, msg.sender, arg1);
}

function setParties(address arg1, address arg2, address arg3, address arg4, address arg5) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require arg1
    require arg2
    require arg3
    require arg4
    require arg5
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
    stor19 = arg5
}

function getBreedingFee(uint40 arg1, uint40 arg2) {
    require ext_code.size(configAddress)
    call configAddress.0x66dc860a with:
         gas gas_remaining wei
        args arg1 << 216, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setGeneMixerAddress(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require ext_code.size(arg1)
    call arg1.isGeneMixer() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor13 = arg1
}

function setConfigAddress(address arg1) {
    if stor10 != msg.sender:
        revert with 0, 'Access denied'
    require ext_code.size(arg1)
    call arg1.isConfig() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    configAddress = arg1
}

function sub_c44f2174(?) {
    require arg1 < cooldownIndex.length
    return cooldownIndex[arg1].field_0, 
           cooldownIndex[arg1].field_256,
           cooldownIndex[arg1].field_256,
           cooldownIndex[arg1].field_256,
           cooldownIndex[arg1].field_376,
           cooldownIndex[arg1].field_256,
           cooldownIndex[arg1].field_256,
           cooldownIndex[arg1].field_448
}

function restoreCutieToAddress(uint40 arg1, address arg2) {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    require not paused
    require ownerOf[arg1 << 216] == this.address
    balanceOf[address(arg2)]++
    ownerOf[arg1 << 216] = arg2
    if this.address:
        balanceOf[address(this.address)]--
        sub_55179913[arg1 << 216] = 0
        approved[arg1 << 216] = 0
    emit Transfer((arg1 % 1099511627776), this.address, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    if arg2 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if ownerOf[arg2 << 216] != msg.sender:
        revert with 0, 'Wrong cutie owner'
    balanceOf[address(arg1)]++
    ownerOf[arg2 << 216] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        sub_55179913[arg2 << 216] = 0
        approved[arg2 << 216] = 0
    emit Transfer((arg2 % 1099511627776), msg.sender, arg1);
}

function getCutie(uint40 arg1) {
    require arg1 % 1099511627776 < cooldownIndex.length
    return cooldownIndex[2 * arg1 % 1099511627776].field_0, 
           cooldownIndex[2 * arg1 % 1099511627776].field_256,
           cooldownIndex[2 * arg1 % 1099511627776].field_256,
           cooldownIndex[2 * arg1 % 1099511627776].field_256,
           cooldownIndex[2 * arg1 % 1099511627776].field_376,
           cooldownIndex[2 * arg1 % 1099511627776].field_256,
           cooldownIndex[2 * arg1 % 1099511627776].field_432
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require arg1
    require var14002 % 1099511627776 <= cooldownIndex.length - 1
    mem[0] = var14002 % 1099511627776
    mem[32] = 1
    if ownerOf[var14002 << 216] != arg1:
        var14002 = var14002 + 1
        var14003 = var14003
        continue 
    if var14003 % 1099511627776 != arg2:
        var14002 = var14002 + 1
        var14003 = var14003 + 1
        continue 
    return (var14002 % 1099511627776)
}

function createSaleAuction(uint40 arg1, uint128 arg2, uint128 arg3, uint40 arg4) payable {
    require not paused
    require ownerOf[arg1 << 216] == msg.sender
    approved[arg1 << 216] = saleMarketAddress
    require ext_code.size(saleMarketAddress)
    call saleMarketAddress.0xc1d1faf3 with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, arg2 << 128, arg3 << 128, arg4 % 1099511627776, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    if arg3 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if approved[arg3 << 216] != msg.sender:
        require stor8[address(arg1)][address(msg.sender)]
    require ownerOf[arg3 << 216] == arg1
    balanceOf[address(arg2)]++
    ownerOf[arg3 << 216] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        sub_55179913[arg3 << 216] = 0
        approved[arg3 << 216] = 0
    emit Transfer((arg3 % 1099511627776), arg1, arg2);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 'df5<':
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, sha3('tokenURI(uint256)') xor sha3('symbol()') xor sha3('name()')) == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, sha3('tokenOfOwnerByIndex(address, uin', 't256)') xor sha3('tokenByIndex(uint256)') xor sha3('totalSupply()')) == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, sha3('supportsInterface(bytes4)')) == Mask(32, 224, arg1))
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not paused
    if arg2 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if ownerOf[arg2 << 216] != msg.sender:
        revert with 0, 'Wrong cutie owner'
    approved[arg2 << 216] = arg1
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function changeGenes(uint40 arg1, uint256 arg2) {
    require not paused
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.isPlugin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 % 1099511627776 < cooldownIndex.length
    if cooldownIndex[2 * arg1 % 1099511627776].field_0 != arg2:
        emit GenesChanged(cooldownIndex[2 * arg1 % 1099511627776].field_0, arg2, arg1 % 1099511627776);
        cooldownIndex[2 * arg1 % 1099511627776].field_0 = arg2
}

function changeOptional(uint40 arg1, uint64 arg2) {
    require not paused
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.isPlugin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 % 1099511627776 < cooldownIndex.length
    if cooldownIndex[2 * arg1 % 1099511627776].field_448 != arg2:
        emit OptionalChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, arg2, arg1 % 1099511627776);
        cooldownIndex[2 * arg1 % 1099511627776].field_448 = arg2
}

function changeGeneration(uint40 arg1, uint16 arg2) {
    require not paused
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.isPlugin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 % 1099511627776 < cooldownIndex.length
    if cooldownIndex[2 * arg1 % 1099511627776].field_432 != arg2:
        emit GenerationChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, arg2, arg1 % 1099511627776);
        cooldownIndex[2 * arg1 % 1099511627776].field_432 = arg2
}

function changeCooldownIndex(uint40 arg1, uint16 arg2) {
    require not paused
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.isPlugin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 % 1099511627776 < cooldownIndex.length
    if cooldownIndex[2 * arg1 % 1099511627776].field_416 != arg2:
        emit CooldownIndexChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, arg2, arg1 % 1099511627776);
        cooldownIndex[2 * arg1 % 1099511627776].field_416 = arg2
}

function createBreedingAuction(uint40 arg1, uint128 arg2, uint128 arg3, uint40 arg4) payable {
    require not paused
    require ownerOf[arg1 << 216] == msg.sender
    require 0 < arg1 % 1099511627776
    require arg1 % 1099511627776 < cooldownIndex.length
    require cooldownIndex[2 * arg1 % 1099511627776].field_296 <= block.timestamp
    approved[arg1 << 216] = breedingMarketAddress
    require ext_code.size(breedingMarketAddress)
    call breedingMarketAddress.0xc1d1faf3 with:
       value msg.value wei
         gas gas_remaining wei
        args arg1 << 216, arg2 << 128, arg3 << 128, arg4 << 216, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5649cc47(?) payable {
    require not paused
    require ownerOf[arg1 << 216] == msg.sender
    approved[arg1 << 216] = saleMarketAddress
    mem[(32 * arg5.length) + 356 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(saleMarketAddress)
    call saleMarketAddress.0xb9fbad0d with:
       value msg.value wei
         gas gas_remaining wei
        args arg1 << 216, arg2 << 128, arg3 << 128, arg4 << 216, msg.sender, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 356 len (32 * arg5.length) - floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeCooldownEndTime(uint40 arg1, uint40 arg2) {
    require not paused
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.isPlugin(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 % 1099511627776 < cooldownIndex.length
    if cooldownIndex[2 * arg1 % 1099511627776].field_296 != arg2 % 1099511627776:
        emit CooldownEndTimeChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, arg2 % 1099511627776, arg1 % 1099511627776);
        cooldownIndex[2 * arg1 % 1099511627776].field_296 = arg2 % 1099511627776
}

function withdrawBalances() {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    require ext_code.size(saleMarketAddress)
    call saleMarketAddress.0x776247c4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(breedingMarketAddress)
    call breedingMarketAddress.0x776247c4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_58af80cfAddress)
    call sub_58af80cfAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferMany(address arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require not paused
        if mem[(32 * idx) + 128] > test266151307():
            revert with 0, 'Value can't be stored in 40 bit'
        if ownerOf[mem[(32 * idx) + 155 len 5]] != msg.sender:
            revert with 0, 'Wrong cutie owner'
        balanceOf[address(arg1)]++
        mem[0] = mem[(32 * idx) + 155 len 5]
        mem[32] = 1
        ownerOf[mem[(32 * idx) + 128] << 216] = arg1
        if msg.sender:
            balanceOf[address(msg.sender)]--
            mem[0] = mem[(32 * idx) + 155 len 5]
            sub_55179913[mem[(32 * idx) + 128] << 216] = 0
            mem[32] = 3
            approved[mem[(32 * idx) + 128] << 216] = 0
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 155 len 5]
        emit Transfer(mem[(32 * arg2.length) + 128], msg.sender, arg1);
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    if arg3 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if not arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if this.address == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if saleMarketAddress == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if breedingMarketAddress == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if approved[arg3 << 216] != msg.sender:
        if not stor8[address(arg1)][address(msg.sender)]:
            revert with 0, 'No allowance'
    if ownerOf[arg3 << 216] != arg1:
        revert with 0, 'Wrong cutie owner'
    balanceOf[address(arg2)]++
    ownerOf[arg3 << 216] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        sub_55179913[arg3 << 216] = 0
        approved[arg3 << 216] = 0
    emit Transfer((arg3 % 1099511627776), arg1, arg2);
}

function tokenURI(uint256 arg1) {
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(utilsAddress)
    call utilsAddress.0xc87b56dd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not paused
    if arg3 > test266151307():
        revert with 0, 'Value can't be stored in 40 bit'
    if not arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if this.address == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if saleMarketAddress == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if breedingMarketAddress == arg2:
        revert with 0, 32, 23, 0xff57726f6e672063757469652064657374696e6174696f6e0000000000000000
    if approved[arg3 << 216] != msg.sender:
        if not stor8[address(arg1)][address(msg.sender)]:
            revert with 0, 'No allowance'
    if ownerOf[arg3 << 216] != arg1:
        revert with 0, 'Wrong cutie owner'
    balanceOf[address(arg2)]++
    ownerOf[arg3 << 216] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        sub_55179913[arg3 << 216] = 0
        approved[arg3 << 216] = 0
    emit Transfer((arg3 % 1099511627776), arg1, arg2);
    require ext_code.size(arg2)
    call arg2.onERC721Received(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args 0, 0, arg3, 96, arg4.length, arg4[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferBulk(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not paused
        if mem[(32 * idx) + (32 * arg1.length) + 160] > test266151307():
            revert with 0, 'Value can't be stored in 40 bit'
        if ownerOf[mem[(32 * idx) + (32 * arg1.length) + 187 len 5]] != msg.sender:
            revert with 0, 'Wrong cutie owner'
        balanceOf[address(mem[(32 * idx) + 128])]++
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 187 len 5]
        mem[32] = 1
        ownerOf[mem[(32 * idx) + (32 * arg1.length) + 160] << 216] = mem[(32 * idx) + 140 len 20]
        if msg.sender:
            balanceOf[address(msg.sender)]--
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 187 len 5]
            sub_55179913[mem[(32 * idx) + (32 * arg1.length) + 160] << 216] = 0
            mem[32] = 3
            approved[mem[(32 * idx) + (32 * arg1.length) + 160] << 216] = 0
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 187 len 5]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_30));
        idx = idx + 1
        continue 
}

function createPromoCutie(uint256 arg1, address arg2) {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(48, 208, uint256(stor12.field_0)) or Mask(168, 0, stor12.field_0) or promoCutieCreatedCount + 1 % 1099511627776 << 168 or gen0CutieCreatedCount + 1 % 1099511627776 << 208
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = arg1
    cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_376 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_416 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_432 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, arg1, 0, 0, block.timestamp % 1099511627776, arg2
    balanceOf[address(arg2)]++
    ownerOf[stor0.length % 1099511627776] = arg2
    emit Transfer(cooldownIndex.length % 1099511627776, 0, arg2);
}

function createPromoCutieWithGeneration(uint256 arg1, address arg2, uint16 arg3) {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    promoCutieCreatedCount = promoCutieCreatedCount + 1 % 1099511627776
    if not arg3:
        uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and uint256(stor12.field_0) or gen0CutieCreatedCount + 1 % 1099511627776 << 208
    require ext_code.size(configAddress)
    call configAddress.'=hJk' with:
         gas gas_remaining wei
        args arg3 << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = arg1
    cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_376 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_432 = arg3
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, arg1, arg3 << 240, ext_call.return_data[0] << 240, block.timestamp % 1099511627776, arg2
    balanceOf[address(arg2)]++
    ownerOf[stor0.length % 1099511627776] = arg2
    emit Transfer(cooldownIndex.length % 1099511627776, 0, arg2);
}

function withdrawEthFromBalance(uint256 arg1) {
    if stor15 != msg.sender:
        if stor16 != msg.sender:
            if stor17 != msg.sender:
                if stor18 != msg.sender:
                    if stor19 != msg.sender:
                        require msg.sender == stor10
    require stor15
    require stor16
    require stor17
    require stor18
    require stor19
    if eth.balance(this.address) <= arg1:
        call stor15 with:
           value 105 * eth.balance(this.address) / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor16 with:
           value 105 * eth.balance(this.address) / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor17 with:
           value 140 * eth.balance(this.address) / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor18 with:
           value 140 * eth.balance(this.address) / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor19 with:
           value 510 * eth.balance(this.address) / 1000 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor15 with:
           value 105 * arg1 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor16 with:
           value 105 * arg1 / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor17 with:
           value 140 * arg1 / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor18 with:
           value 140 * arg1 / 1000 wei
             gas 2300 * is_zero(value) wei
        call stor19 with:
           value 510 * arg1 / 1000 wei
             gas 2300 * is_zero(value) wei
}

function createGen0Auction(uint256 arg1, uint128 arg2, uint128 arg3, uint40 arg4) {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    if gen0CutieCreatedCount >= gen0Limit:
        revert with 0, 'Gen0 limit'
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = arg1
    cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_376 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_416 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_432 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, arg1, 0, 0, block.timestamp % 1099511627776, this.address
    balanceOf[address(this.address)]++
    ownerOf[stor0.length % 1099511627776] = this.address
    emit Transfer(cooldownIndex.length % 1099511627776, 0, this.address);
    approved[stor0.length % 1099511627776] = saleMarketAddress
    require ext_code.size(saleMarketAddress)
    call saleMarketAddress.0xc1d1faf3 with:
         gas gas_remaining wei
        args cooldownIndex.length % 1099511627776, arg2 << 128, arg3 << 128, arg4 << 216, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and uint256(stor12.field_0) or gen0CutieCreatedCount + 1 % 1099511627776 << 208
}

function canBreedWith(uint40 arg1, uint40 arg2) {
    require 0 < arg1 % 1099511627776
    require arg2 % 1099511627776 > 0
    require arg1 % 1099511627776 < cooldownIndex.length
    require arg2 % 1099511627776 < cooldownIndex.length
    if arg2 % 1099511627776 == arg1 % 1099511627776:
        return 0
    if cooldownIndex[2 * arg1 % 1099511627776].field_336 == arg2 % 1099511627776:
        return 0
    if cooldownIndex[2 * arg1 % 1099511627776].field_376 == arg2 % 1099511627776:
        return 0
    if cooldownIndex[2 * arg2 % 1099511627776].field_336 == arg1 % 1099511627776:
        return 0
    if cooldownIndex[2 * arg2 % 1099511627776].field_376 == arg1 % 1099511627776:
        return 0
    if cooldownIndex[2 * arg2 % 1099511627776].field_336:
        if cooldownIndex[2 * arg1 % 1099511627776].field_336:
            if cooldownIndex[2 * arg2 % 1099511627776].field_336 == cooldownIndex[2 * arg1 % 1099511627776].field_336:
                return 0
            if cooldownIndex[2 * arg1 % 1099511627776].field_376 == cooldownIndex[2 * arg2 % 1099511627776].field_336:
                return 0
            if cooldownIndex[2 * arg1 % 1099511627776].field_336 == cooldownIndex[2 * arg2 % 1099511627776].field_376:
                return 0
            if cooldownIndex[2 * arg2 % 1099511627776].field_376 == cooldownIndex[2 * arg1 % 1099511627776].field_376:
                return 0
            require ext_code.size(stor13)
            call stor13.canBreed(uint40 rg1, uint256 rg2, uint40 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 0, cooldownIndex[2 * arg1 % 1099511627776].field_0, arg2 << 216, cooldownIndex[2 * arg2 % 1099511627776].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
    if ownerOf[arg1 << 216] == ownerOf[arg2 % 1099511627776]:
        return True
    return (ownerOf[arg1 << 216] == sub_55179913[arg2 << 216])
}

function createGen0AuctionWithTokens(uint256 arg1, uint128 arg2, uint128 arg3, uint40 arg4, address[] arg5) {
    if not stor11[msg.sender]:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
    if gen0CutieCreatedCount >= gen0Limit:
        revert with 0, 'Gen0 limit'
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = arg1
    cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_376 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_416 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_432 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, arg1, 0, 0, block.timestamp % 1099511627776, this.address
    balanceOf[address(this.address)]++
    ownerOf[stor0.length % 1099511627776] = this.address
    emit Transfer(cooldownIndex.length % 1099511627776, 0, this.address);
    approved[stor0.length % 1099511627776] = saleMarketAddress
    mem[(32 * arg5.length) + 868 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(saleMarketAddress)
    call saleMarketAddress.0xb9fbad0d with:
         gas gas_remaining wei
        args cooldownIndex.length % 1099511627776, arg2 << 128, arg3 << 128, arg4 << 216, this.address, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + floor32(arg5.length) + 868 len (32 * arg5.length) - floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and uint256(stor12.field_0) or gen0CutieCreatedCount + 1 % 1099511627776 << 208
}

function bidOnBreedingAuctionTutorial(uint40 arg1) payable {
    require not paused
    require not stor14[msg.sender]
    require ext_code.size(configAddress)
    call configAddress.0x66dc860a with:
         gas gas_remaining wei
        args 0, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= msg.value
    require ext_code.size(breedingMarketAddress)
    call breedingMarketAddress.0xc170fd54 with:
       value msg.value - ext_call.return_data[0] wei
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 % 1099511627776 < cooldownIndex.length
    require ext_code.size(configAddress)
    call configAddress.getCooldownEndTimeFromIndex(uint16 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg1 % 1099511627776].field_256, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex[2 * arg1 % 1099511627776].field_296 = ext_call.return_data[0] % 1099511627776
    emit CooldownEndTimeChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, ext_call.return_data[0] % 1099511627776, arg1 % 1099511627776);
    require ext_code.size(configAddress)
    call configAddress.getCooldownIndexCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1) < ext_call.return_data[0]:
        cooldownIndex[2 * arg1 % 1099511627776].field_416 = uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1)
        emit CooldownIndexChanged(uint40 rg1, uint16 rg2, uint16 rg3):
                                  cooldownIndex[2 * arg1 % 1099511627776].field_256,
                                  0,
                                  uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1),
                                  arg1 % 1099511627776,
    sub_55179913[arg1 << 216] = 0
    require ext_code.size(configAddress)
    call configAddress.getTutorialBabyGen(uint16 rg1) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg1 % 1099511627776].field_432
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.0x469618fd with:
         gas gas_remaining wei
        args 0, 0, 0, arg1 << 216, cooldownIndex[2 * arg1 % 1099511627776].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    call configAddress.'=hJk' with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = ext_call.return_data[0]
    cooldownIndex[cooldownIndex.length].field_256 = 12
    cooldownIndex[cooldownIndex.length].field_264 = 0
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_376 = arg1 % 1099511627776
    cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_432 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, arg1 << 216, ext_call.return_data[0], ext_call.return_data[0] << 240, ext_call.return_data[0] << 240, 12, msg.sender
    balanceOf[address(msg.sender)]++
    ownerOf[stor0.length % 1099511627776] = msg.sender
    emit Transfer(cooldownIndex.length % 1099511627776, 0, msg.sender);
    stor14[msg.sender] = cooldownIndex.length % 1099511627776
    return cooldownIndex.length % 1099511627776
}

function createPromoCutieBulk(uint256[] arg1, address arg2, uint16 arg3) payable {
    mem[64] = 96
    require not msg.value
    if stor11[msg.sender]:
        uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(48, 208, uint256(stor12.field_0)) or Mask(168, 0, stor12.field_0) or arg1.length + promoCutieCreatedCount % 1099511627776 << 168 or arg1.length + gen0CutieCreatedCount % 1099511627776 << 208
        require ext_code.size(configAddress)
        call configAddress.'=hJk' with:
             gas gas_remaining wei
            args arg3 << 240, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < arg1.length:
            _64 = mem[64]
            mem[64] = mem[64] + 256
            mem[_64] = 0
            mem[_64 + 32] = 0
            mem[_64 + 64] = 0
            mem[_64 + 96] = 0
            mem[_64 + 128] = 0
            mem[_64 + 160] = 0
            mem[_64 + 192] = 0
            mem[_64 + 224] = 0
            _66 = mem[64]
            mem[64] = mem[64] + 256
            mem[_66] = cd[((32 * idx) + arg1 + 36)]
            mem[_66 + 32] = block.timestamp % 1099511627776
            mem[_66 + 64] = 0
            mem[_66 + 96] = 0
            mem[_66 + 128] = 0
            mem[_66 + 160] = uint16(ext_call.return_data[0])
            mem[_66 + 192] = arg3
            mem[_66 + 224] = 0
            cooldownIndex.length++
            cooldownIndex[cooldownIndex.length].field_0 = cd[((32 * idx) + arg1 + 36)]
            cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
            cooldownIndex[cooldownIndex.length].field_296 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_336 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_376 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
            cooldownIndex[cooldownIndex.length].field_432 = arg3
            cooldownIndex[cooldownIndex.length].field_448 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            require cooldownIndex.length <= test266151307()
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 128] = arg3
            mem[mem[64] + 160] = uint16(ext_call.return_data[0])
            mem[mem[64] + 192] = block.timestamp % 1099511627776
            emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, cd[((32 * idx) + arg1 + 36)], arg3 << 240, ext_call.return_data[0] << 240, block.timestamp % 1099511627776, arg2
            balanceOf[address(arg2)]++
            mem[0] = cooldownIndex.length % 1099511627776
            mem[32] = 1
            ownerOf[stor0.length % 1099511627776] = arg2
            mem[mem[64]] = cooldownIndex.length % 1099511627776
            emit Transfer(cooldownIndex.length % 1099511627776, 0, arg2);
            idx = idx + 1
            continue 
    else:
        if stor10 != msg.sender:
            revert with 0, 'Access denied'
        uint256(stor12.field_0) = 0xff0000000000ffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(48, 208, uint256(stor12.field_0)) or Mask(168, 0, stor12.field_0) or arg1.length + promoCutieCreatedCount % 1099511627776 << 168 or arg1.length + gen0CutieCreatedCount % 1099511627776 << 208
        require ext_code.size(configAddress)
        call configAddress.'=hJk' with:
             gas gas_remaining wei
            args arg3 << 240, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < arg1.length:
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = 0
            mem[_65 + 32] = 0
            mem[_65 + 64] = 0
            mem[_65 + 96] = 0
            mem[_65 + 128] = 0
            mem[_65 + 160] = 0
            mem[_65 + 192] = 0
            mem[_65 + 224] = 0
            _76 = mem[64]
            mem[64] = mem[64] + 256
            mem[_76] = cd[((32 * idx) + arg1 + 36)]
            mem[_76 + 32] = block.timestamp % 1099511627776
            mem[_76 + 64] = 0
            mem[_76 + 96] = 0
            mem[_76 + 128] = 0
            mem[_76 + 160] = uint16(ext_call.return_data[0])
            mem[_76 + 192] = arg3
            mem[_76 + 224] = 0
            cooldownIndex.length++
            cooldownIndex[cooldownIndex.length].field_0 = cd[((32 * idx) + arg1 + 36)]
            cooldownIndex[cooldownIndex.length].field_256 = block.timestamp % 1099511627776
            cooldownIndex[cooldownIndex.length].field_296 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_336 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_376 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
            cooldownIndex[cooldownIndex.length].field_432 = arg3
            cooldownIndex[cooldownIndex.length].field_448 = 0
            cooldownIndex[cooldownIndex.length].field_512 = 0
            require cooldownIndex.length <= test266151307()
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 128] = arg3
            mem[mem[64] + 160] = uint16(ext_call.return_data[0])
            mem[mem[64] + 192] = block.timestamp % 1099511627776
            emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, 0, 0, cd[((32 * idx) + arg1 + 36)], arg3 << 240, ext_call.return_data[0] << 240, block.timestamp % 1099511627776, arg2
            balanceOf[address(arg2)]++
            mem[0] = cooldownIndex.length % 1099511627776
            mem[32] = 1
            ownerOf[stor0.length % 1099511627776] = arg2
            mem[mem[64]] = cooldownIndex.length % 1099511627776
            emit Transfer(cooldownIndex.length % 1099511627776, 0, arg2);
            idx = idx + 1
            continue 
}

function breedWith(uint40 arg1, uint40 arg2) payable {
    require not paused
    require ownerOf[arg1 << 216] == msg.sender
    if ownerOf[arg1 << 216] != ownerOf[arg2 % 1099511627776]:
        require ownerOf[arg1 << 216] == sub_55179913[arg2 << 216]
    require ext_code.size(configAddress)
    call configAddress.0x66dc860a with:
         gas gas_remaining wei
        args arg1 << 216, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= msg.value
    require arg1 % 1099511627776 < cooldownIndex.length
    require cooldownIndex[2 * arg1 % 1099511627776].field_296 <= block.timestamp
    require arg2 % 1099511627776 < cooldownIndex.length
    require cooldownIndex[2 * arg2 % 1099511627776].field_296 <= block.timestamp
    require arg2 % 1099511627776 != arg1 % 1099511627776
    require cooldownIndex[2 * arg1 % 1099511627776].field_336 != arg2 % 1099511627776
    require cooldownIndex[2 * arg1 % 1099511627776].field_376 != arg2 % 1099511627776
    require cooldownIndex[2 * arg2 % 1099511627776].field_336 != arg1 % 1099511627776
    require cooldownIndex[2 * arg2 % 1099511627776].field_376 != arg1 % 1099511627776
    if cooldownIndex[2 * arg2 % 1099511627776].field_336:
        if cooldownIndex[2 * arg1 % 1099511627776].field_336:
            require cooldownIndex[2 * arg2 % 1099511627776].field_336 != cooldownIndex[2 * arg1 % 1099511627776].field_336
            require cooldownIndex[2 * arg1 % 1099511627776].field_376 != cooldownIndex[2 * arg2 % 1099511627776].field_336
            require cooldownIndex[2 * arg1 % 1099511627776].field_336 != cooldownIndex[2 * arg2 % 1099511627776].field_376
            require cooldownIndex[2 * arg2 % 1099511627776].field_376 != cooldownIndex[2 * arg1 % 1099511627776].field_376
            require ext_code.size(stor13)
            call stor13.canBreed(uint40 rg1, uint256 rg2, uint40 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args arg1 << 216, cooldownIndex[2 * arg1 % 1099511627776].field_0, arg2 << 216, cooldownIndex[2 * arg2 % 1099511627776].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require arg2 % 1099511627776 < cooldownIndex.length
    require arg1 % 1099511627776 < cooldownIndex.length
    require ext_code.size(configAddress)
    call configAddress.getCooldownEndTimeFromIndex(uint16 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg2 % 1099511627776].field_256, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex[2 * arg2 % 1099511627776].field_296 = ext_call.return_data[0] % 1099511627776
    emit CooldownEndTimeChanged(cooldownIndex[2 * arg2 % 1099511627776].field_256, ext_call.return_data[0] % 1099511627776, arg2 % 1099511627776);
    require ext_code.size(configAddress)
    call configAddress.getCooldownIndexCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1) < ext_call.return_data[0]:
        cooldownIndex[2 * arg2 % 1099511627776].field_416 = uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1)
        emit CooldownIndexChanged(uint40 rg1, uint16 rg2, uint16 rg3):
                                  cooldownIndex[2 * arg2 % 1099511627776].field_256,
                                  0,
                                  uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1),
                                  arg2 % 1099511627776,
    require ext_code.size(configAddress)
    call configAddress.getCooldownEndTimeFromIndex(uint16 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg1 % 1099511627776].field_256, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex[2 * arg1 % 1099511627776].field_296 = ext_call.return_data[0] % 1099511627776
    emit CooldownEndTimeChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, ext_call.return_data[0] % 1099511627776, arg1 % 1099511627776);
    require ext_code.size(configAddress)
    call configAddress.getCooldownIndexCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1) < ext_call.return_data[0]:
        cooldownIndex[2 * arg1 % 1099511627776].field_416 = uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1)
        emit CooldownIndexChanged(uint40 rg1, uint16 rg2, uint16 rg3):
                                  cooldownIndex[2 * arg1 % 1099511627776].field_256,
                                  0,
                                  uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1),
                                  arg1 % 1099511627776,
    sub_55179913[arg1 << 216] = 0
    sub_55179913[arg2 % 1099511627776] = 0
    require cooldownIndex[2 * arg1 % 1099511627776].field_256
    require ext_code.size(configAddress)
    call configAddress.getBabyGenFromId(uint40 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args arg1 << 216, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.0x469618fd with:
         gas gas_remaining wei
        args arg1 << 216, cooldownIndex[2 * arg1 % 1099511627776].field_0, arg2 << 216, cooldownIndex[2 * arg2 % 1099511627776].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    call configAddress.'=hJk' with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = ext_call.return_data[0]
    cooldownIndex[cooldownIndex.length].field_256 = cooldownIndex[2 * arg1 % 1099511627776].field_296
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = arg1 % 1099511627776
    cooldownIndex[cooldownIndex.length].field_376 = arg2 % 1099511627776
    cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_432 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, arg1 << 216, arg2 << 216, ext_call.return_data[0], ext_call.return_data[0] << 240, ext_call.return_data[0] << 240, cooldownIndex[2 * arg1 % 1099511627776].field_296, ownerOf[arg1 << 216]
    balanceOf[stor1[arg1 << 216]]++
    ownerOf[stor0.length % 1099511627776] = ownerOf[arg1 << 216]
    emit Transfer(cooldownIndex.length % 1099511627776, 0, ownerOf[arg1 << 216]);
    return cooldownIndex.length % 1099511627776
}

function bidOnBreedingAuction(uint40 arg1, uint40 arg2) payable {
    require not paused
    require ownerOf[arg2 << 216] == msg.sender
    require 0 < arg2 % 1099511627776
    require arg2 % 1099511627776 < cooldownIndex.length
    require cooldownIndex[2 * arg2 % 1099511627776].field_296 <= block.timestamp
    require arg2 % 1099511627776 < cooldownIndex.length
    require arg1 % 1099511627776 < cooldownIndex.length
    require arg1 % 1099511627776 != arg2 % 1099511627776
    require cooldownIndex[2 * arg2 % 1099511627776].field_336 != arg1 % 1099511627776
    require cooldownIndex[2 * arg2 % 1099511627776].field_376 != arg1 % 1099511627776
    require cooldownIndex[2 * arg1 % 1099511627776].field_336 != arg2 % 1099511627776
    require cooldownIndex[2 * arg1 % 1099511627776].field_376 != arg2 % 1099511627776
    if cooldownIndex[2 * arg1 % 1099511627776].field_336:
        if cooldownIndex[2 * arg2 % 1099511627776].field_336:
            require cooldownIndex[2 * arg1 % 1099511627776].field_336 != cooldownIndex[2 * arg2 % 1099511627776].field_336
            require cooldownIndex[2 * arg2 % 1099511627776].field_376 != cooldownIndex[2 * arg1 % 1099511627776].field_336
            require cooldownIndex[2 * arg2 % 1099511627776].field_336 != cooldownIndex[2 * arg1 % 1099511627776].field_376
            require cooldownIndex[2 * arg1 % 1099511627776].field_376 != cooldownIndex[2 * arg2 % 1099511627776].field_376
            require ext_code.size(stor13)
            call stor13.canBreed(uint40 rg1, uint256 rg2, uint40 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args arg2 << 216, cooldownIndex[2 * arg2 % 1099511627776].field_0, arg1 << 216, cooldownIndex[2 * arg1 % 1099511627776].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(configAddress)
    call configAddress.0x66dc860a with:
         gas gas_remaining wei
        args arg2 << 216, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= msg.value
    require ext_code.size(breedingMarketAddress)
    call breedingMarketAddress.0xc170fd54 with:
       value msg.value - ext_call.return_data[0] wei
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 % 1099511627776 < cooldownIndex.length
    require arg2 % 1099511627776 < cooldownIndex.length
    require ext_code.size(configAddress)
    call configAddress.getCooldownEndTimeFromIndex(uint16 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg1 % 1099511627776].field_256, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex[2 * arg1 % 1099511627776].field_296 = ext_call.return_data[0] % 1099511627776
    emit CooldownEndTimeChanged(cooldownIndex[2 * arg1 % 1099511627776].field_256, ext_call.return_data[0] % 1099511627776, arg1 % 1099511627776);
    require ext_code.size(configAddress)
    call configAddress.getCooldownIndexCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1) < ext_call.return_data[0]:
        cooldownIndex[2 * arg1 % 1099511627776].field_416 = uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1)
        emit CooldownIndexChanged(uint40 rg1, uint16 rg2, uint16 rg3):
                                  cooldownIndex[2 * arg1 % 1099511627776].field_256,
                                  0,
                                  uint16(cooldownIndex[2 * arg1 % 1099511627776].field_416 + 1),
                                  arg1 % 1099511627776,
    require ext_code.size(configAddress)
    call configAddress.getCooldownEndTimeFromIndex(uint16 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args cooldownIndex[2 * arg2 % 1099511627776].field_256, arg2 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex[2 * arg2 % 1099511627776].field_296 = ext_call.return_data[0] % 1099511627776
    emit CooldownEndTimeChanged(cooldownIndex[2 * arg2 % 1099511627776].field_256, ext_call.return_data[0] % 1099511627776, arg2 % 1099511627776);
    require ext_code.size(configAddress)
    call configAddress.getCooldownIndexCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1) < ext_call.return_data[0]:
        cooldownIndex[2 * arg2 % 1099511627776].field_416 = uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1)
        emit CooldownIndexChanged(uint40 rg1, uint16 rg2, uint16 rg3):
                                  cooldownIndex[2 * arg2 % 1099511627776].field_256,
                                  0,
                                  uint16(cooldownIndex[2 * arg2 % 1099511627776].field_416 + 1),
                                  arg2 % 1099511627776,
    sub_55179913[arg2 << 216] = 0
    sub_55179913[arg1 % 1099511627776] = 0
    require cooldownIndex[2 * arg2 % 1099511627776].field_256
    require ext_code.size(configAddress)
    call configAddress.getBabyGenFromId(uint40 rg1, uint40 rg2) with:
         gas gas_remaining wei
        args arg2 << 216, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.0x469618fd with:
         gas gas_remaining wei
        args arg2 << 216, cooldownIndex[2 * arg2 % 1099511627776].field_0, arg1 << 216, cooldownIndex[2 * arg1 % 1099511627776].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    call configAddress.'=hJk' with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cooldownIndex.length++
    cooldownIndex[cooldownIndex.length].field_0 = ext_call.return_data[0]
    cooldownIndex[cooldownIndex.length].field_256 = cooldownIndex[2 * arg2 % 1099511627776].field_296
    cooldownIndex[cooldownIndex.length].field_296 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    cooldownIndex[cooldownIndex.length].field_336 = arg2 % 1099511627776
    cooldownIndex[cooldownIndex.length].field_376 = arg1 % 1099511627776
    cooldownIndex[cooldownIndex.length].field_416 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_432 = uint16(ext_call.return_data[0])
    cooldownIndex[cooldownIndex.length].field_448 = 0
    cooldownIndex[cooldownIndex.length].field_512 = 0
    require cooldownIndex.length <= test266151307()
    emit 0xc75b1e1c: cooldownIndex.length % 1099511627776, arg2 << 216, arg1 << 216, ext_call.return_data[0], ext_call.return_data[0] << 240, ext_call.return_data[0] << 240, cooldownIndex[2 * arg2 % 1099511627776].field_296, ownerOf[arg2 << 216]
    balanceOf[stor1[arg2 << 216]]++
    ownerOf[stor0.length % 1099511627776] = ownerOf[arg2 << 216]
    emit Transfer(cooldownIndex.length % 1099511627776, 0, ownerOf[arg2 << 216]);
    return cooldownIndex.length % 1099511627776
}



}
