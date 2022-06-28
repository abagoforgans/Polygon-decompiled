contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - sub_8dc51e6b(?)
#
address owner;
mapping of uint8 stor1;
uint256 chainID;
mapping of uint256 nonce;
address underlyingTokenAddress;
uint32 stor6;
address walletAddress;
address sub_1c6603baAddress;

function sub_1c6603ba(?) {
    return sub_1c6603baAddress
}

function underlyingToken() {
    return underlyingTokenAddress
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function wallet() {
    return address(walletAddress)
}

function getChainID() {
    return chainID
}

function owner() {
    return owner
}

function isModerator(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    if msg.sender != this.address:
        return (msg.sender == owner)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    return (mem[calldata.size + 108 len 20] == owner)
}

function renounceOwnership() {
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeWallet(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid address'
    address(walletAddress) = arg1
    emit WalletChanged(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x294f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[202 len 26]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'wOwnable: caller is not the owne'
        if not arg1:
            revert with 0, 
                        32,
                        38,
                        0x294f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 234 len 26]
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceModerator() {
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[198 len 30]
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                        mem[197 len 31]
        stor1[address(msg.sender)] = 0
        emit ModeratorRemoved(msg.sender);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
        if not stor1[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        33,
                        0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                        mem[ceil32(calldata.size) + 229 len 31]
        stor1[address(mem[calldata.size + 96])] = 0
        emit ModeratorRemoved(mem[calldata.size + 108 len 20]);
}

function addModerator(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[198 len 30]
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x724d6f64657261746f72526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d6f64657261746f7220726f6c,
                        mem[218 len 10]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[198 len 30]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
        if not stor1[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        54,
                        0x724d6f64657261746f72526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d6f64657261746f7220726f6c,
                        mem[ceil32(calldata.size) + 250 len 10]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
    ('bool', ('param', 'arg1'))
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit ModeratorAdded(arg1);
}

function withdrawTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transfer(address arg1, uint256 arg2), address(arg2) << 64:
                revert with 0, 32, 42, 0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'wOwnable: caller is not the owne'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(calldata.size) + 228 len 64] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(calldata.size) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if calldata.size:
                require calldata.size >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + 338 len 22]
        else:
            mem[ceil32(calldata.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(calldata.size) + 260]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + ceil32(return_data.size) + 339 len 22]
    emit TokenWithdraw(ext_call.return_data[0], arg1, arg2);
}

function sub_79177aa0(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(underlyingTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(walletAddress), Mask(224, 32, arg1) >> 32
        mem[352 len 4] = uint32(arg1)
        call underlyingTokenAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg1),
                            mem[356 len 4]
            if msg.sender != this.address:
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[228] = calldata.size
                mem[260 len calldata.size] = call.data[0 len calldata.size]
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), mem[calldata.size + 240 len 20]);
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if msg.sender != this.address:
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(return_data.size) + 229] = calldata.size
                mem[ceil32(return_data.size) + 261 len calldata.size] = call.data[0 len calldata.size]
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), mem[calldata.size + ceil32(return_data.size) + 241 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(underlyingTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(calldata.size) + 260 len 96] = 0, mem[calldata.size + 108 len 20], address(walletAddress), Mask(224, 32, arg1) >> 32
        mem[ceil32(calldata.size) + 384 len 4] = uint32(arg1)
        call underlyingTokenAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[ceil32(calldata.size) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if calldata.size:
                require calldata.size >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + 370 len 14],
                                uint32(arg1),
                                mem[ceil32(calldata.size) + 388 len 4]
            if msg.sender != this.address:
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(calldata.size) + 260] = calldata.size
                mem[ceil32(calldata.size) + 292 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 324] = 64
                mem[(2 * ceil32(calldata.size)) + 356] = arg2.length
                mem[(2 * ceil32(calldata.size)) + 388 len arg2.length] = arg2[all]
                mem[arg2.length + (2 * ceil32(calldata.size)) + 388] = 0
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), mem[calldata.size + ceil32(calldata.size) + 272 len 20]);
        else:
            mem[ceil32(calldata.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(calldata.size) + 292]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + ceil32(return_data.size) + 371 len 22]
            if msg.sender != this.address:
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(calldata.size) + ceil32(return_data.size) + 261] = calldata.size
                mem[ceil32(calldata.size) + ceil32(return_data.size) + 293 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 325] = 64
                mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 357] = arg2.length
                mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 389 len arg2.length] = arg2[all]
                mem[arg2.length + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 389] = 0
                emit TokenTransfer(arg1, Array(len=arg2.length, data=arg2[all]), mem[calldata.size + ceil32(calldata.size) + ceil32(return_data.size) + 273 len 20]);
}

function depositTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        if msg.sender != this.address:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[352 len 4] = uint32(arg1)
            call underlyingTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                uint32(arg1),
                                mem[356 len 4]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + 128] = 0
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(calldata.size) + 260 len 96] = 0, mem[calldata.size + 108 len 20], address(this.address), Mask(224, 32, arg1) >> 32
            mem[ceil32(calldata.size) + 384 len 4] = uint32(arg1)
            call underlyingTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[ceil32(calldata.size) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if calldata.size:
                    require calldata.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(calldata.size) + 370 len 14],
                                    uint32(arg1),
                                    mem[ceil32(calldata.size) + 388 len 4]
            else:
                mem[ceil32(calldata.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(calldata.size) + 292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(calldata.size) + ceil32(return_data.size) + 371 len 22]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if mem[calldata.size + 108 len 20] != owner:
            revert with 0, 'wOwnable: caller is not the owne'
        if msg.sender != this.address:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(calldata.size) + 260 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[ceil32(calldata.size) + 384 len 4] = uint32(arg1)
            call underlyingTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[ceil32(calldata.size) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if calldata.size:
                    require calldata.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(calldata.size) + 370 len 14],
                                    uint32(arg1),
                                    mem[ceil32(calldata.size) + 388 len 4]
            else:
                mem[ceil32(calldata.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(calldata.size) + 292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(calldata.size) + ceil32(return_data.size) + 371 len 22]
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 196] = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(underlyingTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(2 * ceil32(calldata.size)) + 292 len 96] = 0, mem[calldata.size + ceil32(calldata.size) + 140 len 20], address(this.address), Mask(224, 32, arg1) >> 32
            mem[(2 * ceil32(calldata.size)) + 416 len 4] = uint32(arg1)
            call underlyingTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[(2 * ceil32(calldata.size)) + 388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if calldata.size:
                    require calldata.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(calldata.size)) + 402 len 14],
                                    uint32(arg1),
                                    mem[(2 * ceil32(calldata.size)) + 420 len 4]
            else:
                mem[(2 * ceil32(calldata.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(calldata.size)) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 403 len 22]
    emit TokensDeposit(arg1);
}



}
