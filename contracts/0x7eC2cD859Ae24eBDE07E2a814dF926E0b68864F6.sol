contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
mapping of uint256 stor2;
uint8 stor3; offset 160
address adminAddress;
uint256 stor3;
uint256 sub_4b1c4c29;

function sub_4b1c4c29(?) payable {
    return sub_4b1c4c29
}

function getAdmin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setManager() payable {
    uint256(stor3.field_0) = msg.sender or Mask(96, 160, uint256(stor3.field_0))
}

function endElection() payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the owner has access to this function'
    uint8(stor3.field_160) = 2
    emit 0xfd6091d4: 2
}

function checkState() payable {
    require uint8(stor3.field_160) <= 2
    if not uint8(stor3.field_160):
        return '', 0
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) == 1:
        return 'ONGOING', 0
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 2:
        return ' '
    return '', 0
}

function startElection() payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the owner has access to this function'
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160):
        revert with 0, 'election is yet to be created'
    uint8(stor3.field_160) = 1
    emit 0xa1b6ba52: 1
}

function addVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the owner has access to this function'
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160):
        revert with 0, 'election is yet to be created'
    if stor0[address(arg1)].field_0:
        revert with 0, 'voter is already registered'
    if stor0[address(arg1)].field_256:
        revert with 0, 'voter is already registered'
    stor0[address(arg1)].field_256 = 1
    emit 0x973f11f3: arg1
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 1:
        revert with 0, 'election is not in ongoing phase'
    if stor0[msg.sender].field_0:
        revert with 0, 'voter has already voted'
    if not stor0[msg.sender].field_256:
        revert with 0, 'voter has already voted'
    if arg1 <= 0:
        revert with 0, 'invalid candidate'
    if arg1 > sub_4b1c4c29:
        revert with 0, 'invalid candidate'
    stor0[msg.sender].field_0 = 1
    stor0[msg.sender].field_512 = arg1
    stor2[arg1] += stor0[msg.sender].field_256
    emit 0xb998094a: arg1
}

function sub_79614b2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 2:
        revert with 0, 'election is not yet completed'
    if arg1 <= 0:
        revert with 0, 'invalid candidate'
    if arg1 > sub_4b1c4c29:
        revert with 0, 'invalid candidate'
    mem[128] = stor1[arg1][1].field_0
    idx = 128
    s = 0
    while stor1[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, Array(len=stor1[arg1][1].length, data=mem[128 len ceil32(stor1[arg1][1].length)]), stor2[arg1]
}

function delegateVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) == 2:
        revert with 0, 'election is not yet completed'
    if stor0[msg.sender].field_0:
        revert with 0, 'voter has already voted'
    if not stor0[msg.sender].field_256:
        revert with 0, 'voter has already voted'
    if msg.sender == adminAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'owner is not allowed to access this function'
    if msg.sender == arg1:
        revert with 0, 'self delegation is not allowed'
    s = arg1
    while stor0[address(arg1)].field_8:
        require stor0[address(s)].field_8 != msg.sender
        mem[0] = stor0[address(s)].field_8
        mem[32] = 0
        s = stor0[address(s)].field_8
        continue 
    stor0[msg.sender].field_8 = address(s)
    emit 0x1d8bb384: arg1
    stor0[msg.sender].field_0 = 1
    if not stor0[address(s)].field_0:
        stor0[address(s)].field_256 += stor0[msg.sender].field_256
    else:
        stor2[stor0[address(s)].field_512] += stor0[msg.sender].field_256
}

function showWinner() payable {
    mem[64] = 96
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 2:
        revert with 0, 'election is not yet completed'
    idx = 1
    s = 96
    t = 0
    while idx <= sub_4b1c4c29:
        mem[0] = idx
        mem[32] = 2
        if t >= stor2[idx]:
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = idx
        mem[32] = 1
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx][1].length) + 32
        mem[_18] = stor1[idx][1].length
        mem[0] = sha3(idx, 1) + 1
        mem[_18 + 32] = stor1[idx][1].field_0
        t = _18 + 32
        u = sha3(mem[0])
        while _18 + stor1[t][1].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[0] = _18 + floor32(stor1[t][1].length - 1) + 32
        mem[32] = 2
        t = _18 + floor32(stor1[t][1].length - 1) + 33
        u = _18
        t = stor2[_18 + floor32(stor1[t][1].length - 1) + 32]
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_21)] = mem[s + 32 len ceil32(_21)]
    if ceil32(_21) <= _21:
        return 32, mem[mem[64] + 32 len ceil32(_21) + 32]
    mem[mem[64] + _21 + 64] = 0
    return memory
      from mem[64]
       len _16 + ceil32(_21) + -mem[64] + 64
}

function sub_8dc83771(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[320] = stor1[arg1][1].field_0
    idx = 320
    s = 0
    while stor1[arg1][1].length + 288 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][1].length) + 352] = stor1[arg1][2].field_0
    idx = ceil32(stor1[arg1][1].length) + 352
    s = 0
    while ceil32(stor1[arg1][1].length) + stor1[arg1][2].length + 320 > idx:
        mem[idx + 32] = stor1[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor1[arg1][1].length) <= stor1[arg1][1].length:
        mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 512] = stor1[arg1][2].length
        mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 544 len ceil32(stor1[arg1][2].length)] = mem[ceil32(stor1[arg1][1].length) + 352 len ceil32(stor1[arg1][2].length)]
        if ceil32(stor1[arg1][2].length) > stor1[arg1][2].length:
            mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + stor1[arg1][2].length + 544] = 0
        return 32, stor1[arg1].field_0, 
               96,
               ceil32(stor1[arg1][1].length) + 128,
               stor1[arg1][1].length,
               mem[320 len ceil32(stor1[arg1][1].length)],
               stor1[arg1][2].length,
               mem[ceil32(stor1[arg1][1].length) + 352 len ceil32(stor1[arg1][2].length)]
    mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + stor1[arg1][1].length + 512] = 0
    mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 512] = stor1[arg1][2].length
    mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + 544 len ceil32(stor1[arg1][2].length)] = mem[ceil32(stor1[arg1][1].length) + 352 len ceil32(stor1[arg1][2].length)]
    if ceil32(stor1[arg1][2].length) > stor1[arg1][2].length:
        mem[(2 * ceil32(stor1[arg1][1].length)) + ceil32(stor1[arg1][2].length) + stor1[arg1][2].length + 544] = 0
    return 32, stor1[arg1].field_0, 
           96,
           ceil32(stor1[arg1][1].length) + 128,
           stor1[arg1][1].length,
           mem[320 len stor1[arg1][1].length],
           0,
           mem[ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) + stor1[arg1][1].length + 544 len ceil32(stor1[arg1][1].length) + ceil32(stor1[arg1][2].length) - stor1[arg1][1].length]
}

function addCandidate(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 'only the owner has access to this function'
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160):
        revert with 0, 'election is yet to be created'
    sub_4b1c4c29++
    stor1[stor4 + 1].field_0 = sub_4b1c4c29 + 1
    stor1[stor4 + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1[stor4][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[stor4] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sub_4b1c4c29
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ceil32(arg1.length) + 128
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 320] = 0
    emit 0xfc34c935: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(arg1.length) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160]
}



}
