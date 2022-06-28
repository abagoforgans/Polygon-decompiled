contract main {




// =====================  Runtime code  =====================


const sub_e707144f(?) = 'VoV'

const getContractName = 'ValueOfValues'


mapping of uint8 stor0;
mapping of address stor1;
mapping of uint16 sub_979c4360;
mapping of uint16 sub_4569c7d7;
array of struct sub_8f24dc42;
mapping of struct stor13;
mapping of address ownerOf;
mapping of uint32 balanceOf;
mapping of uint8 stor16;
uint8 stor17;
uint16 sub_ba723c22; offset 8
mapping of address approved;
mapping of uint8 stor4;
address adminAddress;
address sub_03b58e56Address;
mapping of uint8 stor7;
uint16 sub_492ec79f;
array of struct stor9;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function sub_03b58e56(?) payable {
    return sub_03b58e56Address
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return uint32(sub_8f24dc42.length)
}

function sub_3db5eb3f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor13[arg1].field_0
    return sub_3db5eb3f[uint8(arg2)]
}

function sub_4569c7d7(?) payable {
    require calldata.size - 4 >= 32
    return sub_4569c7d7[arg1]
}

function sub_492ec79f(?) payable {
    return sub_492ec79f
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    return ownerOf[arg1 << 224]
}

function getAdmin() payable {
    return adminAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[198 len 30]
    return balanceOf[address(arg1)]
}

function sub_8f24dc42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8f24dc42.length
    return sub_8f24dc42[2 * uint32(arg1)].field_0, sub_8f24dc42[2 * uint32(arg1)].field_256
}

function sub_979c4360(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor13[arg1].field_0
    return sub_979c4360[stor13[arg1][uint16(arg2) / 8].field_(32 * arg2 % 8) - 224]
}

function sub_ba723c22(?) payable {
    return sub_ba723c22
}

function sub_c1550ea0(?) payable {
    return uint8(stor9.length)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isBroker(address arg1) payable {
    require calldata.size - 4 >= 32
    return (bool(stor16[address(arg1)]) == 1)
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    return (bool(stor7[address(arg1)]) == 1)
}

function sub_0e30bc78(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while uint8(idx) < stor9.length:
        mem[0] = 9
        if arg1 != stor9[uint8(idx)].field_0:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a039caa6(?) payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    stor17 = 0
}

function sub_0d6aef04(?) payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    adminAddress = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'New admin cannot be NULL'
    adminAddress = arg1
}

function sub_800caf93(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'New Buffer can not be NULL'
    sub_03b58e56Address = arg1
}

function removeBroker(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if bool(stor16[address(arg1)]) == 1 != 1:
        revert with 0, 'the broker does not exist'
    stor16[address(arg1)] = 0
    sub_ba723c22 = uint16(sub_ba723c22 - 1)
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if bool(stor7[address(arg1)]) == 1 != 1:
        revert with 0, 'The operator does not exist'
    stor7[address(arg1)] = 0
    sub_492ec79f = uint16(sub_492ec79f - 1)
}

function sub_2ecd5971(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'New broker can not be NULL'
    if bool(stor16[address(arg1)]) == 1:
        revert with 0, 'The broker already exists'
    stor16[address(arg1)] = 1
    sub_ba723c22 = uint16(sub_ba723c22 + 1)
}

function sub_8e01df5e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor13[arg1].field_0
    if not ownerOf[stor13[arg1][uint16(arg2) / 8].field_(32 * arg2 % 8) - 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[stor13[arg1][uint16(arg2) / 8].field_(32 * arg2 % 8) - 224] != msg.sender:
        revert with 0, 'Burn of token that is not owned'
    balanceOf[address(msg.sender)] = uint32(balanceOf[address(msg.sender)] - 1)
    ownerOf[stor13[arg1][uint16(arg2) / 8].field_(32 * arg2 % 8) - 224] = 0
    emit Transfer(msg.sender, 0, sub_3db5eb3f[uint8(arg2)]);
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'New Operator can not be NULL'
    if bool(stor7[address(arg1)]) == 1:
        revert with 0, 'The operator already exists'
    stor7[address(arg1)] = 1
    sub_492ec79f = uint16(sub_492ec79f + 1)
}

function getValues() payable {
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = uint256(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return Array(len=stor9.length, data=mem[128 len floor32(stor9.length)], mem[(32 * stor9.length) + floor32(stor9.length) + 192 len (32 * stor9.length) - floor32(stor9.length)]), 
}

function sub_586e86a4(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    idx = 0
    while uint8(idx) < stor9.length:
        mem[0] = 9
        if arg1 == stor9[uint8(idx)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x72746865206e616d6520616c72656164792065786973747320696e2074686520766f7673206e616d65206c6973,
                        mem[209 len 19]
        idx = idx + 1
        continue 
    stor9.length++
    stor9[stor9.length].field_0 = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if arg1 == ownerOf[arg2 << 224]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2 << 224] != msg.sender:
        if not stor4[stor14[arg2 << 224]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2 << 224], arg1, arg2);
}

