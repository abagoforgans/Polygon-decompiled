contract main {




// =====================  Runtime code  =====================


array of uint256 versionSM;
mapping of struct stakeInfo;
mapping of uint256 authorizedHubs;

function stakes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeInfo[arg1].field_0, stakeInfo[arg1].field_256, stakeInfo[arg1].field_512, stakeInfo[arg1].field_768
}

function versionSM() {
    return versionSM[0 len versionSM.length]
}

function authorizedHubs(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return authorizedHubs[arg1][arg2]
}

function getStakeInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeInfo[address(arg1)].field_0, 
           stakeInfo[address(arg1)].field_256,
           stakeInfo[address(arg1)].field_512,
           stakeInfo[address(arg1)].field_768
}

function _fallback() payable {
    revert
}

function authorizeHubByManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stakeInfo[address(msg.sender)].field_768:
        revert with 0, 'not manager'
    authorizedHubs[address(msg.sender)][address(arg1)] = -1
    emit HubAuthorized(msg.sender, arg1);
}

function authorizeHubByOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stakeInfo[address(arg1)].field_768 != msg.sender:
        revert with 0, 'not owner'
    authorizedHubs[address(arg1)][address(arg2)] = -1
    emit HubAuthorized(arg1, arg2);
}

function unlockStake(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakeInfo[address(arg1)].field_768 != msg.sender:
        revert with 0, 'not owner'
    if stakeInfo[address(arg1)].field_512:
        revert with 0, 'already pending'
    if block.number + stakeInfo[address(arg1)].field_256 < block.number:
        revert with 0, 'SafeMath: addition overflow'
    stakeInfo[address(arg1)].field_512 = block.number + stakeInfo[address(arg1)].field_256
    emit StakeUnlocked(stakeInfo[address(arg1)].field_512, arg1, msg.sender);
}

function isRelayManagerStaked(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stakeInfo[address(arg1)].field_0 < arg3:
        return stakeInfo[address(arg1)].field_0 >= arg3
    if stakeInfo[address(arg1)].field_256 < arg4:
        return stakeInfo[address(arg1)].field_256 >= arg4
    if stakeInfo[address(arg1)].field_512:
        return not stakeInfo[address(arg1)].field_512
    return (authorizedHubs[address(arg1)][address(arg2)] == -1)
}

function unauthorizeHubByManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stakeInfo[address(msg.sender)].field_768:
        revert with 0, 'not manager'
    if authorizedHubs[address(msg.sender)][address(arg1)] != -1:
        revert with 0, 'hub not authorized'
    if block.number + stakeInfo[address(msg.sender)].field_256 < block.number:
        revert with 0, 'SafeMath: addition overflow'
    authorizedHubs[address(msg.sender)][address(arg1)] = block.number + stakeInfo[address(msg.sender)].field_256
    emit HubUnauthorized((block.number + stakeInfo[address(msg.sender)].field_256), msg.sender, arg1);
}

function unauthorizeHubByOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stakeInfo[address(arg1)].field_768 != msg.sender:
        revert with 0, 'not owner'
    if authorizedHubs[address(arg1)][address(arg2)] != -1:
        revert with 0, 'hub not authorized'
    if block.number + stakeInfo[address(arg1)].field_256 < block.number:
        revert with 0, 'SafeMath: addition overflow'
    authorizedHubs[address(arg1)][address(arg2)] = block.number + stakeInfo[address(arg1)].field_256
    emit HubUnauthorized((block.number + stakeInfo[address(arg1)].field_256), arg1, arg2);
}

function withdrawStake(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakeInfo[address(arg1)].field_768 != msg.sender:
        revert with 0, 'not owner'
    if stakeInfo[address(arg1)].field_512 <= 0:
        revert with 0, 'Withdrawal is not scheduled'
    if stakeInfo[address(arg1)].field_512 > block.number:
        revert with 0, 'Withdrawal is not due'
    stakeInfo[address(arg1)].field_0 = 0
    stakeInfo[address(arg1)].field_256 = 0
    stakeInfo[address(arg1)].field_512 = 0
    stakeInfo[address(arg1)].field_768 = 0
    call msg.sender with:
       value stakeInfo[address(arg1)].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StakeWithdrawn(stakeInfo[address(arg1)].field_0, arg1, msg.sender);
}

function stakeForAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stakeInfo[address(arg1)].field_768:
        if stakeInfo[address(arg1)].field_768 != msg.sender:
            revert with 0, 'not owner'
    if arg2 < stakeInfo[address(arg1)].field_256:
        revert with 0, 'unstakeDelay cannot be decreased'
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'relayManager cannot stake for itself'
    if stakeInfo[address(msg.sender)].field_768:
        revert with 0, 'sender is a relayManager itself'
    stakeInfo[address(arg1)].field_768 = msg.sender
    stakeInfo[address(arg1)].field_0 += msg.value
    stakeInfo[address(arg1)].field_256 = arg2
    emit StakeAdded(stakeInfo[address(arg1)].field_0, stakeInfo[address(arg1)].field_256, arg1, stakeInfo[address(arg1)].field_768);
}

function penalizeRelayManager(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not authorizedHubs[address(arg1)][address(msg.sender)]:
        revert with 0, 'hub not authorized'
    if authorizedHubs[address(arg1)][address(msg.sender)] <= block.number:
        revert with 0, 'hub authorization expired'
    if stakeInfo[address(arg1)].field_0 < arg3:
        revert with 0, 'penalty exceeds stake'
    if arg3 > stakeInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    stakeInfo[address(arg1)].field_0 -= arg3
    if arg3 / 2 > arg3:
        revert with 0, 'SafeMath: subtraction overflow', 0
    call 0x0 with:
       value arg3 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg3 - (arg3 / 2) wei
         gas 2300 * is_zero(value) wei
    emit StakePenalized((arg3 - (arg3 / 2)), arg1, arg2);
}



}
