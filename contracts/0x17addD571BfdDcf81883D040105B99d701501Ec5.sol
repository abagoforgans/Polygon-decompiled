contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - withdrawAll(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address sub_8ec17d39Address;
address burnAddress;
uint256 ownerAUTOReward;
uint256 aUTOMaxSupply;
uint256 aUTOPerBlock;
uint256 startBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;

function ownerAUTOReward() payable {
    return ownerAUTOReward
}

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function burnAddress() payable {
    return burnAddress
}

function owner() payable {
    return owner
}

function sub_8ec17d39(?) payable {
    return sub_8ec17d39Address
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function AUTOMaxSupply() payable {
    return aUTOMaxSupply
}

function AUTOPerBlock() payable {
    return aUTOPerBlock
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8ec17d39Address)
    staticcall sub_8ec17d39Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_8ec17d39Address:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, arg2
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][address(msg.sender)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require userInfo[arg1][address(msg.sender)].field_0
        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            require ext_code.size(sub_8ec17d39Address)
            staticcall sub_8ec17d39Address.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < aUTOMaxSupply:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number - poolInfo[arg1].field_512 > 0:
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_8ec17d39Address)
                            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_8ec17d39Address)
                            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_8ec17d39Address)
                        call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_8ec17d39Address)
                                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_8ec17d39Address)
                                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_8ec17d39Address)
                            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock)
                            if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_8ec17d39Address)
                                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                            else:
                                require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != ownerAUTOReward:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_8ec17d39Address)
                                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint * ownerAUTOReward / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_8ec17d39Address)
                            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
}

