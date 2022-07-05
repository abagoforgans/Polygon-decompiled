contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3277]




// =====================  Runtime code  =====================


uint256 count;
array of address sub_b1a867d5;
array of struct sub_82ed13d1;

function count() {
    return count
}

function sub_82ed13d1(?) {
    require arg2 < uint256(sub_82ed13d1[arg1].field_0)
    mem[288] = uint256(stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1)].field_0)
    idx = 288
    s = 0
    while stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + 288] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4].length
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + 320] = uint256(stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4)].field_0)
    idx = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + 320
    s = 0
    while stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_82ed13d1[arg1][arg2].field_0), 
           Array(len=stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length, data=mem[288 len stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4].length + 32 % 32) + 32]),
           uint256(sub_82ed13d1[arg1][arg2].field_512),
           bool(uint8(sub_82ed13d1[arg1][arg2].field_768)),
           stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + (floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length - 1) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1].length + 32 % 32) + 192
}

function sub_b1a867d5(?) {
    require arg1 < sub_b1a867d5.length
    return sub_b1a867d5[arg1]
}

function _fallback() payable {
    revert
}

function Update(uint256 arg1, uint256 arg2, string arg3) {
    require arg2 < uint256(sub_82ed13d1[arg1].field_0)
    require msg.sender == address(sub_82ed13d1[arg1][arg2].field_0)
    require arg2 < uint256(sub_82ed13d1[arg1].field_0)
    require uint8(sub_82ed13d1[arg1][arg2].field_768)
    require arg2 < uint256(sub_82ed13d1[arg1].field_0)
    uint256(stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4)][].field_0) = Array(len=arg3.length, data=arg3[all])
    require arg2 < uint256(sub_82ed13d1[arg1].field_0)
    uint256(sub_82ed13d1[arg1][arg2].field_512) = block.timestamp
    emit EVENT(arg1, arg2);
}

function NewShare(string arg1, bool arg2, string arg3) {
    uint256(sub_82ed13d1[stor0].field_0)++
    if not uint256(sub_82ed13d1[stor0].field_0) <= uint256(sub_82ed13d1[stor0].field_0) + 1:
        mem[0] = sha3(count, 2)
        idx = (5 * uint256(sub_82ed13d1[stor0].field_0)) + 5
        while sha3(sha3(count, 2)) + (5 * uint256(sub_82ed13d1[stor0].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 5
            continue 
    address(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_0) = msg.sender
    uint256(stor[sha3((5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_512) = block.timestamp
    uint8(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_768) = uint8(arg2)
    uint256(stor[sha3((5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 4)][].field_0) = Array(len=arg3.length, data=arg3[all])
    emit EVENT(count, 0);
    count++
}

function ReplyShare(uint256 arg1, string arg2, bool arg3, string arg4) {
    require arg1 < count
    uint256(sub_82ed13d1[arg1].field_0)++
    if not uint256(sub_82ed13d1[arg1].field_0) <= uint256(sub_82ed13d1[arg1].field_0) + 1:
        mem[0] = sha3(arg1, 2)
        idx = (5 * uint256(sub_82ed13d1[arg1].field_0)) + 5
        while sha3(sha3(arg1, 2)) + (5 * uint256(sub_82ed13d1[arg1].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 5
            continue 
    address(sub_82ed13d1[arg1][uint256(sub_82ed13d1[arg1].field_0)].field_0) = msg.sender
    uint256(stor[sha3((5 * uint256(sub_82ed13d1[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(sub_82ed13d1[arg1][uint256(sub_82ed13d1[arg1].field_0)].field_512) = block.timestamp
    uint8(sub_82ed13d1[arg1][uint256(sub_82ed13d1[arg1].field_0)].field_768) = uint8(arg3)
    uint256(stor[sha3((5 * uint256(sub_82ed13d1[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'sub_82ed13d1', 2)) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
    emit EVENT(arg1, uint256(sub_82ed13d1[arg1].field_0) - 1);
}

function sub_ed722cb7(?) {
    uint256(sub_82ed13d1[stor0].field_0)++
    if not uint256(sub_82ed13d1[stor0].field_0) <= uint256(sub_82ed13d1[stor0].field_0) + 1:
        mem[0] = sha3(count, 2)
        idx = (5 * uint256(sub_82ed13d1[stor0].field_0)) + 5
        while sha3(sha3(count, 2)) + (5 * uint256(sub_82ed13d1[stor0].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 5
            continue 
    address(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_0) = msg.sender
    bool(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_256) = 0
    uint255(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_257) = 12
    Mask(248, 0, sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_264) = 'Swirge Elite' / 256
    idx = 0
    while stor[(5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_512) = block.timestamp
    uint8(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_768) = 0
    bool(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_1024) = 0
    uint255(sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_1025) = 18
    Mask(248, 0, sub_82ed13d1[stor0][uint256(sub_82ed13d1[stor0].field_0)].field_1032) = 'Hello, MaticShare!' / 256
    idx = 0
    while stor[(5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 4].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((5 * uint256(sub_82ed13d1[stor0].field_0)) + ('map', ('stor', ('name', 'stor0', 0)), ('name', 'sub_82ed13d1', 2)) + 4)].field_0) = 0
        idx = idx + 1
        continue 
    emit EVENT(count, 0);
    count++
}



}
