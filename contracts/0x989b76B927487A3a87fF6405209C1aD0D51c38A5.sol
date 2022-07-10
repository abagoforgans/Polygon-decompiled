contract main {




// =====================  Runtime code  =====================


address owner;
address pepemonFactoryAddress;
address stor2;
uint32 stor3;
address fundAddress;
uint256 totalPPDEXSpend;
mapping of uint256 cardCosts;

function PepemonFactory() payable {
    return pepemonFactoryAddress
}

function owner() payable {
    return owner
}

function totalPPDEXSpend() payable {
    return totalPPDEXSpend
}

function cardCosts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return cardCosts[arg1]
}

function fundAddress() payable {
    return address(fundAddress)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFundAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(fundAddress) = arg1
}

function addCard(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    cardCosts[arg1] = arg2
    emit CardAdded(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not cardCosts[arg1]:
        revert with 0, 'Card not found'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cardCosts[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4e6f7420656e6f75676820706f696e747320746f2072656465656d20666f7220636172,
                    mem[200 len 28]
    require ext_code.size(pepemonFactoryAddress)
    staticcall pepemonFactoryAddress.maxSupply(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pepemonFactoryAddress)
    staticcall pepemonFactoryAddress.totalSupply(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'Max cards minted'
    if not cardCosts[arg1]:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor2):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, 0
        mem[352 len 4] = 0
        call stor2.0xdead with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            0,
                            mem[356 len 4]
            if not cardCosts[arg1]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[360 len 96] = unknown_0x23b872dd(?????), msg.sender, address(fundAddress), 0
                mem[484 len 4] = 0
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(fundAddress), 0) << 512, mem[456 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[470 len 14],
                                    0,
                                    mem[488 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[524]
                else:
                    mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[392]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 471 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
            else:
                if cardCosts[arg1] / cardCosts[arg1] != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[329 len 23], 0, mem[356 len 4]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[360 len 96] = unknown_0x23b872dd(?????), msg.sender, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32
                mem[484 len 4] = Mask(32, 64, cardCosts[arg1] / 10) >> 64
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, cardCosts[arg1] / 10) << 480, mem[456 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[470 len 14],
                                    Mask(32, 64, cardCosts[arg1] / 10) >> 64,
                                    mem[488 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[524]
                else:
                    mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[392]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 471 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if not cardCosts[arg1]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 361 len 96] = unknown_0x23b872dd(?????), msg.sender, address(fundAddress), 0
                mem[ceil32(return_data.size) + 485 len 4] = 0
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(fundAddress), 0) << 512, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 471 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 489 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
                else:
                    mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 393]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 472 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[(2 * ceil32(return_data.size)) + 526]
            else:
                if cardCosts[arg1] / cardCosts[arg1] != 1:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 361 len 96] = unknown_0x23b872dd(?????), msg.sender, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32
                mem[ceil32(return_data.size) + 485 len 4] = Mask(32, 64, cardCosts[arg1] / 10) >> 64
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, cardCosts[arg1] / 10) << 480, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 471 len 14],
                                    Mask(32, 64, cardCosts[arg1] / 10) >> 64,
                                    mem[ceil32(return_data.size) + 489 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
                else:
                    mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 393]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 472 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[(2 * ceil32(return_data.size)) + 526]
    else:
        if 9 * cardCosts[arg1] / cardCosts[arg1] != 9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor2):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, 9 * cardCosts[arg1] / 10) >> 32
        mem[352 len 4] = Mask(32, 64, 9 * cardCosts[arg1] / 10) >> 64
        call stor2.0xdead with:
             gas gas_remaining wei
            args Mask(224, 32, 9 * cardCosts[arg1] / 10) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            Mask(32, 64, 9 * cardCosts[arg1] / 10) >> 64,
                            mem[356 len 4]
            if not cardCosts[arg1]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[360 len 96] = 0, msg.sender, address(fundAddress), 0
                mem[484 len 4] = 0
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, 0, msg.sender, address(fundAddress), 0 >> 224, mem[456 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[470 len 14],
                                    0,
                                    mem[488 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[524]
                else:
                    mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[392]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 471 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
            else:
                if cardCosts[arg1] / cardCosts[arg1] != 1:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[329 len 23],
                                Mask(32, 64, 9 * cardCosts[arg1] / 10) >> 64,
                                mem[356 len 4]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[360 len 96] = 0, msg.sender, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32
                mem[484 len 4] = Mask(32, 64, cardCosts[arg1] / 10) >> 64
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args cardCosts[arg1] / 10, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32 >> 224, mem[456 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[470 len 14],
                                    Mask(32, 64, cardCosts[arg1] / 10) >> 64,
                                    mem[488 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[524]
                else:
                    mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[392]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 471 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if not cardCosts[arg1]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(fundAddress), 0
                mem[ceil32(return_data.size) + 485 len 4] = 0
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, 0, msg.sender, address(fundAddress), 0 >> 224, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 471 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 489 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
                else:
                    mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 393]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 472 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[(2 * ceil32(return_data.size)) + 526]
            else:
                if cardCosts[arg1] / cardCosts[arg1] != 1:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(stor2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32
                mem[ceil32(return_data.size) + 485 len 4] = Mask(32, 64, cardCosts[arg1] / 10) >> 64
                call stor2 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args cardCosts[arg1] / 10, address(fundAddress), Mask(224, 32, cardCosts[arg1] / 10) >> 32 >> 224, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 471 len 14],
                                    Mask(32, 64, cardCosts[arg1] / 10) >> 64,
                                    mem[ceil32(return_data.size) + 489 len 4]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[ceil32(return_data.size) + 525]
                else:
                    mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 393]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 472 len 22]
                    if cardCosts[arg1] + totalPPDEXSpend < totalPPDEXSpend:
                        revert with 0, 'SafeMath: addition overflow'
                    totalPPDEXSpend += cardCosts[arg1]
                    require ext_code.size(pepemonFactoryAddress)
                    call pepemonFactoryAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 1, 128, 0, mem[(2 * ceil32(return_data.size)) + 526]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redeemed(cardCosts[arg1], msg.sender);
}



}