function pendingAUTO(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(sub_8ec17d39Address)
    staticcall sub_8ec17d39Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock)
    if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.sharesTotal() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        require ext_code.size(sub_8ec17d39Address)
        staticcall sub_8ec17d39Address.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= aUTOMaxSupply:
            idx = idx + 1
            continue 
        _247 = mem[64]
        mem[64] = mem[64] + 64
        mem[_247] = 30
        mem[_247 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_248 + idx + 68] = mem[_247 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 68] = mem[_248 + 70 len 30]
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.number - poolInfo[idx].field_512:
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_261 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_261 + 68] = mem[_261 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _261 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_285] = 26
                mem[_285 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 26
                    mem[_344 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_353 + idx + 68] = mem[_344 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_353 + 68] = mem[_353 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _353 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_352] = 26
                mem[_352 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _370 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_370 + idx + 68] = mem[_352 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_370 + 68] = mem[_370 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _370 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = 26
            mem[_289 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_367 + idx + 68] = mem[_351 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_367 + 68] = mem[_367 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _367 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _366 = mem[64]
            mem[64] = mem[64] + 64
            mem[_366] = 26
            mem[_366 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _391 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_391 + idx + 68] = mem[_366 + idx + 32]
                idx = idx + 32
                continue 
            mem[_391 + 68] = mem[_391 + 74 len 26]
            revert with memory
              from mem[64]
               len _391 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
            _260 = mem[64]
            mem[64] = mem[64] + 64
            mem[_260] = 26
            mem[_260 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_265 + idx + 68] = mem[_260 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_265 + 68] = mem[_265 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _265 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_288] = 26
                mem[_288 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_350] = 26
                    mem[_350 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_363 + idx + 68] = mem[_350 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_363 + 68] = mem[_363 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _363 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 26
                mem[_362 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _387 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_387 + idx + 68] = mem[_362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_387 + 68] = mem[_387 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _387 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _293 = mem[64]
            mem[64] = mem[64] + 64
            mem[_293] = 26
            mem[_293 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_384 + idx + 68] = mem[_361 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_384 + 68] = mem[_384 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _384 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _383 = mem[64]
            mem[64] = mem[64] + 64
            mem[_383] = 26
            mem[_383 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _413 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_413 + idx + 68] = mem[_383 + idx + 32]
                idx = idx + 32
                continue 
            mem[_413 + 68] = mem[_413 + 74 len 26]
            revert with memory
              from mem[64]
               len _413 + -mem[64] + 100
        require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _264 = mem[64]
        mem[64] = mem[64] + 64
        mem[_264] = 26
        mem[_264 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _271 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_271 + idx + 68] = mem[_264 + idx + 32]
                idx = idx + 32
                continue 
            mem[_271 + 68] = mem[_271 + 74 len 26]
            revert with memory
              from mem[64]
               len _271 + -mem[64] + 100
        require totalAllocPoint
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _292 = mem[64]
            mem[64] = mem[64] + 64
            mem[_292] = 26
            mem[_292 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 26
                mem[_360 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _380 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_380 + idx + 68] = mem[_360 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_380 + 68] = mem[_380 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _380 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _379 = mem[64]
            mem[64] = mem[64] + 64
            mem[_379] = 26
            mem[_379 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _409 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_409 + idx + 68] = mem[_379 + idx + 32]
                idx = idx + 32
                continue 
            mem[_409 + 68] = mem[_409 + 74 len 26]
            revert with memory
              from mem[64]
               len _409 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _296 = mem[64]
        mem[64] = mem[64] + 64
        mem[_296] = 26
        mem[_296 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_8ec17d39Address)
        call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_8ec17d39Address)
        call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _378 = mem[64]
            mem[64] = mem[64] + 64
            mem[_378] = 26
            mem[_378 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _406 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_406 + idx + 68] = mem[_378 + idx + 32]
                idx = idx + 32
                continue 
            mem[_406 + 68] = mem[_406 + 74 len 26]
            revert with memory
              from mem[64]
               len _406 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _405 = mem[64]
        mem[64] = mem[64] + 64
        mem[_405] = 26
        mem[_405 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _436 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_436 + idx + 68] = mem[_405 + idx + 32]
            idx = idx + 32
            continue 
        mem[_436 + 68] = mem[_436 + 74 len 26]
        revert with memory
          from mem[64]
           len _436 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            require ext_code.size(sub_8ec17d39Address)
            staticcall sub_8ec17d39Address.totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                idx = idx + 1
                continue 
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = 30
            mem[_289 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_290 + idx + 68] = mem[_289 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_290 + 68] = mem[_290 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _290 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_299] = 26
                mem[_299 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_303 + idx + 68] = mem[_299 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 68] = mem[_303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_327] = 26
                    mem[_327 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_386] = 26
                        mem[_386 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_395 + idx + 68] = mem[_386 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_395 + 68] = mem[_395 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _395 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_394] = 26
                    mem[_394 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_412 + idx + 68] = mem[_394 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_412 + 68] = mem[_412 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _412 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_331] = 26
                mem[_331 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _409 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_409 + idx + 68] = mem[_393 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_409 + 68] = mem[_409 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _409 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_408] = 26
                mem[_408 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_433 + idx + 68] = mem[_408 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_433 + 68] = mem[_433 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _433 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_302] = 26
                mem[_302 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_307 + idx + 68] = mem[_302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_307 + 68] = mem[_307 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _307 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_330] = 26
                    mem[_330 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_392] = 26
                        mem[_392 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _405 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_405 + idx + 68] = mem[_392 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_405 + 68] = mem[_405 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _405 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _404 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_404] = 26
                    mem[_404 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_429 + idx + 68] = mem[_404 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_429 + 68] = mem[_429 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _429 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 26
                mem[_335 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_403] = 26
                    mem[_403 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_426 + idx + 68] = mem[_403 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_426 + 68] = mem[_426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _426 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _425 = mem[64]
                mem[64] = mem[64] + 64
                mem[_425] = 26
                mem[_425 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _455 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_455 + idx + 68] = mem[_425 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_455 + 68] = mem[_455 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _455 + -mem[64] + 100
            require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_313 + idx + 68] = mem[_306 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 68] = mem[_313 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_334] = 26
                mem[_334 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_402] = 26
                    mem[_402 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _422 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_422 + idx + 68] = mem[_402 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_422 + 68] = mem[_422 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _422 + -mem[64] + 100
                require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _421 = mem[64]
                mem[64] = mem[64] + 64
                mem[_421] = 26
                mem[_421 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _451 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_451 + idx + 68] = mem[_421 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_451 + 68] = mem[_451 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _451 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _338 = mem[64]
            mem[64] = mem[64] + 64
            mem[_338] = 26
            mem[_338 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 26
                mem[_420 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_448 + idx + 68] = mem[_420 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_448 + 68] = mem[_448 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _448 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _447 = mem[64]
            mem[64] = mem[64] + 64
            mem[_447] = 26
            mem[_447 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _478 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_478 + idx + 68] = mem[_447 + idx + 32]
                idx = idx + 32
                continue 
            mem[_478 + 68] = mem[_478 + 74 len 26]
            revert with memory
              from mem[64]
               len _478 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            require ext_code.size(sub_8ec17d39Address)
            staticcall sub_8ec17d39Address.totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                idx = idx + 1
                continue 
            _303 = mem[64]
            mem[64] = mem[64] + 64
            mem[_303] = 30
            mem[_303 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_304 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_304 + 68] = mem[_304 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _304 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_313] = 26
                mem[_313 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _317 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_317 + idx + 68] = mem[_313 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_317 + 68] = mem[_317 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _317 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _341 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_341] = 26
                    mem[_341 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _400 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_400] = 26
                        mem[_400 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _409 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_409 + idx + 68] = mem[_400 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_409 + 68] = mem[_409 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _409 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_408] = 26
                    mem[_408 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_426 + idx + 68] = mem[_408 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_426 + 68] = mem[_426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _426 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_345] = 26
                mem[_345 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_407] = 26
                    mem[_407 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_423 + idx + 68] = mem[_407 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_423 + 68] = mem[_423 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _423 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_422] = 26
                mem[_422 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _447 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_447 + idx + 68] = mem[_422 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_447 + 68] = mem[_447 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _447 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_316] = 26
                mem[_316 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_321 + idx + 68] = mem[_316 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_321 + 68] = mem[_321 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _321 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 26
                    mem[_344 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_8ec17d39Address)
                    call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _406 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_406] = 26
                        mem[_406 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_419 + idx + 68] = mem[_406 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_419 + 68] = mem[_419 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _419 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_418] = 26
                    mem[_418 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _443 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_443 + idx + 68] = mem[_418 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_443 + 68] = mem[_443 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _443 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_349] = 26
                mem[_349 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_417] = 26
                    mem[_417 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _440 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_440 + idx + 68] = mem[_417 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_440 + 68] = mem[_440 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _440 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439] = 26
                mem[_439 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _469 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_469 + idx + 68] = mem[_439 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_469 + 68] = mem[_469 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _469 + -mem[64] + 100
            require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _327 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_327 + idx + 68] = mem[_320 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_327 + 68] = mem[_327 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _327 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_348] = 26
                mem[_348 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_8ec17d39Address)
                call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _416 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_416] = 26
                    mem[_416 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _436 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_436 + idx + 68] = mem[_416 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_436 + 68] = mem[_436 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _436 + -mem[64] + 100
                require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _435 = mem[64]
                mem[64] = mem[64] + 64
                mem[_435] = 26
                mem[_435 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _465 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_465 + idx + 68] = mem[_435 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_465 + 68] = mem[_465 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _465 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 26
            mem[_352 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args owner, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_8ec17d39Address)
            call sub_8ec17d39Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _434 = mem[64]
                mem[64] = mem[64] + 64
                mem[_434] = 26
                mem[_434 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_462 + idx + 68] = mem[_434 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_462 + 68] = mem[_462 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _462 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_461] = 26
            mem[_461 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _492 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_492 + idx + 68] = mem[_461 + idx + 32]
                idx = idx + 32
                continue 
            mem[_492 + 68] = mem[_492 + 74 len 26]
            revert with memory
              from mem[64]
               len _492 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg4
}



}
