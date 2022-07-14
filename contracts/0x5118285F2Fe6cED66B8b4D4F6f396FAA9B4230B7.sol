contract main {




// =====================  Runtime code  =====================


#
#  - sub_3009c85d(?)
#
mapping of address stor5;
address owner;
mapping of uint8 stor7;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor11;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor13;
array of struct tokenByIndex;
mapping of uint256 stor15;
array of uint256 name;
array of uint256 symbol;
mapping of bool stor18;
mapping of uint8 stor19;
uint8 mintingFinished;
mapping of uint8 stor21;
uint8 paused;
array of struct tokenURIPrefix;
uint256 sub_c3710f25;

function supportsInterface(bytes4 arg1) {
    return bool(stor7[Mask(32, 224, arg1)])
}

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isPauser(address arg1) {
    require arg1
    return bool(stor21[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function orderID() {
    return sub_c3710f25
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor19[address(arg1)])
}

function tokenURIPrefix() {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function sub_c3710f25(?) {
    return sub_c3710f25
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor11[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor21[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused()
}

function pause() {
    require msg.sender
    require stor21[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require msg.sender
    require stor21[address(msg.sender)]
    require arg1
    stor21[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor19[address(msg.sender)]
    require arg1
    stor19[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function removeMinter(address arg1) {
    require msg.sender
    require stor19[address(msg.sender)]
    require arg1
    stor19[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function removePauser(address arg1) {
    require msg.sender
    require stor21[address(msg.sender)]
    require arg1
    stor21[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function finishMinting() {
    require msg.sender
    require stor19[address(msg.sender)]
    require not mintingFinished
    mintingFinished = 1
    emit MintingFinished()
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require not paused
    require arg1 != msg.sender
    stor11[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor11[stor8[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_b8f3d2ce(?) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit 0x1e17ec6a: arg1, arg2
    sub_c3710f25 = arg2
}

function cancelRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) {
    require msg.sender == owner
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTokenURIPrefix(string arg1) {
    require msg.sender
    require stor19[address(msg.sender)]
    tokenURIPrefix.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        tokenURIPrefix[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while tokenURIPrefix.length + 31 / 32 > idx:
        tokenURIPrefix[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_66689a05(?) {
    require msg.sender
    require stor19[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor13[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor15[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg2
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor19[address(msg.sender)]
    require not mintingFinished
    require arg1
    require not ownerOf[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor13[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor15[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg2
    return 1
}

function sub_a4462eec(?) {
    require sub_c3710f25 > 0
    require msg.sender
    require stor19[address(msg.sender)]
    require msg.sender
    require not ownerOf[stor24]
    require not ownerOf[stor24]
    ownerOf[stor24] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_c3710f25
    stor13[stor24] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, sub_c3710f25);
    stor15[stor24] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = sub_c3710f25
    sub_c3710f25 = 0
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require msg.sender
    require stor19[address(msg.sender)]
    require not mintingFinished
    require msg.sender
    require stor19[address(msg.sender)]
    require not mintingFinished
    require arg1
    require not ownerOf[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor13[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor15[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg2
    require ownerOf[arg2]
    uint256(stor18[arg2][]) = Array(len=arg3.length, data=arg3[all])
    return 1
}

function sub_74654710(?) {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = 32
        mem[(32 * tokenByIndex.length) + 160] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
        return memory
          from (32 * tokenByIndex.length) + 128
           len (96 * tokenByIndex.length) + 64
    mem[128] = uint256(tokenByIndex.field_0)
    idx = 128
    s = 0
    while (32 * tokenByIndex.length) + 96 > idx:
        mem[idx + 32] = tokenByIndex[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    return Array(len=tokenByIndex.length, data=mem[128 len floor32(tokenByIndex.length)], mem[(32 * tokenByIndex.length) + floor32(tokenByIndex.length) + 192 len (32 * tokenByIndex.length) - floor32(tokenByIndex.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor11[stor8[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg3] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function sub_e8ff280e(?) {
    require msg.sender
    require stor19[address(msg.sender)]
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg2] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg2]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg2] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg2]
    emit Transfer(arg1, 0, arg2);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor15[arg2] < tokenByIndex.length
    tokenByIndex[stor15[arg2]].field_0 = tokenByIndex[tokenByIndex.length].field_0
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length].field_0 = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor15[arg2] = 0
    stor15[stor14[stor14.length].field_0] = stor15[arg2]
    if Mask(255, 1, (256 * not bool(stor18[arg2])) - 1 and uint256(stor18[arg2])):
        uint256(stor18[arg2]) = 0
        if 31 < stor18[arg2].length:
            idx = 0
            while stor18[arg2].length + 31 / 32 > idx:
                uint256(stor18[arg2][idx]) = 0
                idx = idx + 1
                continue 
}

function tokenURI(uint256 arg1) {
    if arg1:
        idx = arg1
        s = 0
        while idx > 0:
            idx = idx / 10
            s = s / 256 or (idx % 10) + 48 << 248
            continue 
    mem[96] = tokenURIPrefix.length
    mem[128] = uint256(tokenURIPrefix.field_0)
    idx = 128
    s = 0
    while tokenURIPrefix.length + 96 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenURIPrefix.length) + 128] = tokenURIPrefix.length + 32
    if tokenURIPrefix.length + 32:
        mem[ceil32(tokenURIPrefix.length) + 160 len 32 * tokenURIPrefix.length + 32] = code.data[17675 len 32 * tokenURIPrefix.length + 32]
    s = 0
    idx = 0
    while uint8(idx) < tokenURIPrefix.length:
        require uint8(idx) < tokenURIPrefix.length
        require uint8(s) < mem[ceil32(tokenURIPrefix.length) + 128]
        mem[ceil32(tokenURIPrefix.length) + uint8(s) + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = None
    idx = 0
    while uint8(idx) < 32:
        require uint8(s) < mem[ceil32(tokenURIPrefix.length) + 128]
        mem[ceil32(tokenURIPrefix.length) + uint8(s) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 161] = 32
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 193] = mem[ceil32(tokenURIPrefix.length) + 128]
    mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 225 len ceil32(mem[ceil32(tokenURIPrefix.length) + 128])] = mem[ceil32(tokenURIPrefix.length) + 160 len ceil32(mem[ceil32(tokenURIPrefix.length) + 128])]
    return Array(len=mem[ceil32(tokenURIPrefix.length) + 128], data=mem[ceil32(tokenURIPrefix.length) + ceil32(tokenURIPrefix.length) + 225 len mem[ceil32(tokenURIPrefix.length) + 128]]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor11[stor8[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg3] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor11[stor8[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg3] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