function sub_13965fc4(?) payable {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79207468652061646d696e2063616e2063616c6c2074686973206d6f6469666965,
                    mem[201 len 27]
    sub_8f24dc42.length++
    sub_8f24dc42[sub_8f24dc42.length].field_0 = arg2
    sub_8f24dc42[sub_8f24dc42.length].field_256 = arg3
    sub_8f24dc42[sub_8f24dc42.length].field_272 = uint32(block.timestamp)
    if uint32(sub_8f24dc42.length) != arg1:
        revert with 0, 'vov id mismatch'
    stor13[arg2].field_0++
    stor13[arg2][stor13[arg2].field_3].field_0 = uint32(sub_8f24dc42.length) * 256^(4 * stor13[arg2].field_0) or !(test266151307() * 256^(4 * stor13[arg2].field_0)) and stor13[arg2][stor13[arg2].field_3].field_0
    ownerOf[uint32(stor12.length)] = arg4
    balanceOf[address(arg4)] = uint32(balanceOf[address(arg4)] + 1)
    sub_4569c7d7[arg2] = uint16(sub_4569c7d7[arg2] + 1)
    sub_979c4360[uint32(stor12.length)] = arg5
    emit 0x6fa39c26: arg4, arg2, arg3
}

function sub_b8c84bf5(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < stor13[arg2].field_0
    if not ownerOf[stor13[arg2][uint16(arg3) / 8].field_(32 * arg3 % 8) - 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[stor13[arg2][uint16(arg3) / 8].field_(32 * arg3 % 8) - 224] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x745472616e73666572206f6620746f6b656e2074686174206973206e6f74206f776e65,
                    mem[199 len 29]
    if not arg1:
        revert with 0, 'Transfer to the zero address'
    balanceOf[address(msg.sender)] = uint32(balanceOf[address(msg.sender)] - 1)
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] + 1)
    sub_979c4360[stor13[arg2][uint16(arg3) / 8].field_(32 * arg3 % 8) - 224] = uint16(sub_979c4360[stor13[arg2][uint16(arg3) / 8].field_(32 * arg3 % 8) - 224] + 1)
    ownerOf[stor13[arg2][uint16(arg3) / 8].field_(32 * arg3 % 8) - 224] = arg1
    emit Transfer(msg.sender, arg1, stor('array', ('mask_shl', 13, 3, -3, ('param', 'arg3')), ('map', ('param', 'arg2'), ('name', 'stor13', 13)))[uint8(arg3)]);
}

function sub_143250dd(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[198 len 30]
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[17927 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while uint32(idx) < uint32(sub_8f24dc42.length):
        mem[0] = uint32(idx)
        mem[32] = 14
        if ownerOf[idx << 224] != arg1:
            idx = idx + 1
            s = s
            continue 
        require uint32(s) < balanceOf[address(arg1)]
        mem[(32 * uint32(s)) + 128] = uint32(idx)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function sub_e7998247(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        if bool(stor16[address(msg.sender)]) == 1 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x6c4f6e6c7920746865206163746976652062726f6b65722063616e2063616c6c2074686973206d6f6469666965,
                        mem[209 len 19]
        if bool(stor17) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x6c4f6e6c7920746865206163746976652062726f6b65722063616e2063616c6c2074686973206d6f6469666965,
                        mem[209 len 19]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x725472616e7366657220746f20746865207a65726f2061646472657373206973206e6f7420616c6c6f7765,
                    mem[207 len 21]
    balanceOf[stor14[arg2 << 224]] = uint32(balanceOf[stor14[arg2 << 224]] - 1)
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] + 1)
    sub_979c4360[arg2 << 224] = uint16(sub_979c4360[arg2 << 224] + 1)
    ownerOf[arg2 << 224] = arg1
    emit Transfer(ownerOf[arg2 << 224], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor1[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x724552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != msg.sender:
        if not stor1[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x644552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor14[arg3 << 224]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x745472616e73666572206f6620746f6b656e2074686174206973206e6f74206f776e65,
                    mem[199 len 29]
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] - 1)
    balanceOf[address(arg2)] = uint32(balanceOf[address(arg2)] + 1)
    sub_979c4360[arg3 << 224] = uint16(sub_979c4360[arg3 << 224] + 1)
    ownerOf[arg3 << 224] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor1[arg3]:
        revert with 0, 32, 44, 0x724552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != msg.sender:
        if not stor1[arg3]:
            revert with 0, 32, 44, 0x644552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor14[arg3 << 224]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != arg1:
        revert with 0, 32, 35, 0x745472616e73666572206f6620746f6b656e2074686174206973206e6f74206f776e65, mem[231 len 29]
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] - 1)
    balanceOf[address(arg2)] = uint32(balanceOf[address(arg2)] + 1)
    sub_979c4360[arg3 << 224] = uint16(sub_979c4360[arg3 << 224] + 1)
    ownerOf[arg3 << 224] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor1[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x724552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != msg.sender:
        if not stor1[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x644552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor14[arg3 << 224]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3 << 224]:
        revert with 0, 'Owner query for nonexistent VoV'
    if ownerOf[arg3 << 224] != arg1:
        revert with 0, 
                    32,
                    35,
                    0x745472616e73666572206f6620746f6b656e2074686174206973206e6f74206f776e65,
                    mem[ceil32(arg4.length) + 231 len 29]
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] - 1)
    balanceOf[address(arg2)] = uint32(balanceOf[address(arg2)] + 1)
    sub_979c4360[arg3 << 224] = uint16(sub_979c4360[arg3 << 224] + 1)
    ownerOf[arg3 << 224] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}

