contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_4a372ad9;
uint256 sub_0c933acc;
uint16 sub_de05de98;
uint256 sub_68fe092f;
uint256 sub_ee0ea6ba;
uint256 rewardAmount;
address rewardTokenAddress;
mapping of struct tokenGrants;
address callerAddress;

function sub_0c933acc(?) payable {
    return sub_0c933acc
}

function getTokenGrant(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenGrants[address(arg1)].field_0, 
           tokenGrants[address(arg1)].field_256,
           tokenGrants[address(arg1)].field_512,
           tokenGrants[address(arg1)].field_512,
           tokenGrants[address(arg1)].field_768
}

function sub_4a372ad9(?) payable {
    return sub_4a372ad9
}

function sub_68fe092f(?) payable {
    return sub_68fe092f
}

function owner() payable {
    return owner
}

function claimedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenGrants[address(arg1)].field_768
}

function tokenGrants(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenGrants[arg1].field_0, 
           tokenGrants[arg1].field_256,
           tokenGrants[arg1].field_512,
           tokenGrants[arg1].field_512,
           tokenGrants[arg1].field_768
}

function sub_de05de98(?) payable {
    return sub_de05de98
}

function sub_ee0ea6ba(?) payable {
    return sub_ee0ea6ba
}

function rewardAmount() payable {
    return rewardAmount
}

function rewardToken() payable {
    return rewardTokenAddress
}

function caller() payable {
    return callerAddress
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

function tokensVestedPerDay(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 18
    return (tokenGrants[address(arg1)].field_256 / tokenGrants[address(arg1)].field_512)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rescue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setRewardParameters(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint16 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting: startBlock less than endBlock'
    if arg4 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting: eligibleEndBlock less than eligibleStartBlock'
    if arg5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting: duration must be > 0'
    if arg5 > 9125:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting: duration more than 25 years'
    sub_4a372ad9 = arg1
    sub_0c933acc = arg2
    sub_68fe092f = arg3
    sub_ee0ea6ba = arg4
    sub_de05de98 = arg5
    rewardAmount = arg6
    emit RewardParametersChanged(arg1, arg2, arg3, arg4, arg5, arg6);
}

function vestedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < tokenGrants[address(arg1)].field_0:
        return 0
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 < tokenGrants[address(arg1)].field_528:
        return 0
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 >= tokenGrants[address(arg1)].field_512:
        return tokenGrants[address(arg1)].field_256
    if tokenGrants[address(arg1)].field_512 and 24 * 3600 > -1 / tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 17
    if not 24 * 3600 * tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 18
    if tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512 and block.timestamp - tokenGrants[address(arg1)].field_0 > -1 / tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512))
}

function calculateGrantClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < tokenGrants[address(arg1)].field_0:
        return 0
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 < tokenGrants[address(arg1)].field_528:
        return 0
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 >= tokenGrants[address(arg1)].field_512:
        if tokenGrants[address(arg1)].field_256 < tokenGrants[address(arg1)].field_768:
            revert with 'NH{q', 17
        return (tokenGrants[address(arg1)].field_256 - tokenGrants[address(arg1)].field_768)
    if tokenGrants[address(arg1)].field_512 and 24 * 3600 > -1 / tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 17
    if not 24 * 3600 * tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 18
    if tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512 and block.timestamp - tokenGrants[address(arg1)].field_0 > -1 / tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512:
        revert with 'NH{q', 17
    if (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) < tokenGrants[address(arg1)].field_768:
        revert with 'NH{q', 17
    return ((block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - tokenGrants[address(arg1)].field_768)
}

