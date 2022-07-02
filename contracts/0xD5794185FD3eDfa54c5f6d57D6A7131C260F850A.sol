contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c4ceac7(?)
#
mapping of uint8 stor0;
uint256 sub_758b4598;
address sub_9ebd94f1Address;
mapping of address sub_25993a8b;
mapping of uint256 sub_5f1d26c8;

function sub_25993a8b(?) payable {
    require calldata.size - 4 >= 32
    return sub_25993a8b[arg1]
}

function sub_5f1d26c8(?) payable {
    require calldata.size - 4 >= 32
    return sub_5f1d26c8[arg1]
}

function sub_758b4598(?) payable {
    return sub_758b4598
}

function sub_9ebd94f1(?) payable {
    return sub_9ebd94f1Address
}

function sub_b750bdde(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function sub_2a142b0b(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Should not be an existing source'
    stor0[address(arg1)] = 1
    sub_758b4598++
}

function sub_94b1d2d2(?) payable {
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if 1 == sub_758b4598:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6543616e6e6f742072656e6f756e636520736f7572636520696620746865206e756d626572206f6620736f7572636573206973206f6e6c79206f6e,
                    mem[223 len 5]
    stor0[msg.sender] = 0
    sub_758b4598--
}

function removeAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53686f756c642062652061206e6f6e2d7a65726f207374616b696e67206164647265737320686173,
                    mem[205 len 23]
    sub_25993a8b[arg1] = 0
    sub_5f1d26c8[stor3[arg1]] = 0
}

function sub_b348e639(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53686f756c642062652061206e6f6e2d7a65726f207374616b696e67206164647265737320686173,
                    mem[205 len 23]
    if not arg2:
        revert with 0, 'Should be a non-zero address'
    if sub_5f1d26c8[address(arg2)]:
        revert with 0, 'Cannot change existing address'
    if sub_25993a8b[arg1]:
        revert with 0, 'Cannot change existing address'
    sub_25993a8b[arg1] = arg2
    sub_5f1d26c8[address(arg2)] = arg1
    emit AddressRegistered(arg1, arg2);
}

function sub_2d642431(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not stor0[msg.sender]:
        revert with 0, 
                    32,
                    34,
                    0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
    if not arg1.length:
        revert with 0, 'Array length should be non-zero'
    if arg1.length != arg2.length:
        revert with 0, 'Arity mismatch'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not stor0[msg.sender]:
            revert with 0, 
                        32,
                        34,
                        0x684f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
        if not mem[(32 * idx) + 128]:
            revert with 0, 
                        32,
                        41,
                        0xfe53686f756c642062652061206e6f6e2d7a65726f207374616b696e67206164647265737320686173,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
        if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 'Should be a non-zero address'
        if sub_5f1d26c8[address(mem[(32 * idx) + (32 * arg1.length) + 160])]:
            revert with 0, 'Cannot change existing address'
        if sub_25993a8b[mem[(32 * idx) + 128]]:
            revert with 0, 'Cannot change existing address'
        sub_25993a8b[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 4
        sub_5f1d26c8[address(mem[(32 * idx) + (32 * arg1.length) + 160])] = mem[(32 * idx) + 128]
        emit AddressRegistered(mem[(32 * idx) + 128], mem[(32 * idx) + (32 * arg1.length) + 172 len 20]);
        idx = idx + 1
        continue 
}



}