function sub_42dadf0c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if bool(stor7[address(msg.sender)]) == 1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x724f6e6c7920616e20616374697665206f70657261746f722063616e2063616c6c2074686973206d6f6469666965,
                    mem[210 len 18]
    if sub_4569c7d7[arg1] > 9990:
        revert with 0, 'Limit exceeded for this VoV'
    idx = 0
    while uint8(idx) < stor9.length:
        mem[0] = 9
        if arg1 != stor9[uint8(idx)].field_0:
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 10:
            mem[0] = arg1
            mem[32] = 11
            _74 = mem[64]
            mem[64] = mem[64] + 96
            mem[_74] = 0
            mem[_74 + 32] = 0
            mem[_74 + 64] = 0
            _82 = mem[64]
            mem[64] = mem[64] + 96
            mem[_82] = arg1
            mem[_82 + 32] = uint16(sub_4569c7d7[arg1] + uint8(idx))
            mem[_82 + 64] = uint32(block.timestamp)
            sub_8f24dc42.length++
            sub_8f24dc42[sub_8f24dc42.length].field_0 = arg1
            sub_8f24dc42[sub_8f24dc42.length].field_256 = uint16(sub_4569c7d7[arg1] + uint8(idx))
            sub_8f24dc42[sub_8f24dc42.length].field_272 = uint32(block.timestamp)
            stor13[arg1].field_0++
            stor13[arg1][stor13[arg1].field_3].field_0 = uint32(sub_8f24dc42.length) * 256^(4 * stor13[arg1].field_0) or !(test266151307() * 256^(4 * stor13[arg1].field_0)) and stor13[arg1][stor13[arg1].field_3].field_0
            if not uint8(idx):
                balanceOf[address(msg.sender)] = uint32(balanceOf[address(msg.sender)] + 1)
                mem[0] = uint32(sub_8f24dc42.length)
                mem[32] = 14
                ownerOf[uint32(stor12.length)] = msg.sender
                emit 0x6fa39c26: msg.sender, arg1, uint16(sub_4569c7d7[arg1] + uint8(idx))
            else:
                if uint8(idx) != 1:
                    balanceOf[stor6] = uint32(balanceOf[stor6] + 1)
                    mem[0] = uint32(sub_8f24dc42.length)
                    mem[32] = 14
                    ownerOf[uint32(stor12.length)] = sub_03b58e56Address
                    emit 0x6fa39c26: sub_03b58e56Address, arg1, uint16(sub_4569c7d7[arg1] + uint8(idx))
                else:
                    if uint16(sub_4569c7d7[arg1] + uint8(idx)) <= 10:
                        balanceOf[stor6] = uint32(balanceOf[stor6] + 1)
                        mem[0] = uint32(sub_8f24dc42.length)
                        mem[32] = 14
                        ownerOf[uint32(stor12.length)] = sub_03b58e56Address
                        emit 0x6fa39c26: sub_03b58e56Address, arg1, uint16(sub_4569c7d7[arg1] + uint8(idx))
                    else:
                        require uint16(sub_4569c7d7[arg1] + uint8(idx) - 11) < stor13[arg1].field_0
                        balanceOf[stor14[stor13[arg1][uint16(stor11[arg1] + uint8(idx) - 11) / 8].field_(32 * stor11[arg1] + uint8(idx) - 11 % 8) - 224]] = uint32(balanceOf[stor14[stor13[arg1][uint16(stor11[arg1] + uint8(idx) - 11) / 8].field_(32 * stor11[arg1] + uint8(idx) - 11 % 8) - 224]] + 1)
                        mem[0] = uint32(sub_8f24dc42.length)
                        mem[32] = 14
                        ownerOf[uint32(stor12.length)] = ownerOf[stor13[arg1][uint16(stor11[arg1] + uint8(idx) - 11) / 8].field_(32 * stor11[arg1] + uint8(idx) - 11 % 8) - 224]
                        emit 0x6fa39c26: ownerOf[stor13[arg1][uint16(stor11[arg1] + uint8(idx) - 11) / 8].field_(32 * stor11[arg1] + uint8(idx) - 11 % 8) - 224], arg1, uint16(sub_4569c7d7[arg1] + uint8(idx))
            idx = idx + 1
            continue 
        sub_4569c7d7[arg1] = uint16(sub_4569c7d7[arg1] + 10)
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                48,
                0x64496e76616c69642076616c7565206e616d652e20506c6561736520636865636b207468652076616c7565206c697374,
                mem[212 len 16]
}



}