function addTokenGrant(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, uint16 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        if callerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: not owner or caller'
    if arg5 > 3650:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting::addTokenGrant: cliff more than 10 years'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: duration must be > 0'
    if arg4 > 9125:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting::addTokenGrant: duration more than 25 years'
    if arg4 < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: duration < cliff'
    if tokenGrants[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting::addTokenGrant: grant already exists for account'
    if not arg4:
        revert with 'NH{q', 18
    if arg3 / arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting::addTokenGrant: amountVestedPerDay > 0'
    if not arg2:
        tokenGrants[address(arg1)].field_0 = block.timestamp
        tokenGrants[address(arg1)].field_256 = arg3
        tokenGrants[address(arg1)].field_512 = arg4
        tokenGrants[address(arg1)].field_528 = arg5
        tokenGrants[address(arg1)].field_768 = 0
        emit GrantAdded(block.timestamp, arg4 << 240, arg5, arg1, arg3);
    else:
        tokenGrants[address(arg1)].field_0 = arg2
        tokenGrants[address(arg1)].field_256 = arg3
        tokenGrants[address(arg1)].field_512 = arg4
        tokenGrants[address(arg1)].field_528 = arg5
        tokenGrants[address(arg1)].field_768 = 0
        emit GrantAdded(arg2, arg4 << 240, arg5, arg1, arg3);
}

function onMint(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if callerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::onMint: not caller'
    if arg1 == arg2:
        if block.number >= sub_4a372ad9:
            if block.number <= sub_0c933acc:
                if arg4 >= sub_68fe092f:
                    if arg4 <= sub_ee0ea6ba:
                        if not tokenGrants[address(arg2)].field_256:
                            if owner != msg.sender:
                                if callerAddress != msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: not owner or caller'
                            if sub_de05de98 <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: duration must be > 0'
                            if sub_de05de98 > 9125:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'RewardVesting::addTokenGrant: duration more than 25 years'
                            if sub_de05de98 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::addTokenGrant: duration < cliff'
                            if tokenGrants[address(arg2)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'RewardVesting::addTokenGrant: grant already exists for account'
                            if not sub_de05de98:
                                revert with 'NH{q', 18
                            if rewardAmount / sub_de05de98 <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'RewardVesting::addTokenGrant: amountVestedPerDay > 0'
                            tokenGrants[address(arg2)].field_0 = block.timestamp
                            tokenGrants[address(arg2)].field_256 = rewardAmount
                            tokenGrants[address(arg2)].field_512 = sub_de05de98
                            tokenGrants[address(arg2)].field_528 = 0
                            tokenGrants[address(arg2)].field_768 = 0
                            tokenGrants[address(arg2)].field_768 = 0
                            emit GrantAdded(block.timestamp, sub_de05de98, 0, arg2, rewardAmount);
}

function claimVestedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < tokenGrants[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::claimVested: amountVested is 0'
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 < tokenGrants[address(arg1)].field_528:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::claimVested: amountVested is 0'
    if block.timestamp - tokenGrants[address(arg1)].field_0 / 24 * 3600 >= tokenGrants[address(arg1)].field_512:
        if tokenGrants[address(arg1)].field_256 < tokenGrants[address(arg1)].field_768:
            revert with 'NH{q', 17
        if tokenGrants[address(arg1)].field_256 - tokenGrants[address(arg1)].field_768 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::claimVested: amountVested is 0'
        if tokenGrants[address(arg1)].field_768 > !(tokenGrants[address(arg1)].field_256 - tokenGrants[address(arg1)].field_768):
            revert with 'NH{q', 17
        tokenGrants[address(arg1)].field_768 = tokenGrants[address(arg1)].field_256
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), tokenGrants[address(arg1)].field_256 - tokenGrants[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'RewardVesting::claimVested: transfer failed'
        emit GrantTokensClaimed(arg1, tokenGrants[address(arg1)].field_256 - tokenGrants[address(arg1)].field_768);
    else:
        if tokenGrants[address(arg1)].field_512 and 24 * 3600 > -1 / tokenGrants[address(arg1)].field_512:
            revert with 'NH{q', 17
        if not 24 * 3600 * tokenGrants[address(arg1)].field_512:
            revert with 'NH{q', 18
        if tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512 and block.timestamp - tokenGrants[address(arg1)].field_0 > -1 / tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512:
            revert with 'NH{q', 17
        if (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) < tokenGrants[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - tokenGrants[address(arg1)].field_768 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting::claimVested: amountVested is 0'
        if tokenGrants[address(arg1)].field_768 > !((block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - tokenGrants[address(arg1)].field_768):
            revert with 'NH{q', 17
        tokenGrants[address(arg1)].field_768 = (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512)
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - tokenGrants[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'RewardVesting::claimVested: transfer failed'
        emit GrantTokensClaimed(arg1, (block.timestamp * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - (tokenGrants[address(arg1)].field_0 * tokenGrants[address(arg1)].field_256 / 24 * 3600 * tokenGrants[address(arg1)].field_512) - tokenGrants[address(arg1)].field_768);
}



}
