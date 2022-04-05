contract main {




// =====================  Runtime code  =====================


const networkId = ''

const EIP712_TOKEN_TRANSFER_ORDER_SCHEMA_HASH = sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, mem[320 len 5], 0x6174612c75696e74323536206578706972)

const CHAINID = 15001

const EIP712_DOMAIN_SCHEMA_HASH = sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c737472696e67, 0x2076657273696f6e2c75696e7432353620636861696e49642c61646472657373, mem[320 len 18])


address owner;
uint256 EIP712_DOMAIN_HASH;
address tokenAddress;
address childChainAddress;
address parentAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of address ownerOf;
mapping of address stor8;
mapping of uint256 balanceOf;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor12;
array of uint256 tokenByIndex;
mapping of uint256 stor14;
mapping of bool tokenURI;
uint8 stor18; offset 160
address stateSyncerAddress;
array of uint256 name;
array of uint256 symbol;
mapping of uint8 stor2827881315200186636958800910965268021338996;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function childChain() {
    return childChainAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function parent() {
    return parentAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function disabledHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function EIP712_DOMAIN_HASH() {
    return EIP712_DOMAIN_HASH
}

function stateSyncer() {
    return stateSyncerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOnlyStateSyncerContract() {
    return (msg.sender == stateSyncerAddress)
}

function isOwner() {
    return (stor[sha3('matic.network.proxy.owner')] == msg.sender)
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    revert with 0, 'Disabled feature'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    revert with 0, 'Disabled feature'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    revert with 0, 'Disabled feature'
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    revert with 0, 'Disabled feature'
}

function renounceOwnership() {
    require stor[sha3('matic.network.proxy.owner')] == msg.sender
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require stor[sha3('matic.network.proxy.owner')] == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenTransferOrderHash(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    return sha3(6401, EIP712_DOMAIN_HASH, sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(arg1), arg2, arg3, arg4))
}

function setParent(address arg1) {
    require calldata.size - 4 >= 32
    require stor[sha3('matic.network.proxy.owner')] == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe4368696c6420746f6b656e3a206e657720706172656e74206164647265737320697320746865207a65726f20616464726573,
                    mem[215 len 13]
    emit ParentChanged(parentAddress, arg1);
    parentAddress = arg1
}

function changeChildChain(address arg1) {
    require calldata.size - 4 >= 32
    require stor[sha3('matic.network.proxy.owner')] == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x744368696c6420746f6b656e3a206e6577206368696c64206164647265737320697320746865207a65726f20616464726573,
                    mem[214 len 14]
    emit ChildChainChanged(childChainAddress, arg1);
    childChainAddress = arg1
}

function changeStateSyncerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require stor[sha3('matic.network.proxy.owner')] == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7453746174652073796e6365723a206e65772073746174652073796e636572206164647265737320697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit StateSyncerAddressChanged(stateSyncerAddress, arg1);
    stateSyncerAddress = arg1
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if childChainAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x294368696c6420746f6b656e3a2063616c6c6572206973206e6f7420746865206368696c6420636861696e20636f6e74726163,
                    mem[215 len 13]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor12[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor14[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    emit Deposit(arg2, tokenAddress, arg1);
}

function initialize(address arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor18:
        revert with 0, 'already inited'
    stor18 = 1
    require arg1
    tokenAddress = arg1
    name.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
}

function ecrecovery(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if mem[192 len 1] >= 27:
        if mem[192 len 1] != 27:
            if mem[192 len 1] != 28:
                mem[ceil32(arg2.length) + 128] = 0
                return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            if uint8(mem[192 len 1] + 27) != 28:
                mem[ceil32(arg2.length) + 128] = 0
                return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Error in ecrecover'
    return address(signer)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if stor8[arg1]:
        stor8[arg1] = 0
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    emit Transfer(msg.sender, 0, arg1);
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    if tokenOfOwnerByIndex[address(msg.sender)] - 1 != stor12[arg1]:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require stor12[arg1] < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][stor12[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        stor12[stor11[address(msg.sender)][stor11[address(msg.sender)]]] = stor12[arg1]
    tokenOfOwnerByIndex[address(msg.sender)]--
    if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
        while tokenOfOwnerByIndex[address(msg.sender)] > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor14[arg1] < tokenByIndex.length
    tokenByIndex[stor14[arg1]] = tokenByIndex[tokenByIndex.length]
    stor14[stor13[stor13.length]] = stor14[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor14[arg1] = 0
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    emit Withdraw(arg1, tokenAddress, msg.sender);
}

function onStateReceive(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stateSyncerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2953746174652073796e6365723a2063616c6c6572206973206e6f74207468652073746174652073796e63657220636f6e74726163,
                    mem[217 len 11]
    require arg2.length >= 64
    require ownerOf[cd[(arg2 + 68)]]
    require ownerOf[cd[(arg2 + 68)]] == address(cd[(arg2 + 36)])
    if stor8[cd[(arg2 + 68)]]:
        stor8[cd[(arg2 + 68)]] = 0
    require 1 <= balanceOf[address(cd[(arg2 + 36)])]
    balanceOf[address(cd[(arg2 + 36)])]--
    ownerOf[cd[(arg2 + 68)]] = 0
    emit Transfer(address(cd[(arg2 + 36)]), 0, cd[(arg2 + 68)]);
    require 1 <= tokenOfOwnerByIndex[address(cd[(arg2 + 36)])]
    if tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] - 1 != stor12[cd[(arg2 + 68)]]:
        require tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] - 1 < tokenOfOwnerByIndex[address(cd[(arg2 + 36)])]
        require stor12[cd[(arg2 + 68)]] < tokenOfOwnerByIndex[address(cd[(arg2 + 36)])]
        tokenOfOwnerByIndex[address(cd[(arg2 + 36)])][stor12[cd[(arg2 + 68)]]] = tokenOfOwnerByIndex[address(cd[(arg2 + 36)])][tokenOfOwnerByIndex[address(cd[(arg2 + 36)])]]
        stor12[stor11[address(cd[(arg2 + 36)])][stor11[address(cd[(arg2 + 36)])]]] = stor12[cd[(arg2 + 68)]]
    tokenOfOwnerByIndex[address(cd[(arg2 + 36)])]--
    if tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] > tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] - 1:
        idx = tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] - 1
        while tokenOfOwnerByIndex[address(cd[(arg2 + 36)])] > idx:
            tokenOfOwnerByIndex[address(cd[(arg2 + 36)])][idx] = 0
            idx = idx + 1
            continue 
    stor12[cd[(arg2 + 68)]] = 0
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor14[cd[(arg2 + 68)]] < tokenByIndex.length
    tokenByIndex[stor14[cd[(arg2 + 68)]]] = tokenByIndex[tokenByIndex.length]
    stor14[stor13[stor13.length]] = stor14[cd[(arg2 + 68)]]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor14[cd[(arg2 + 68)]] = 0
    if Mask(255, 1, uint256(tokenURI[cd[(arg2 + 68)]]) and (256 * not bool(tokenURI[cd[(arg2 + 68)]])) - 1):
        uint256(tokenURI[cd[(arg2 + 68)]]) = 0
        if 31 < tokenURI[cd[(arg2 + 68)]].length:
            idx = 0
            while tokenURI[cd[(arg2 + 68)]].length + 31 / 32 > idx:
                uint256(tokenURI[cd[(arg2 + 68)]][idx]) = 0
                idx = idx + 1
                continue 
    emit Withdraw(cd[(arg2 + 68)], tokenAddress, address(cd[(arg2 + 36)]));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not parentAddress:
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require arg2
        if stor8[arg3]:
            stor8[arg3] = 0
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        emit LogTransfer(arg3, tokenAddress, arg1, arg2);
    else:
        require ext_code.size(parentAddress)
        call parentAddress.beforeTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require arg2
            if stor8[arg3]:
                stor8[arg3] = 0
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
            stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            emit LogTransfer(arg3, tokenAddress, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not parentAddress:
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require arg2
        if stor8[arg3]:
            stor8[arg3] = 0
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        emit LogTransfer(arg3, tokenAddress, arg1, arg2);
    else:
        require ext_code.size(parentAddress)
        call parentAddress.beforeTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require arg2
            if stor8[arg3]:
                stor8[arg3] = 0
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
            stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            emit LogTransfer(arg3, tokenAddress, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not parentAddress:
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        require arg2
        if stor8[arg3]:
            stor8[arg3] = 0
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        require 1 <= tokenOfOwnerByIndex[address(arg1)]
        if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
        tokenOfOwnerByIndex[address(arg1)]--
        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
            idx = tokenOfOwnerByIndex[address(arg1)] - 1
            while tokenOfOwnerByIndex[address(arg1)] > idx:
                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
        stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        mem[ceil32(arg4.length) + 128] = arg3
        emit LogTransfer(address rg1, address rg2, address rg3, uint256 rg4):
                         Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                         mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                         tokenAddress,
                         arg1,
                         arg2,
    else:
        require ext_code.size(parentAddress)
        call parentAddress.beforeTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require arg2
            if stor8[arg3]:
                stor8[arg3] = 0
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            require 1 <= tokenOfOwnerByIndex[address(arg1)]
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor12[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor12[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor12[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor12[stor11[address(arg1)][stor11[address(arg1)]]] = stor12[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
            stor12[arg3] = tokenOfOwnerByIndex[address(arg2)]
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            emit LogTransfer(address rg1, address rg2, address rg3, uint256 rg4):
                             0,
                             Mask(224, 0, arg3),
                             tokenAddress,
                             arg1,
                             arg2,
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function transferWithSig(bytes arg1, uint256 arg2, bytes32 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg4:
        if block.number > arg4:
            revert with 0, 'Signature is expired'
    mem[911] = sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c61646472657373, 0x20766572696679696e67436f6e7472616374), 0xd26430275d0d30693378daeb558f6ed30c3a48ba5d665f52c16608e1c41b5cd7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, 15001, this.address)
    mem[943] = sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(msg.sender), arg2, arg3, arg4)
    if stor5[6401][sha3(('map', 6037213805175277072594057424411986001438687568199227826385712775643368702692075546600035883636950301787014534470845929461371027781885120439235885626913651, ('name', 'stor2076', 2827881315200186636958800910965268021338996)), 0xd26430275d0d30693378daeb558f6ed30c3a48ba5d665f52c16608e1c41b5cd7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, 15001, this.address)][sha3(('map', 6040313062091139270796178885598095224825286864995723246409425685729981826008633733043620623940777983238066349161590538007397810976630979655409373355275365, ('name', 'stor7333', 47390524512580927701404793637489807268651217448746606181388742510)), address(msg.sender), arg2, arg3, arg4)]:
        revert with 0, 'Sig deactivated'
    stor5[6401][sha3(('map', 6037213805175277072594057424411986001438687568199227826385712775643368702692075546600035883636950301787014534470845929461371027781885120439235885626913651, ('name', 'stor2076', 2827881315200186636958800910965268021338996)), 0xd26430275d0d30693378daeb558f6ed30c3a48ba5d665f52c16608e1c41b5cd7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, 15001, this.address)][sha3(('map', 6040313062091139270796178885598095224825286864995723246409425685729981826008633733043620623940777983238066349161590538007397810976630979655409373355275365, ('name', 'stor7333', 47390524512580927701404793637489807268651217448746606181388742510)), address(msg.sender), arg2, arg3, arg4)] = 1
    mem[941 len arg1.length] = arg1[all]
    mem[arg1.length + 941] = 0
    if arg1.length != 65:
        require ownerOf[arg2]
        require not ownerOf[arg2]
        require arg5
        if stor8[arg2]:
            stor8[arg2] = 0
        require 1 <= balanceOf[0]
        balanceOf[0]--
        balanceOf[address(arg5)]++
        ownerOf[arg2] = arg5
        emit Transfer(0, arg5, arg2);
        require 1 <= tokenOfOwnerByIndex[0]
        if tokenOfOwnerByIndex[0] - 1 != stor12[arg2]:
            require tokenOfOwnerByIndex[0] - 1 < tokenOfOwnerByIndex[0]
            require stor12[arg2] < tokenOfOwnerByIndex[0]
            tokenOfOwnerByIndex[0][stor12[arg2]] = tokenOfOwnerByIndex[0][tokenOfOwnerByIndex[0]]
            stor12[stor11[0][stor11[0]]] = stor12[arg2]
        tokenOfOwnerByIndex[0]--
        if tokenOfOwnerByIndex[0] > tokenOfOwnerByIndex[0] - 1:
            idx = tokenOfOwnerByIndex[0] - 1
            while tokenOfOwnerByIndex[0] > idx:
                tokenOfOwnerByIndex[0][idx] = 0
                idx = idx + 1
                continue 
        stor12[arg2] = tokenOfOwnerByIndex[address(arg5)]
        tokenOfOwnerByIndex[address(arg5)]++
        tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg2
        mem[ceil32(arg1.length) + 941] = arg2
        emit LogTransfer(address rg1, address rg2, address rg3, uint256 rg4):
                         Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                         mem[arg1.length + 973 len -arg1.length + ceil32(arg1.length)],
                         tokenAddress,
                         0,
                         arg5,
        if ext_code.size(arg5):
            require ext_code.size(arg5)
            call arg5.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '_checkOnERC721Received failed'
            else:
                return 0
        else:
            return 0
    if mem[1005 len 1] >= 27:
        if mem[1005 len 1] != 27:
            if mem[1005 len 1] != 28:
                require ownerOf[arg2]
                require not ownerOf[arg2]
                require arg5
                if stor8[arg2]:
                    stor8[arg2] = 0
                require 1 <= balanceOf[0]
                balanceOf[0]--
                balanceOf[address(arg5)]++
                ownerOf[arg2] = arg5
                emit Transfer(0, arg5, arg2);
                require 1 <= tokenOfOwnerByIndex[0]
                if tokenOfOwnerByIndex[0] - 1 != stor12[arg2]:
                    require tokenOfOwnerByIndex[0] - 1 < tokenOfOwnerByIndex[0]
                    require stor12[arg2] < tokenOfOwnerByIndex[0]
                    tokenOfOwnerByIndex[0][stor12[arg2]] = tokenOfOwnerByIndex[0][tokenOfOwnerByIndex[0]]
                    stor12[stor11[0][stor11[0]]] = stor12[arg2]
                tokenOfOwnerByIndex[0]--
                if tokenOfOwnerByIndex[0] > tokenOfOwnerByIndex[0] - 1:
                    idx = tokenOfOwnerByIndex[0] - 1
                    while tokenOfOwnerByIndex[0] > idx:
                        tokenOfOwnerByIndex[0][idx] = 0
                        idx = idx + 1
                        continue 
                stor12[arg2] = tokenOfOwnerByIndex[address(arg5)]
                tokenOfOwnerByIndex[address(arg5)]++
                tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg2
                mem[ceil32(arg1.length) + 941] = arg2
                emit LogTransfer(address rg1, address rg2, address rg3, uint256 rg4):
                                 Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                 mem[arg1.length + 973 len -arg1.length + ceil32(arg1.length)],
                                 tokenAddress,
                                 0,
                                 arg5,
                if ext_code.size(arg5):
                    require ext_code.size(arg5)
                    call arg5.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, '_checkOnERC721Received failed'
                    else:
                        return 0
                else:
                    return 0
        signer = erecover(sha3(6401, sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c61646472657373, 0x20766572696679696e67436f6e7472616374), 0xd26430275d0d30693378daeb558f6ed30c3a48ba5d665f52c16608e1c41b5cd7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, 15001, this.address), sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(msg.sender), arg2, arg3, arg4)), mem[975 len 31] << 248, mem[941 len 2], sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(msg.sender), arg2, arg3, arg4), mem[975 len 30]) 
    else:
        if uint8(mem[1005 len 1] + 27) != 27:
            if uint8(mem[1005 len 1] + 27) != 28:
                require ownerOf[arg2]
                require not ownerOf[arg2]
                require arg5
                if stor8[arg2]:
                    stor8[arg2] = 0
                require 1 <= balanceOf[0]
                balanceOf[0]--
                balanceOf[address(arg5)]++
                ownerOf[arg2] = arg5
                emit Transfer(0, arg5, arg2);
                require 1 <= tokenOfOwnerByIndex[0]
                if tokenOfOwnerByIndex[0] - 1 != stor12[arg2]:
                    require tokenOfOwnerByIndex[0] - 1 < tokenOfOwnerByIndex[0]
                    require stor12[arg2] < tokenOfOwnerByIndex[0]
                    tokenOfOwnerByIndex[0][stor12[arg2]] = tokenOfOwnerByIndex[0][tokenOfOwnerByIndex[0]]
                    stor12[stor11[0][stor11[0]]] = stor12[arg2]
                tokenOfOwnerByIndex[0]--
                if tokenOfOwnerByIndex[0] > tokenOfOwnerByIndex[0] - 1:
                    idx = tokenOfOwnerByIndex[0] - 1
                    while tokenOfOwnerByIndex[0] > idx:
                        tokenOfOwnerByIndex[0][idx] = 0
                        idx = idx + 1
                        continue 
                stor12[arg2] = tokenOfOwnerByIndex[address(arg5)]
                tokenOfOwnerByIndex[address(arg5)]++
                tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg2
                mem[ceil32(arg1.length) + 941] = arg2
                emit LogTransfer(address rg1, address rg2, address rg3, uint256 rg4):
                                 Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                 mem[arg1.length + 973 len -arg1.length + ceil32(arg1.length)],
                                 tokenAddress,
                                 0,
                                 arg5,
                if ext_code.size(arg5):
                    require ext_code.size(arg5)
                    call arg5.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, '_checkOnERC721Received failed'
                    else:
                        return 0
                else:
                    return 0
        signer = erecover(sha3(6401, sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c61646472657373, 0x20766572696679696e67436f6e7472616374), 0xd26430275d0d30693378daeb558f6ed30c3a48ba5d665f52c16608e1c41b5cd7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, 15001, this.address), sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(msg.sender), arg2, arg3, arg4)), mem[1005 len 1] + 27 << 248, mem[941 len 2], sha3(sha3(0x73546f6b656e5472616e736665724f726465722861646472657373207370656e6465722c75696e7432353620746f6b656e49644f72416d6f756e742c62797465, 0x73333220646174612c75696e743235362065787069726174696f6e), address(msg.sender), arg2, arg3, arg4), mem[975 len 30]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Error in ecrecover'
    require ownerOf[arg2]
    require ownerOf[arg2] == address(signer)
    require arg5
    if stor8[arg2]:
        stor8[arg2] = 0
    require 1 <= balanceOf[address(signer)]
    balanceOf[address(signer)]--
    balanceOf[address(arg5)]++
    ownerOf[arg2] = arg5
    emit Transfer(address(signer), arg5, arg2);
    require 1 <= tokenOfOwnerByIndex[address(signer)]
    if tokenOfOwnerByIndex[address(signer)] - 1 != stor12[arg2]:
        require tokenOfOwnerByIndex[address(signer)] - 1 < tokenOfOwnerByIndex[address(signer)]
        require stor12[arg2] < tokenOfOwnerByIndex[address(signer)]
        tokenOfOwnerByIndex[address(signer)][stor12[arg2]] = tokenOfOwnerByIndex[address(signer)][tokenOfOwnerByIndex[address(signer)]]
        stor12[stor11[address(signer)][stor11[address(signer)]]] = stor12[arg2]
    tokenOfOwnerByIndex[address(signer)]--
    if tokenOfOwnerByIndex[address(signer)] > tokenOfOwnerByIndex[address(signer)] - 1:
        idx = tokenOfOwnerByIndex[address(signer)] - 1
        while tokenOfOwnerByIndex[address(signer)] > idx:
            tokenOfOwnerByIndex[address(signer)][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg2] = tokenOfOwnerByIndex[address(arg5)]
    tokenOfOwnerByIndex[address(arg5)]++
    tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg2
    emit LogTransfer(arg2, tokenAddress, address(signer), arg5);
    if ext_code.size(arg5):
        require ext_code.size(arg5)
        call arg5.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(signer), arg2, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, '_checkOnERC721Received failed'
    return address(signer)
}



}
