contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct sub_8dc83771;
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

function sub_8dc83771(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_8dc83771[arg1][1].field_0
    idx = 128
    s = 0
    while sub_8dc83771[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_8dc83771[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_8dc83771[arg1].field_0, Array(len=sub_8dc83771[arg1][1].length, data=mem[128 len sub_8dc83771[arg1][1].length])
}

function _fallback() payable {
    revert
}

function setManager() payable {
    uint256(stor3.field_0) = msg.sender or Mask(96, 160, uint256(stor3.field_0))
}

function checkState() payable {
    require uint8(stor3.field_160) <= 2
    if not uint8(stor3.field_160):
        return ''
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) == 1:
        return 'ONGOING'
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 2:
        return ' '
    return ''
}

function endElection() payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e6f6e6c7920746865206f776e6572206861732061636365737320746f20746869732066756e6374696f,
                    mem[206 len 22]
    uint8(stor3.field_160) = 2
    emit 0xfd6091d4: 2
}

function startElection() payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e6f6e6c7920746865206f776e6572206861732061636365737320746f20746869732066756e6374696f,
                    mem[206 len 22]
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160):
        revert with 0, 'election is yet to be created'
    uint8(stor3.field_160) = 1
    require uint8(stor3.field_160) <= 2
    emit 0xa1b6ba52: uint8(stor3.field_160)
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) != 2:
        revert with 0, 'election is not yet completed'
    if arg1 <= 0:
        revert with 0, 'invalid candidate'
    if arg1 > sub_4b1c4c29:
        revert with 0, 'invalid candidate'
    mem[128] = sub_8dc83771[arg1][1].field_0
    idx = 128
    s = 0
    while sub_8dc83771[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_8dc83771[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, Array(len=sub_8dc83771[arg1][1].length, data=mem[128 len sub_8dc83771[arg1][1].length]), stor2[arg1]
}

function addVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e6f6e6c7920746865206f776e6572206861732061636365737320746f20746869732066756e6374696f,
                    mem[206 len 22]
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

function delegateVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160) == 2:
        revert with 0, 'election is not yet completed'
    if stor0[msg.sender].field_0:
        revert with 0, 'voter has already voted'
    if not stor0[msg.sender].field_256:
        revert with 0, 'voter has already voted'
    if msg.sender == adminAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe6f776e6572206973206e6f7420616c6c6f77656420746f2061636365737320746869732066756e6374696f,
                    mem[208 len 20]
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
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(sub_8dc83771[idx][1].length) + 32
        mem[_22] = sub_8dc83771[idx][1].length
        mem[0] = sha3(idx, 1) + 1
        mem[_22 + 32] = sub_8dc83771[idx][1].field_0
        t = _22 + 32
        u = sha3(mem[0])
        while _22 + sub_8dc83771[t][1].length > t:
            mem[t + 32] = sub_8dc83771[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[0] = _22 + floor32(sub_8dc83771[t][1].length - 1) + 32
        mem[32] = 2
        t = _22 + floor32(sub_8dc83771[t][1].length - 1) + 33
        u = _22
        t = stor2[_22 + floor32(stor1[t][1].length - 1) + 32]
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s]
    _20 = mem[s]
    mem[mem[64] + 64 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
    if not _20 % 32:
        return 32, mem[mem[64] + 32 len _20 + 32]
    mem[floor32(_20) + mem[64] + 64] = mem[floor32(_20) + mem[64] + -(_20 % 32) + 96 len _20 % 32]
    return memory
      from mem[64]
       len floor32(_20) + _18 + -mem[64] + 96
}

function addCandidate(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    42,
                    0x6e6f6e6c7920746865206f776e6572206861732061636365737320746f20746869732066756e6374696f,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 270 len 22]
    require uint8(stor3.field_160) <= 2
    if uint8(stor3.field_160):
        revert with 0, 'election is yet to be created'
    sub_4b1c4c29++
    sub_8dc83771[stor4 + 1].field_0 = sub_4b1c4c29 + 1
    sub_8dc83771[stor4 + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_8dc83771[stor4][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[0] = sub_4b1c4c29
    mem[32] = 2
    stor2[stor4] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sub_4b1c4c29
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit 0xfc34c935: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 160]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 352 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit 0xfc34c935: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 192]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = floor32(arg1.length) + 160
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit 0xfc34c935: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 192]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit 0xfc34c935: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 224]
}



}
