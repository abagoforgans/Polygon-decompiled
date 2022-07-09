contract main {




// =====================  Runtime code  =====================


#
#  - relayCall(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, bytes arg7, uint256 arg8, uint256 arg9, uint256 arg10, address arg11, address arg12, bytes arg13, uint256 arg14, address arg15, bytes arg16, bytes arg17, uint256 arg18)
#  - innerRelayCall(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6, uint256 arg7, uint256 arg8, uint256 arg9, address arg10, address arg11, bytes arg12, uint256 arg13, address arg14, bytes arg15, bytes arg16, uint256 arg17, uint256 arg18, uint256 arg19, uint256 arg20, uint256 arg21)
#
array of uint256 versionHub;
uint256 minimumStake;
uint256 minimumUnstakeDelay;
uint256 maximumRecipientDeposit;
uint256 gasOverhead;
uint256 postOverhead;
uint256 gasReserve;
uint256 maxWorkerCount;
address stakeManagerAddress;
address penalizerAddress;
mapping of uint32 workerToManager;
mapping of uint256 workerCount;
mapping of uint256 balanceOf;

function workerCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return workerCount[arg1]
}

function maximumRecipientDeposit() {
    return maximumRecipientDeposit
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function minimumUnstakeDelay() {
    return minimumUnstakeDelay
}

function stakeManager() {
    return stakeManagerAddress
}

function gasOverhead() {
    return gasOverhead
}

function postOverhead() {
    return postOverhead
}

function penalizer() {
    return penalizerAddress
}

function workerToManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(workerToManager[arg1])
}

function versionHub() {
    return versionHub[0 len versionHub.length]
}

function maxWorkerCount() {
    return maxWorkerCount
}

function minimumStake() {
    return minimumStake
}

function gasReserve() {
    return gasReserve
}

function _fallback() payable {
    revert
}

function depositFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value > maximumRecipientDeposit:
        revert with 0, 'deposit too big'
    if balanceOf[address(arg1)] + msg.value < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += msg.value
    emit Deposited(msg.value, arg1, msg.sender);
}

function isRelayManagerStaked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakeManagerAddress)
    staticcall stakeManagerAddress.0x6de8dd41 with:
            gas gas_remaining wei
           args 0, 0, address(this.address), minimumStake, minimumUnstakeDelay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'insufficient funds'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(msg.sender)] -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg1, msg.sender, arg2);
}

function registerRelayServer(uint256 arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(stakeManagerAddress)
    staticcall stakeManagerAddress.0x6de8dd41 with:
            gas gas_remaining wei
           args 0, uint32(msg.sender), address(this.address), minimumStake, minimumUnstakeDelay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'relay manager not staked'
    if workerCount[address(msg.sender)] <= 0:
        revert with 0, 'no relay workers'
    emit RelayServerRegistered(arg1, arg2, Array(len=arg3.length, data=arg3[all]), msg.sender);
}

function calculateCharge(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, bytes arg7, uint256 arg8, address arg9) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 256
    if cd[(arg2 + 36)] + 100 < cd[(arg2 + 36)]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if cd[(arg2 + 68)] < cd[(arg2 + 68)]:
            revert with 0, 'SafeMath: addition overflow'
        return cd[(arg2 + 68)]
    require arg1
    if arg1 * arg2.length / arg1 != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1 * arg2.length:
        if cd[(arg2 + 68)] < cd[(arg2 + 68)]:
            revert with 0, 'SafeMath: addition overflow'
        return cd[(arg2 + 68)]
    require arg1 * arg2.length
    if (100 * arg1 * arg2.length) + (cd[(arg2 + 36)] * arg1 * arg2.length) / arg1 * arg2.length != cd[(arg2 + 36)] + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if cd[(arg2 + 68)] + ((100 * arg1 * arg2.length) + (cd[(arg2 + 36)] * arg1 * arg2.length) / 100) < cd[(arg2 + 68)]:
        revert with 0, 'SafeMath: addition overflow'
    return (cd[(arg2 + 68)] + ((100 * arg1 * arg2.length) + (cd[(arg2 + 36)] * arg1 * arg2.length) / 100))
}

function penalize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if penalizerAddress != msg.sender:
        revert with 0, 'Not penalizer'
    if not address(workerToManager[address(arg1)]):
        revert with 0, 'Unknown relay worker'
    require ext_code.size(stakeManagerAddress)
    staticcall stakeManagerAddress.0x6de8dd41 with:
            gas gas_remaining wei
           args 0, uint32(workerToManager[address(arg1)]), address(this.address), minimumStake, minimumUnstakeDelay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'relay manager not staked'
    require ext_code.size(stakeManagerAddress)
    staticcall stakeManagerAddress.0xc3453153 with:
            gas gas_remaining wei
           args address(workerToManager[address(arg1)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((2 * ceil32(return_data.size)) + 352 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_code.size(stakeManagerAddress)
    call stakeManagerAddress.penalizeRelayManager(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(workerToManager[address(arg1)]), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addRelayWorkers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    workerCount[address(msg.sender)] += arg1.length
    if workerCount[address(msg.sender)] > maxWorkerCount:
        revert with 0, 'too many workers'
    mem[164] = minimumStake
    mem[196] = minimumUnstakeDelay
    require ext_code.size(stakeManagerAddress)
    staticcall stakeManagerAddress.0x6de8dd41 with:
            gas gas_remaining wei
           args 0, uint32(msg.sender), address(this.address), minimumStake, minimumUnstakeDelay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'relay manager not staked'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(workerToManager[address(cd[((32 * idx) + arg1 + 36)])]):
            revert with 0, 'this worker has a manager'
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        address(workerToManager[address(cd[((32 * idx) + arg1 + 36)])]) = msg.sender
        idx = idx + 1
        continue 
    idx = 0
    s = arg1 + 36
    t = ceil32(return_data.size) + 192
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit RelayWorkersAdded(Array(len=arg1.length, data=mem[ceil32(return_data.size) + 192 len 32 * arg1.length]), workerCount[address(msg.sender)], msg.sender);
}



}
