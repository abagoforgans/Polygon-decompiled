contract main {




// =====================  Runtime code  =====================


const isMinionManager = 1


address masterContractAddress;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct minionGroups;
mapping of uint8 stor4;

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function isWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function minionGroups(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < minionGroups[arg1].field_0
    return minionGroups[arg1][arg2].field_0
}

function masterContract() payable {
    return masterContractAddress
}

function minions(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function isMinion(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function minionGroupIds(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function isWorkerOrMinion(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        return bool(stor1[address(arg1)])
    return bool(stor2[address(arg1)])
}

function assignWorker(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if masterContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe73656e646572206d75737420626520746865206d617374657220636f6e74726163,
                    mem[198 len 30]
    if arg2 != bool(stor1[address(arg1)]):
        stor1[address(arg1)] = uint8(arg2)
    return arg2 != bool(stor1[address(arg1)])
}

function removeMinionGroup(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if masterContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe73656e646572206d75737420626520746865206d617374657220636f6e74726163,
                    mem[198 len 30]
    if bool(stor4[arg1]) != 1:
        revert with 0, 'groupId must exist'
    idx = 0
    while idx < minionGroups[arg1].field_0:
        mem[0] = minionGroups[arg1][idx].field_0
        mem[32] = 2
        stor2[stor3[arg1][idx].field_0] = 1
        idx = idx + 1
        continue 
    minionGroups[arg1].field_0 = 0
    idx = 0
    while minionGroups[arg1].field_0 > idx:
        minionGroups[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1] = 0
}

function getMinionGroup(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not minionGroups[arg1].field_0:
        mem[(32 * minionGroups[arg1].field_0) + 128] = 32
        mem[(32 * minionGroups[arg1].field_0) + 160] = minionGroups[arg1].field_0
        mem[(32 * minionGroups[arg1].field_0) + 192 len floor32(minionGroups[arg1].field_0)] = mem[128 len floor32(minionGroups[arg1].field_0)]
        return memory
          from (32 * minionGroups[arg1].field_0) + 128
           len (96 * minionGroups[arg1].field_0) + 64
    mem[128] = minionGroups[arg1].field_0
    idx = 128
    s = 0
    while (32 * minionGroups[arg1].field_0) + 96 > idx:
        mem[idx + 32] = minionGroups[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * minionGroups[arg1].field_0) + 192 len floor32(minionGroups[arg1].field_0)] = mem[128 len floor32(minionGroups[arg1].field_0)]
    return Array(len=minionGroups[arg1].field_0, data=mem[128 len floor32(minionGroups[arg1].field_0)], mem[(32 * minionGroups[arg1].field_0) + floor32(minionGroups[arg1].field_0) + 192 len (32 * minionGroups[arg1].field_0) - floor32(minionGroups[arg1].field_0)]), 
}

function addMinionGroup(bytes32 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if masterContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe73656e646572206d75737420626520746865206d617374657220636f6e74726163,
                    mem[198 len 30]
    if stor4[arg1]:
        revert with 0, 'groupId can't be recorded'
    if not arg2.length:
        revert with 0, 'must be at least one minion'
    stor4[arg1] = 1
    minionGroups[arg1].field_0 = arg2.length
    s = 0
    idx = arg2 + 36
    while arg2 + (32 * arg2.length) + 36 > idx:
        minionGroups[arg1][s].field_0 = address(cd[idx])
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
    while minionGroups[arg1].field_0 > idx:
        minionGroups[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        if stor2[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'minion must not exist'
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg2 + 36)])] = 1
        idx = idx + 1
        continue 
}



}
