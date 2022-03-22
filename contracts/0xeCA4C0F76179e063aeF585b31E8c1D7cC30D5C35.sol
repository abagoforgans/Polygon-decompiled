contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
uint8 currentState;
uint256 sub_839f2387;
uint256 sub_39bd89c2;
mapping of uint8 stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of address ownerOf;
mapping of address contract;
mapping of uint8 stor8;
uint256 sub_6af51c5e;
mapping of uint256 sub_084e6adf;
mapping of uint256 maxSupply;
mapping of uint256 releaseTimestamp;
mapping of uint256 typeId;
mapping of uint256 sub_5a647155;
uint256 sub_15ee4ee3;
array of uint256 stor17;
mapping of uint8 sub_6712f55f;
uint256 sub_6b7dfd72;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[Mask(32, 224, arg1)])
}

function sub_084e6adf(?) payable {
    require calldata.size - 4 >= 32
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    return sub_084e6adf[arg1]
}

function sub_15ee4ee3(?) payable {
    return sub_15ee4ee3
}

function sub_29e04b51(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function getCurrentState() payable {
    require currentState <= 2
    return currentState
}

function sub_39bd89c2(?) payable {
    return sub_39bd89c2
}

function sub_5a647155(?) payable {
    require calldata.size - 4 >= 32
    return sub_5a647155[address(arg1)]
}

function getMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    return maxSupply[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function sub_6712f55f(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg1:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg1] <= 5
    return sub_6712f55f[arg1]
}

function sub_6af51c5e(?) payable {
    return sub_6af51c5e
}

function sub_6b7dfd72(?) payable {
    return sub_6b7dfd72
}

function sub_839f2387(?) payable {
    return sub_839f2387
}

function getTypeId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_15ee4ee3:
        revert with 0, 'TypeNonce does not exist.'
    if not arg1:
        revert with 0, 'TypeNonce does not exist.'
    return typeId[arg1]
}

function getReleaseTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    return releaseTimestamp[arg1]
}

function getContractAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return contract[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getNonFungibleIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint128(arg1)
}

function isFungible(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return not bool(Mask(1, 255, arg1))
}

function getNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(128, 128, arg1)
}

function isNonFungible(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function isNonFungibleItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return bool(uint128(arg1))
}

function isNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not bool(uint128(arg1))
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if Mask(1, 255, arg2) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return stor4[arg2][address(arg1)]
    if not uint128(arg2):
        return stor4[arg2][address(arg1)]
    if ownerOf[arg2] == arg1:
        return 1
    else:
        return 0
}

function sub_5ff66eb7(?) payable {
    require sub_15ee4ee3 <= test266151307()
    if sub_15ee4ee3:
        mem[128 len 32 * sub_15ee4ee3] = call.data[calldata.size len 32 * sub_15ee4ee3]
    idx = 0
    while idx < sub_15ee4ee3:
        if idx + 1 > sub_15ee4ee3:
            revert with 0, 'TypeNonce does not exist.'
        if not idx + 1:
            revert with 0, 'TypeNonce does not exist.'
        mem[0] = idx + 1
        mem[32] = 14
        require idx < sub_15ee4ee3
        mem[(32 * idx) + 128] = typeId[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * sub_15ee4ee3) + 192 len floor32(sub_15ee4ee3)] = mem[128 len floor32(sub_15ee4ee3)]
    return Array(len=sub_15ee4ee3, data=mem[128 len floor32(sub_15ee4ee3)], mem[(32 * sub_15ee4ee3) + floor32(sub_15ee4ee3) + 192 len (32 * sub_15ee4ee3) - floor32(sub_15ee4ee3)]), 
}

function sub_6d13956b(?) payable {
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = uint16(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = uint16(stor9.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return Array(len=stor9.length, data=mem[128 len floor32(stor9.length)], mem[(32 * stor9.length) + floor32(stor9.length) + 192 len (32 * stor9.length) - floor32(stor9.length)]), 
}

function sub_78c9adad(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    stor17.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor17[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor17.length + 31 / 32 > idx:
        stor17[idx] = 0
        idx = idx + 1
        continue 
}

function sub_2ccd2c84(?) payable {
    require calldata.size - 4 >= 64
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e4120302074696d657374616d70206973206e6f7420616c6c6f7765642e20466f7220696d6d6564696174652072656c656173652063686f6f73652031333337
    if releaseTimestamp[arg1]:
        if block.timestamp >= releaseTimestamp[arg1]:
            revert with 0, 'This token is released already.'
    releaseTimestamp[arg1] = arg2
    emit 0xbb3d1cf2: arg2, arg1
}

function sub_08f51a84(?) payable {
    require calldata.size - 4 >= 96
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0x5eaea1ab: arg3, arg1, arg2
}

function sub_4a71aa0a(?) payable {
    require calldata.size - 4 >= 96
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2] != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0x43227f67: arg3, arg1, arg2
}

function sub_6907aa57(?) payable {
    require calldata.size - 4 >= 96
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0xe6fddd52: arg3, arg1, arg2
}

function sub_a2d34581(?) payable {
    require calldata.size - 4 >= 256
    if arg1 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 32, 34, 0x2e45434453413a20696e76616c6964207369676e6174757265202772272076616c75, mem[407 len 30]
    if arg2 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 34, 0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75, mem[407 len 30]
    if arg3 != 27:
        if arg3 != 28:
            revert with 0, 32, 34, 0x2e45434453413a20696e76616c6964207369676e6174757265202776272076616c75, mem[407 len 30]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg5, Mask(8, 248, arg6) >> 248, arg7, arg8)), arg3 << 248, arg1, arg2) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg4:
        revert with 0, 'Invalid signature.'
    if block.timestamp >= arg8:
        revert with 0, 
                    32,
                    38,
                    0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                    Mask(176, 0, arg2),
                    mem[465 len 4]
    if arg7 != sub_5a647155[address(arg4)]:
        revert with 0, 
                    32,
                    38,
                    0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                    Mask(176, 0, arg2),
                    mem[465 len 4]
    sub_5a647155[address(arg4)]++
    stor5[address(signer)][address(arg5)] = uint8(arg6)
    emit ApprovalForAll(arg6, address(signer), arg5);
}

function sub_282a84da(?) payable {
    require calldata.size - 4 >= 32
    idx = 1
    s = 0
    while idx <= sub_15ee4ee3:
        mem[0] = idx << 128
        mem[32] = 12
        if not maxSupply[idx]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = arg1
        mem[32] = sha3(idx, 4)
        if not stor4[idx][address(arg1)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(32 * s) + 128] = s
    if s:
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 1
    t = 0
    while idx <= sub_15ee4ee3:
        mem[0] = idx << 128
        mem[32] = 12
        if not maxSupply[idx]:
            idx = idx + 1
            t = t
            continue 
        mem[0] = arg1
        mem[32] = sha3(idx, 4)
        if not stor4[idx][address(arg1)]:
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = idx << 128
        mem[0] = arg1
        mem[32] = sha3(idx, 4)
        require t < mem[(32 * s) + 128]
        mem[(32 * t) + (32 * s) + 160] = stor4[idx][address(arg1)]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    mem[(64 * s) + 256 len floor32(s)] = mem[128 len floor32(s)]
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = mem[(32 * s) + 128]
    mem[(98 * s) + 288 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    return memory
      from (64 * s) + 160
       len (32 * mem[(32 * s) + 128]) + (161 * s) + 128
}

function sub_ca4708ee(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0xe27ba0a6: Array(len=arg3.length, data=arg3[all]), arg1, arg2
}

function sub_8b3188ce(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2] != 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0xb698dab4: Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), arg1, arg2
}

function sub_ab7b9a31(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not ownerOf[arg1]:
            revert with 0, 'TokenId does not exist.'
    else:
        if not maxSupply[arg1]:
            revert with 0, 'TypeId does not exist.'
        if not maxSupply[arg1]:
            revert with 0, 'TokenId does not exist.'
    if arg2 > sub_6b7dfd72:
        revert with 0, 'Invalid property requested.'
    if not arg2:
        revert with 0, 'Invalid property requested.'
    require sub_6712f55f[arg2] <= 5
    if sub_6712f55f[arg2] != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54686520676976656e2070726f706572747920696420646f6573206e6f74206d61746368207468652070726f70657274792074797065,
                    mem[219 len 9]
    emit 0xbbd005d6: Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), arg1, arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg1 != msg.sender:
        if bool(stor5[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
    if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ownerOf[arg3] == arg1
        ownerOf[arg3] = arg2
    else:
        if arg4 > stor4[arg3][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor4[arg3][address(arg1)] -= arg4
        if arg4 + stor4[arg3][arg2] < stor4[arg3][arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor4[arg3][address(arg2)] = arg4 + stor4[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        57,
                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                        arg4 % 72057594037927936
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        if Mask(1, 255, cd[((32 * idx) + arg2 + 36)]) != 0x8000000000000000000000000000000000000000000000000000000000000000:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 4)
            require idx < arg1.length
            mem[(32 * idx) + 128] = stor4[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        else:
            if not uint128(cd[((32 * idx) + arg2 + 36)]):
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 4)
                require idx < arg1.length
                mem[(32 * idx) + 128] = stor4[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
            else:
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 6
                require idx < arg1.length
                if ownerOf[cd[((32 * idx) + arg2 + 36)]] == address(cd[((32 * idx) + arg1 + 36)]):
                    mem[(32 * idx) + 128] = 1
                else:
                    mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function sub_491078f4(?) payable {
    require calldata.size - 4 >= 64
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x644d696e696d756d203120616e64206d6178696d756d20322a2a31323820746f6b656e73206f66206f6e6520747970652063616e206578697374,
                    mem[222 len 6]
    if arg1 > 0x100000000000000000000000000000000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x644d696e696d756d203120616e64206d6178696d756d20322a2a31323820746f6b656e73206f66206f6e6520747970652063616e206578697374,
                    mem[222 len 6]
    sub_15ee4ee3++
    maxSupply[stor16 + 1] = arg1
    typeId[stor16] = sub_15ee4ee3 + 1 << 128
    emit TransferSingle(sub_15ee4ee3 + 1, 0, msg.sender, 0, 0);
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e4120302074696d657374616d70206973206e6f7420616c6c6f7765642e20466f7220696d6d6564696174652072656c656173652063686f6f73652031333337
    if releaseTimestamp[stor16 + 1]:
        if block.timestamp >= releaseTimestamp[stor16 + 1]:
            revert with 0, 'This token is released already.'
    releaseTimestamp[stor16 + 1] = arg2
    emit 0xbb3d1cf2: arg2, sub_15ee4ee3 + 1 << 128
    return (sub_15ee4ee3 + 1 << 128)
}

function sub_9f0ab7da(?) payable {
    require calldata.size - 4 >= 32
    idx = 1
    while idx <= sub_15ee4ee3:
        mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
        mem[32] = 12
        if maxSupply[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128]:
            mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
            mem[32] = 11
            s = 1
            t = 0
            while s <= sub_084e6adf[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128]:
                mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
                mem[32] = 11
                if ownerOf[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128 or s] != arg1:
                    s = s + 1
                    t = t
                    continue 
                s = s + 1
                t = t + 1
                continue 
        idx = idx + 1
        continue 
    idx = 1
    while idx <= sub_15ee4ee3:
        mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
        mem[32] = 12
        if maxSupply[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128]:
            mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
            mem[32] = 11
            s = 1
            t = 0
            while s <= sub_084e6adf[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128]:
                if ownerOf[0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128 or s] != arg1:
                    mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
                    mem[32] = 11
                    s = s + 1
                    t = t
                    continue 
                require t < 0
                mem[(32 * t) + 128] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128 or s
                mem[0] = 0x8000000000000000000000000000000000000000000000000000000000000000 or idx << 128
                mem[32] = 11
                s = s + 1
                t = t + 1
                continue 
        idx = idx + 1
        continue 
    return ''
}

function sub_2f817bf8(?) payable {
    require calldata.size - 4 >= 64
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x644d696e696d756d203120616e64206d6178696d756d20322a2a31323820746f6b656e73206f66206f6e6520747970652063616e206578697374,
                    mem[222 len 6]
    if arg1 > 0x100000000000000000000000000000000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x644d696e696d756d203120616e64206d6178696d756d20322a2a31323820746f6b656e73206f66206f6e6520747970652063616e206578697374,
                    mem[222 len 6]
    sub_15ee4ee3++
    maxSupply[0x8000000000000000000000000000000000000000000000000000000000000000 or stor16 + 1 << 128] = arg1
    typeId[stor16] = 0x8000000000000000000000000000000000000000000000000000000000000000 or sub_15ee4ee3 + 1 << 128
    emit TransferSingle(0x8000000000000000000000000000000000000000000000000000000000000000 or sub_15ee4ee3 + 1 << 128, 0, msg.sender, 0, 0);
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e4120302074696d657374616d70206973206e6f7420616c6c6f7765642e20466f7220696d6d6564696174652072656c656173652063686f6f73652031333337
    if releaseTimestamp[0x8000000000000000000000000000000000000000000000000000000000000000 or stor16 + 1 << 128]:
        if block.timestamp >= releaseTimestamp[0x8000000000000000000000000000000000000000000000000000000000000000 or stor16 + 1 << 128]:
            revert with 0, 'This token is released already.'
    releaseTimestamp[0x8000000000000000000000000000000000000000000000000000000000000000 or stor16 + 1 << 128] = arg2
    emit 0xbb3d1cf2: arg2, 0x8000000000000000000000000000000000000000000000000000000000000000 or sub_15ee4ee3 + 1 << 128
    return (0x8000000000000000000000000000000000000000000000000000000000000000 or sub_15ee4ee3 + 1 << 128)
}

function sub_05a85c2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 3
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x3: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x3: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_19ef0788(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 2
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x2: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x2: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_3dfbc247(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 4
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x4: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x4: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_6c27479d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 1
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x1: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x1: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_829dc5f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 0
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x0: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x0: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_c55ebe69(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    sub_6b7dfd72++
    sub_6712f55f[stor19 + 1] = 5
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        emit 0x5: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0xd5773e0c: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        emit 0x5: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    mem[ceil32(arg1.length) + 128] = sub_6b7dfd72
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function mintNonFungible(uint256 arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e5468697320747970654964206973206e6f742061206e6f6e2066756e6769626c652074797065,
                    mem[203 len 25]
    mem[32] = 11
    sub_084e6adf[arg1] += arg2.length
    idx = 0
    while idx < arg2.length:
        mem[0] = arg1 or sub_084e6adf[arg1] + idx + 1
        mem[32] = 6
        ownerOf[arg1 or stor11[arg1] + idx + 1] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = arg1 or sub_084e6adf[arg1] + idx + 1
        mem[mem[64] + 32] = 1
        emit TransferSingle(arg1 or sub_084e6adf[arg1] + idx + 1, 1, msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
            _42 = mem[64]
            mem[64] = mem[64] + 32
            mem[_42] = 0
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1 or sub_084e6adf[arg1] + idx + 1
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _42 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1 or sub_084e6adf[arg1] + idx + 1, 1, 160, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, '.contract returned an unknown value from onERC1155Receive'
        idx = idx + 1
        continue 
    if sub_084e6adf[arg1] > maxSupply[arg1]:
        revert with 0, 'Out of stock.'
}

function mintFungible(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require currentState <= 2
    if currentState != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[32] = 12
    if not maxSupply[arg1]:
        revert with 0, 'TypeId does not exist.'
    if Mask(1, 255, arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e5468697320747970654964206973206e6f7420612066756e6769626c652074797065,
                    mem[199 len 29]
    if arg3.length != arg2.length:
        revert with 0, 'Array length must match.'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        stor4[arg1][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[0] = arg1
        mem[32] = 11
        sub_084e6adf[arg1] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
        emit TransferSingle(arg1, cd[((32 * idx) + arg3 + 36)], msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]));
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
            _47 = mem[64]
            mem[64] = mem[64] + 32
            mem[_47] = 0
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _47 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            57,
                            0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                            cd[((32 * idx) + arg3 + 36)] % 72057594037927936
        idx = idx + 1
        continue 
    if sub_084e6adf[arg1] > maxSupply[arg1]:
        revert with 0, 'Out of stock.'
}

function sub_fb479d9b(?) payable {
    require calldata.size - 4 >= 64
    require currentState <= 2
    if currentState != 2:
        require currentState <= 2
        if currentState != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        64,
                        0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    if contract[1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    if 1 == bool(stor8[arg2]):
        if arg2 != sub_6af51c5e:
            if this.address == arg1:
                sub_6af51c5e = arg2
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 2
                sub_839f2387++
                require currentState <= 2
                if currentState != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
            contract[arg2] = arg1
        else:
            sub_6af51c5e = 0
            require currentState <= 2
            if currentState:
                require currentState <= 2
                if currentState != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
            currentState = 1
            sub_39bd89c2++
            require currentState <= 2
            if currentState != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            64,
                            0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
    else:
        if this.address == arg1:
            if arg2 != sub_6af51c5e:
                if this.address == arg1:
                    sub_6af51c5e = arg2
                    require currentState <= 2
                    if currentState != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                    currentState = 2
                    sub_839f2387++
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                contract[arg2] = arg1
            else:
                sub_6af51c5e = 0
                require currentState <= 2
                if currentState:
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 1
                sub_39bd89c2++
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
        else:
            if arg2 == sub_6af51c5e:
                sub_6af51c5e = 0
                require currentState <= 2
                if currentState:
                    require currentState <= 2
                    if currentState != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    64,
                                    0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
                currentState = 1
                sub_39bd89c2++
                require currentState <= 2
                if currentState != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                64,
                                0x2e5468652066756e6374696f6e2063616c6c206973206e6f7420706f737369626c6520696e207468652063757272656e7420636f6e7472616374207374617465
}

function sub_7f138cbe(?) payable {
    require calldata.size - 4 >= 320
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[ceil32(arg8.length) + 160] = address(arg4)
    mem[ceil32(arg8.length) + 180] = address(arg5)
    mem[ceil32(arg8.length) + 200] = arg6
    mem[ceil32(arg8.length) + 232] = arg7
    mem[ceil32(arg8.length) + 264 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + 264] = 256^(-(arg8.length % 32) + 32) - 1 and mem[ceil32(arg8.length) + floor32(arg8.length) + 264] or call.data[arg8 + floor32(arg8.length) + 36 len arg8.length % 32], Mask(8 * -(arg8.length % 32) + 32, -(8 * -(arg8.length % 32) + 32) + 256, 0) << (8 * -(arg8.length % 32) + 32) - 256 and !(256^(-(arg8.length % 32) + 32) - 1)
    mem[ceil32(arg8.length) + arg8.length + 264] = arg9
    mem[ceil32(arg8.length) + arg8.length + 296] = arg10
    mem[ceil32(arg8.length) + 128] = arg8.length + 168
    _300 = sha3(mem[ceil32(arg8.length) + 160 len Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len -arg8.length + ceil32(arg8.length)]])
    if arg1 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 
                    32,
                    34,
                    0x2e45434453413a20696e76616c6964207369676e6174757265202772272076616c75,
                    mem[ceil32(arg8.length) + arg8.length + 522 len 30]
    if arg2 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg8.length) + arg8.length + 522 len 30]
    if arg3 != 27:
        if arg3 != 28:
            revert with 0, 
                        32,
                        34,
                        0x2e45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                        mem[ceil32(arg8.length) + arg8.length + 522 len 30]
    mem[ceil32(arg8.length) + arg8.length + 516] = arg1
    mem[ceil32(arg8.length) + arg8.length + 548] = arg2
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _300), arg3 << 248, arg1, arg2) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if arg4 != address(signer):
        if bool(stor5[address(arg4)][address(signer)]) != 1:
            revert with 0, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        Mask(104, 0, arg2),
                        mem[ceil32(arg8.length) + arg8.length + 580 len 4]
    if block.timestamp >= arg10:
        revert with 0, 
                    32,
                    38,
                    0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                    Mask(176, 0, arg2),
                    mem[ceil32(arg8.length) + arg8.length + 580 len 4]
    if arg9 != sub_5a647155[address(arg4)]:
        revert with 0, 
                    32,
                    38,
                    0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                    Mask(176, 0, arg2),
                    mem[ceil32(arg8.length) + arg8.length + 580 len 4]
    sub_5a647155[address(arg4)]++
    if not arg5:
        revert with 0, 'cannot send to zero address'
    if Mask(1, 255, arg6) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ownerOf[arg6] == arg4
        ownerOf[arg6] = arg5
        mem[ceil32(arg8.length) + arg8.length + 484] = arg7
        emit TransferSingle(arg6, arg7, msg.sender, arg4, arg5);
        if not ext_code.size(arg5):
        mem[ceil32(arg8.length) + arg8.length + 484 len arg8.length] = arg8[all]
        mem[ceil32(arg8.length) + (2 * arg8.length) + 484] = 0
        mem[(2 * ceil32(arg8.length)) + arg8.length + 484] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg8.length)) + arg8.length + 488] = msg.sender
        mem[(2 * ceil32(arg8.length)) + arg8.length + 520] = arg4
        mem[(2 * ceil32(arg8.length)) + arg8.length + 552] = arg6
        mem[(2 * ceil32(arg8.length)) + arg8.length + 584] = arg7
        mem[(2 * ceil32(arg8.length)) + arg8.length + 616] = 160
        mem[(2 * ceil32(arg8.length)) + arg8.length + 648] = arg8.length
        mem[(2 * ceil32(arg8.length)) + arg8.length + 680 len ceil32(arg8.length)] = arg8[all], mem[ceil32(arg8.length) + (2 * arg8.length) + 484 len ceil32(arg8.length) - arg8.length]
        if not arg8.length % 32:
            require ext_code.size(arg5)
            call arg5.0xf23a6e61 with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg8.length)) + arg8.length + 488 len arg8.length + ceil32(arg8.length) + 192]
        else:
            mem[floor32(arg8.length) + (2 * ceil32(arg8.length)) + arg8.length + 680] = mem[(2 * floor32(arg8.length)) + (2 * ceil32(arg8.length)) + 712 len arg8.length % 32]
            require ext_code.size(arg5)
            call arg5.0xf23a6e61 with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg8.length)) + arg8.length + 488 len floor32(arg8.length) + ceil32(arg8.length) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        mem[(2 * ceil32(arg8.length)) + arg8.length + 484] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg8.length)) + arg8.length + 488] = 32
        mem[(2 * ceil32(arg8.length)) + arg8.length + 520] = 57
        mem[(2 * ceil32(arg8.length)) + arg8.length + 552 len 57] = 0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665
        revert with memory
          from (2 * ceil32(arg8.length)) + arg8.length + 484
           len ceil32(arg8.length) + 132
    if arg7 > stor4[arg6][address(arg4)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor4[arg6][address(arg4)] -= arg7
    if arg7 + stor4[arg6][address(arg5)] < stor4[arg6][address(arg5)]:
        revert with 0, 'SafeMath: addition overflow'
    stor4[arg6][address(arg5)] += arg7
    mem[ceil32(arg8.length) + arg8.length + 548] = arg7
    emit TransferSingle(arg6, arg7, msg.sender, arg4, arg5);
    if not ext_code.size(arg5):
    mem[ceil32(arg8.length) + arg8.length + 548 len arg8.length] = arg8[all]
    mem[ceil32(arg8.length) + (2 * arg8.length) + 548] = 0
    mem[(2 * ceil32(arg8.length)) + arg8.length + 548] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(arg8.length)) + arg8.length + 552] = msg.sender
    mem[(2 * ceil32(arg8.length)) + arg8.length + 584] = arg4
    mem[(2 * ceil32(arg8.length)) + arg8.length + 616] = arg6
    mem[(2 * ceil32(arg8.length)) + arg8.length + 648] = arg7
    mem[(2 * ceil32(arg8.length)) + arg8.length + 680] = 160
    mem[(2 * ceil32(arg8.length)) + arg8.length + 712] = arg8.length
    mem[(2 * ceil32(arg8.length)) + arg8.length + 744 len ceil32(arg8.length)] = arg8[all], mem[ceil32(arg8.length) + (2 * arg8.length) + 548 len ceil32(arg8.length) - arg8.length]
    if not arg8.length % 32:
        require ext_code.size(arg5)
        call arg5.0xf23a6e61 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(arg8.length)) + arg8.length + 552 len arg8.length + ceil32(arg8.length) + 192]
    else:
        mem[floor32(arg8.length) + (2 * ceil32(arg8.length)) + arg8.length + 744] = mem[(2 * floor32(arg8.length)) + (2 * ceil32(arg8.length)) + 776 len arg8.length % 32]
        require ext_code.size(arg5)
        call arg5.0xf23a6e61 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(arg8.length)) + arg8.length + 552 len floor32(arg8.length) + ceil32(arg8.length) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
    mem[(2 * ceil32(arg8.length)) + arg8.length + 548] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(arg8.length)) + arg8.length + 552] = 32
    mem[(2 * ceil32(arg8.length)) + arg8.length + 584] = 57
    mem[(2 * ceil32(arg8.length)) + arg8.length + 616 len 57] = 0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665
    revert with memory
      from (2 * ceil32(arg8.length)) + arg8.length + 548
       len ceil32(arg8.length) + 132
}

function sub_da95c697(?) payable {
    require calldata.size - 4 >= 256
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if contract[4] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x65556e617574686f72697a65642063616c6c2e205468616e6b7320666f7220737570706f7274696e6720746865206e6574776f726b207769746820796f757220455448,
                    mem[231 len 29]
    mem[96] = ('cd', 132).length
    mem[128 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + 128] = ('cd', 164).length
    mem[(32 * ('cd', 132).length) + 160 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 192 len floor32(('cd', 132).length)] = call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    mem[(64 * ('cd', 132).length) + (32 * ('cd', 164).length) + 192 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 192] = cd[196]
    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 224] = cd[228]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 160] = (32 * ('cd', 164).length) + (96 * ('cd', 132).length) + 64
    _178 = sha3(mem[(32 * ('cd', 164).length) + (32 * ('cd', 132).length) + 192 len (32 * ('cd', 164).length) + (96 * ('cd', 132).length) + 64])
    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 288] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 316] = _178
    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 256] = (127 * ('cd', 132).length) + 60
    _183 = sha3(mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 288 len (127 * ('cd', 132).length) + 60])
    if cd[4] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 
                    32,
                    34,
                    0x2e45434453413a20696e76616c6964207369676e6174757265202772272076616c75,
                    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 450 len 30]
    if cd[36] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 450 len 30]
    if 27 == uint8(cd[68]):
        mem[64] = (64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 380
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 380] = sha3(mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 288 len (127 * ('cd', 132).length) + 60])
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 412] = uint8(cd[68])
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 444] = cd[4]
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 476] = cd[36]
        signer = erecover(_183, cd[68] << 248, cd[4], cd[36]) 
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 348] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != address(cd[100]):
            revert with 0, 'Invalid signature.'
        if ('cd', 164).length != ('cd', 132).length:
            revert with 0, 'Array length must match.'
        if block.timestamp >= cd[228]:
            revert with 0, 
                        32,
                        38,
                        0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                        Mask(176, 0, cd[36]),
                        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 508 len 4]
        if cd[196] != sub_5a647155[address(cd[100])]:
            revert with 0, 
                        32,
                        38,
                        0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                        Mask(176, 0, cd[36]),
                        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 508 len 4]
        mem[0] = address(cd[100])
        mem[32] = 15
        sub_5a647155[address(cd[100])]++
        idx = 0
        while idx < ('cd', 132).length:
            if Mask(1, 255, cd[((32 * idx) + cd[132] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                if ownerOf[cd[((32 * idx) + cd[132] + 36)]] != address(cd[100]):
                    revert with 0, 'You are not the owner.'
                mem[0] = cd[((32 * idx) + cd[132] + 36)]
                mem[32] = 6
                ownerOf[cd[((32 * idx) + cd[132] + 36)]] = 0
                idx = idx + 1
                continue 
            require idx < ('cd', 164).length
            mem[0] = address(cd[100])
            mem[32] = sha3(cd[((32 * idx) + cd[132] + 36)], 4)
            _274 = mem[64]
            mem[64] = mem[64] + 64
            mem[_274] = 30
            mem[_274 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + cd[164] + 36)] <= stor4[cd[((32 * idx) + cd[132] + 36)]][address(cd[100])]:
                mem[0] = address(cd[100])
                mem[32] = sha3(cd[((32 * idx) + cd[132] + 36)], 4)
                stor4[cd[((32 * idx) + cd[132] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[164] + 36)]
                idx = idx + 1
                continue 
            _276 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _276 + 68] = mem[idx + _274 + 32]
                idx = idx + 32
                continue 
            mem[_276 + 68] = mem[_276 + 70 len 30]
            revert with memory
              from mem[64]
               len _276 + -mem[64] + 100
        _258 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 132).length
        mem[mem[64] + 96 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        mem[(32 * ('cd', 132).length) + mem[64] + 96] = 0
        mem[mem[64] + 32] = floor32(('cd', 132).length) + 96
        mem[_258 + floor32(('cd', 132).length) + 96] = ('cd', 164).length
        mem[_258 + floor32(('cd', 132).length) + 128 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[(32 * ('cd', 164).length) + _258 + floor32(('cd', 132).length) + 128] = 0
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _258 + floor32(('cd', 132).length) + floor32(('cd', 164).length) + -mem[64] + 128],
                           msg.sender,
                           address(cd[100]),
                           0,
    else:
        if uint8(cd[68]) != 28:
            revert with 0, 
                        32,
                        34,
                        0x2e45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 450 len 30]
        mem[64] = (64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 380
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 380] = sha3(mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 288 len (127 * ('cd', 132).length) + 60])
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 412] = uint8(cd[68])
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 444] = cd[4]
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 476] = cd[36]
        signer = erecover(_183, cd[68] << 248, cd[4], cd[36]) 
        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 348] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != address(cd[100]):
            revert with 0, 'Invalid signature.'
        if ('cd', 164).length != ('cd', 132).length:
            revert with 0, 'Array length must match.'
        if block.timestamp >= cd[228]:
            revert with 0, 
                        32,
                        38,
                        0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                        Mask(176, 0, cd[36]),
                        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 508 len 4]
        if cd[196] != sub_5a647155[address(cd[100])]:
            revert with 0, 
                        32,
                        38,
                        0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                        Mask(176, 0, cd[36]),
                        mem[(64 * ('cd', 164).length) + (64 * ('cd', 132).length) + 508 len 4]
        mem[0] = address(cd[100])
        mem[32] = 15
        sub_5a647155[address(cd[100])]++
        idx = 0
        while idx < ('cd', 132).length:
            if Mask(1, 255, cd[((32 * idx) + cd[132] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                if ownerOf[cd[((32 * idx) + cd[132] + 36)]] != address(cd[100]):
                    revert with 0, 'You are not the owner.'
                mem[0] = cd[((32 * idx) + cd[132] + 36)]
                mem[32] = 6
                ownerOf[cd[((32 * idx) + cd[132] + 36)]] = 0
                idx = idx + 1
                continue 
            require idx < ('cd', 164).length
            mem[0] = address(cd[100])
            mem[32] = sha3(cd[((32 * idx) + cd[132] + 36)], 4)
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 30
            mem[_275 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + cd[164] + 36)] <= stor4[cd[((32 * idx) + cd[132] + 36)]][address(cd[100])]:
                mem[0] = address(cd[100])
                mem[32] = sha3(cd[((32 * idx) + cd[132] + 36)], 4)
                stor4[cd[((32 * idx) + cd[132] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[164] + 36)]
                idx = idx + 1
                continue 
            _279 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _279 + 68] = mem[idx + _275 + 32]
                idx = idx + 32
                continue 
            mem[_279 + 68] = mem[_279 + 70 len 30]
            revert with memory
              from mem[64]
               len _279 + -mem[64] + 100
        _260 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 132).length
        mem[mem[64] + 96 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        mem[(32 * ('cd', 132).length) + mem[64] + 96] = 0
        mem[mem[64] + 32] = floor32(('cd', 132).length) + 96
        mem[_260 + floor32(('cd', 132).length) + 96] = ('cd', 164).length
        mem[_260 + floor32(('cd', 132).length) + 128 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[(32 * ('cd', 164).length) + _260 + floor32(('cd', 132).length) + 128] = 0
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _260 + floor32(('cd', 132).length) + floor32(('cd', 164).length) + -mem[64] + 128],
                           msg.sender,
                           address(cd[100]),
                           0,
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg4.length != arg3.length:
        revert with 0, 'Array length must match'
    if msg.sender == arg1:
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
                mem[0] = cd[((32 * idx) + arg3 + 36)]
                mem[32] = 6
                ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 4)
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 30
            mem[_126 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + arg4 + 36)] <= stor4[cd[((32 * idx) + arg3 + 36)]][address(arg1)]:
                stor4[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
                if stor4[cd[((32 * idx) + arg3 + 36)]][address(arg2)] + cd[((32 * idx) + arg4 + 36)] < cd[((32 * idx) + arg4 + 36)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 4)
                stor4[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
                idx = idx + 1
                continue 
            _136 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _136 + 68] = mem[idx + _126 + 32]
                idx = idx + 32
                continue 
            mem[_136 + 68] = mem[_136 + 70 len 30]
            revert with memory
              from mem[64]
               len _136 + -mem[64] + 100
        _101 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = arg3.length
        mem[mem[64] + 96 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + mem[64] + 96] = 0
        mem[mem[64] + 32] = floor32(arg3.length) + 96
        mem[_101 + floor32(arg3.length) + 96] = arg4.length
        mem[_101 + floor32(arg3.length) + 128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg4.length) + _101 + floor32(arg3.length) + 128] = 0
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _101 + floor32(arg3.length) + floor32(arg4.length) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if ext_code.size(arg2):
            _105 = mem[64]
            mem[64] = mem[64] + (32 * arg3.length) + 32
            mem[_105] = arg3.length
            mem[_105 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[_105 + (32 * arg3.length) + 32] = 0
            _106 = mem[64]
            mem[64] = (32 * arg4.length) + mem[64] + 32
            mem[_106] = arg4.length
            mem[_106 + 32 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[_106 + (32 * arg4.length) + 32] = 0
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(arg5.length) + 32
            mem[_107] = arg5.length
            mem[_107 + 32 len arg5.length] = arg5[all]
            mem[_107 + arg5.length + 32] = 0
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg3.length
            mem[mem[64] + 196 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[mem[64] + 100] = (32 * arg3.length) + 192
            mem[(32 * arg3.length) + mem[64] + 196] = arg4.length
            mem[(32 * arg3.length) + mem[64] + 228 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[mem[64] + 132] = (32 * arg4.length) + (32 * arg3.length) + 224
            mem[(32 * arg4.length) + (32 * arg3.length) + mem[64] + 228] = arg5.length
            mem[(32 * arg4.length) + (32 * arg3.length) + mem[64] + 260 len ceil32(arg5.length)] = arg5[all], mem[_107 + arg5.length + 32 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                require ext_code.size(arg2)
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), mem[mem[64] + 68 len (32 * arg3.length) + 28], 0, mem[mem[64] + (32 * arg3.length) + 128 len 68], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[mem[64] + (32 * arg3.length) + floor32(arg4.length) + 228 len arg5.length + (32 * arg4.length) + -floor32(arg4.length) + 32]
            else:
                mem[floor32(arg5.length) + (32 * arg4.length) + (32 * arg3.length) + mem[64] + 260] = mem[floor32(arg5.length) + (32 * arg4.length) + (32 * arg3.length) + mem[64] + -(arg5.length % 32) + 292 len arg5.length % 32]
                require ext_code.size(arg2)
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), mem[mem[64] + 68 len (32 * arg3.length) + 28], 0, mem[mem[64] + (32 * arg3.length) + 128 len 68], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[mem[64] + (32 * arg3.length) + floor32(arg4.length) + 228 len floor32(arg5.length) + (32 * arg4.length) + -floor32(arg4.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            62,
                            0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                            uint16((32 * arg3.length) + 192)
    else:
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 5)
        if bool(stor5[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
                mem[0] = cd[((32 * idx) + arg3 + 36)]
                mem[32] = 6
                ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 4)
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + arg4 + 36)] <= stor4[cd[((32 * idx) + arg3 + 36)]][address(arg1)]:
                stor4[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
                if stor4[cd[((32 * idx) + arg3 + 36)]][address(arg2)] + cd[((32 * idx) + arg4 + 36)] < cd[((32 * idx) + arg4 + 36)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 4)
                stor4[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
                idx = idx + 1
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _142 + 68] = mem[idx + _131 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 68] = mem[_142 + 70 len 30]
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        _103 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = arg3.length
        mem[mem[64] + 96 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + mem[64] + 96] = 0
        mem[mem[64] + 32] = floor32(arg3.length) + 96
        mem[_103 + floor32(arg3.length) + 96] = arg4.length
        mem[_103 + floor32(arg3.length) + 128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[(32 * arg4.length) + _103 + floor32(arg3.length) + 128] = 0
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _103 + floor32(arg3.length) + floor32(arg4.length) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if ext_code.size(arg2):
            _108 = mem[64]
            mem[64] = mem[64] + (32 * arg3.length) + 32
            mem[_108] = arg3.length
            mem[_108 + 32 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[_108 + (32 * arg3.length) + 32] = 0
            _109 = mem[64]
            mem[64] = (32 * arg4.length) + mem[64] + 32
            mem[_109] = arg4.length
            mem[_109 + 32 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[_109 + (32 * arg4.length) + 32] = 0
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(arg5.length) + 32
            mem[_110] = arg5.length
            mem[_110 + 32 len arg5.length] = arg5[all]
            mem[_110 + arg5.length + 32] = 0
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg3.length
            mem[mem[64] + 196 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[mem[64] + 100] = (32 * arg3.length) + 192
            mem[(32 * arg3.length) + mem[64] + 196] = arg4.length
            mem[(32 * arg3.length) + mem[64] + 228 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[mem[64] + 132] = (32 * arg4.length) + (32 * arg3.length) + 224
            mem[(32 * arg4.length) + (32 * arg3.length) + mem[64] + 228] = arg5.length
            mem[(32 * arg4.length) + (32 * arg3.length) + mem[64] + 260 len ceil32(arg5.length)] = arg5[all], mem[_110 + arg5.length + 32 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                require ext_code.size(arg2)
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), mem[mem[64] + 68 len (32 * arg3.length) + 28], 0, mem[mem[64] + (32 * arg3.length) + 128 len 68], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[mem[64] + (32 * arg3.length) + floor32(arg4.length) + 228 len arg5.length + (32 * arg4.length) + -floor32(arg4.length) + 32]
            else:
                mem[floor32(arg5.length) + (32 * arg4.length) + (32 * arg3.length) + mem[64] + 260] = mem[floor32(arg5.length) + (32 * arg4.length) + (32 * arg3.length) + mem[64] + -(arg5.length % 32) + 292 len arg5.length % 32]
                require ext_code.size(arg2)
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), mem[mem[64] + 68 len (32 * arg3.length) + 28], 0, mem[mem[64] + (32 * arg3.length) + 128 len 68], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[mem[64] + (32 * arg3.length) + floor32(arg4.length) + 228 len floor32(arg5.length) + (32 * arg4.length) + -floor32(arg4.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            62,
                            0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                            uint16((32 * arg3.length) + 192)
}

function sub_ba8183f8(?) payable {
    require calldata.size - 4 >= 320
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    require cd[228] <= 4294967296
    require cd[228] + 36 <= calldata.size
    require ('cd', 228).length <= 4294967296 and cd[228] + ('cd', 228).length + 36 <= calldata.size
    mem[96] = ('cd', 164).length
    mem[128 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[(32 * ('cd', 164).length) + 128] = ('cd', 196).length
    mem[(32 * ('cd', 164).length) + 160 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 160] = ('cd', 228).length
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 192 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ('cd', 228).length + 192] = 0
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 224] = address(cd[100])
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 244] = address(cd[132])
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 264 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    mem[(64 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 264 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
    if ('cd', 228).length < 32:
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + 264] = 256^(-('cd', 228).length + 32) - 1 and mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + 264] or mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 192] and !(256^(-('cd', 228).length + 32) - 1)
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 264] = cd[260]
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 296] = cd[292]
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 192] = (32 * ('cd', 196).length) + (96 * ('cd', 164).length) + ('cd', 228).length + 104
        _1092 = sha3(mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 224 len Mask(8 * -ceil32(('cd', 228).length) + ('cd', 228).length + 32, 0, 0), mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ('cd', 228).length + 224 len -('cd', 228).length + ceil32(('cd', 228).length)]])
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360] = '\x19Ethereum Signed Message:\n32'
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 388] = _1092
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 328] = (127 * ('cd', 164).length) + 60
        _1097 = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
        if cd[4] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
            revert with 0, 
                        32,
                        34,
                        0x2e45434453413a20696e76616c6964207369676e6174757265202772272076616c75,
                        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
        if cd[36] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 
                        32,
                        34,
                        0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
        if 27 == uint8(cd[68]):
            mem[64] = (64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452] = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 484] = uint8(cd[68])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 516] = cd[4]
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 548] = cd[36]
            signer = erecover(_1097, cd[68] << 248, cd[4], cd[36]) 
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 420] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(cd[100]) == address(signer):
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _1694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1694] = 30
                        mem[_1694 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _1716 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1716 + 68] = mem[idx + _1694 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1716 + 68] = mem[_1716 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1716 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _1624 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_1624 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_1624 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _1624 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _1624 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _1642 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_1642] = ('cd', 164).length
                    mem[_1642 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_1642 + (32 * ('cd', 164).length) + 32] = 0
                    _1643 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_1643] = ('cd', 196).length
                    mem[_1643 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_1643 + (32 * ('cd', 196).length) + 32] = 0
                    _1644 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_1644] = ('cd', 228).length
                    mem[_1644 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_1644 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_1644 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
            else:
                if bool(stor5[address(cd[100])][address(signer)]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                Mask(104, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _1696 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1696] = 30
                        mem[_1696 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _1719 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1719 + 68] = mem[idx + _1696 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1719 + 68] = mem[_1719 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1719 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _1626 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_1626 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_1626 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _1626 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _1626 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _1645 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_1645] = ('cd', 164).length
                    mem[_1645 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_1645 + (32 * ('cd', 164).length) + 32] = 0
                    _1646 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_1646] = ('cd', 196).length
                    mem[_1646 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_1646 + (32 * ('cd', 196).length) + 32] = 0
                    _1647 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_1647] = ('cd', 228).length
                    mem[_1647 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_1647 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_1647 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
        else:
            if uint8(cd[68]) != 28:
                revert with 0, 
                            32,
                            34,
                            0x2e45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
            mem[64] = (64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452] = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 484] = uint8(cd[68])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 516] = cd[4]
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 548] = cd[36]
            signer = erecover(_1097, cd[68] << 248, cd[4], cd[36]) 
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 420] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(cd[100]) == address(signer):
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _1698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1698] = 30
                        mem[_1698 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _1722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1722 + 68] = mem[idx + _1698 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1722 + 68] = mem[_1722 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1722 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _1628 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_1628 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_1628 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _1628 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _1628 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _1648 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_1648] = ('cd', 164).length
                    mem[_1648 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_1648 + (32 * ('cd', 164).length) + 32] = 0
                    _1649 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_1649] = ('cd', 196).length
                    mem[_1649 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_1649 + (32 * ('cd', 196).length) + 32] = 0
                    _1650 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_1650] = ('cd', 228).length
                    mem[_1650 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_1650 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_1650 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
            else:
                if bool(stor5[address(cd[100])][address(signer)]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                Mask(104, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _1700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1700] = 30
                        mem[_1700 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _1725 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1725 + 68] = mem[idx + _1700 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1725 + 68] = mem[_1725 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1725 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _1630 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_1630 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_1630 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _1630 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _1630 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _1651 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_1651] = ('cd', 164).length
                    mem[_1651 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_1651 + (32 * ('cd', 164).length) + 32] = 0
                    _1652 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_1652] = ('cd', 196).length
                    mem[_1652 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_1652 + (32 * ('cd', 196).length) + 32] = 0
                    _1653 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_1653] = ('cd', 228).length
                    mem[_1653 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_1653 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_1653 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
    else:
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + 264] = mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 192]
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + 296 len floor32(('cd', 228).length - 32)] = mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 224 len floor32(('cd', 228).length - 32)]
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + floor32(('cd', 228).length - 32) + 296] = 256^(-('cd', 228).length + floor32(('cd', 228).length - 32) + 64) - 1 and mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + floor32(('cd', 228).length - 32) + 296] or mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + floor32(('cd', 228).length - 32) + 224] and !(256^(-('cd', 228).length + floor32(('cd', 228).length - 32) + 64) - 1)
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 264] = cd[260]
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 296] = cd[292]
        mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 192] = (32 * ('cd', 196).length) + (96 * ('cd', 164).length) + ('cd', 228).length + 104
        _1636 = sha3(mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ceil32(('cd', 228).length) + 224 len Mask(8 * -ceil32(('cd', 228).length) + ('cd', 228).length + 32, 0, 0), mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + ('cd', 228).length + 224 len -('cd', 228).length + ceil32(('cd', 228).length)]])
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360] = '\x19Ethereum Signed Message:\n32'
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 388] = _1636
        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 328] = (127 * ('cd', 164).length) + 60
        _1641 = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
        if cd[4] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
            revert with 0, 
                        32,
                        34,
                        0x2e45434453413a20696e76616c6964207369676e6174757265202772272076616c75,
                        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
        if cd[36] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 
                        32,
                        34,
                        0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                        mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
        if 27 == uint8(cd[68]):
            mem[64] = (64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452] = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 484] = uint8(cd[68])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 516] = cd[4]
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 548] = cd[36]
            signer = erecover(_1641, cd[68] << 248, cd[4], cd[36]) 
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 420] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(cd[100]) == address(signer):
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _2192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2192] = 30
                        mem[_2192 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _2232 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2232 + 68] = mem[idx + _2192 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2232 + 68] = mem[_2232 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2232 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _2092 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_2092 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_2092 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _2092 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _2092 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _2124 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_2124] = ('cd', 164).length
                    mem[_2124 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_2124 + (32 * ('cd', 164).length) + 32] = 0
                    _2125 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_2125] = ('cd', 196).length
                    mem[_2125 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_2125 + (32 * ('cd', 196).length) + 32] = 0
                    _2126 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_2126] = ('cd', 228).length
                    mem[_2126 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_2126 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_2126 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
            else:
                if bool(stor5[address(cd[100])][address(signer)]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                Mask(104, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _2194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2194] = 30
                        mem[_2194 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _2235 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2235 + 68] = mem[idx + _2194 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2235 + 68] = mem[_2235 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2235 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _2094 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_2094 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_2094 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _2094 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _2094 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _2127 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_2127] = ('cd', 164).length
                    mem[_2127 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_2127 + (32 * ('cd', 164).length) + 32] = 0
                    _2128 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_2128] = ('cd', 196).length
                    mem[_2128 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_2128 + (32 * ('cd', 196).length) + 32] = 0
                    _2129 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_2129] = ('cd', 228).length
                    mem[_2129 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_2129 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_2129 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
        else:
            if uint8(cd[68]) != 28:
                revert with 0, 
                            32,
                            34,
                            0x2e45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 522 len 30]
            mem[64] = (64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 452] = sha3(mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 360 len (127 * ('cd', 164).length) + 60])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 484] = uint8(cd[68])
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 516] = cd[4]
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 548] = cd[36]
            signer = erecover(_1641, cd[68] << 248, cd[4], cd[36]) 
            mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 420] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(cd[100]) == address(signer):
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _2196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2196] = 30
                        mem[_2196 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _2238 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2238 + 68] = mem[idx + _2196 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2238 + 68] = mem[_2238 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2238 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _2096 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_2096 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_2096 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _2096 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _2096 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _2130 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_2130] = ('cd', 164).length
                    mem[_2130 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_2130 + (32 * ('cd', 164).length) + 32] = 0
                    _2131 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_2131] = ('cd', 196).length
                    mem[_2131 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_2131 + (32 * ('cd', 196).length) + 32] = 0
                    _2132 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_2132] = ('cd', 228).length
                    mem[_2132 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_2132 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_2132 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
            else:
                if bool(stor5[address(cd[100])][address(signer)]) != 1:
                    revert with 0, 
                                32,
                                47,
                                0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                                Mask(104, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match.'
                if block.timestamp >= cd[292]:
                    revert with 0, 
                                32,
                                38,
                                0xfe54686973207472616e73616374696f6e206973206e6f742076616c696420616e796d6f7265,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                if cd[260] != sub_5a647155[address(cd[100])]:
                    revert with 0, 
                                32,
                                38,
                                0x2e54686973207472616e73616374696f6e2077617320657865637574656420616c7265616479,
                                Mask(176, 0, cd[36]),
                                mem[(64 * ('cd', 196).length) + (64 * ('cd', 164).length) + ceil32(('cd', 228).length) + ('cd', 228).length + 580 len 4]
                mem[0] = address(cd[100])
                mem[32] = 15
                sub_5a647155[address(cd[100])]++
                if not address(cd[132]):
                    revert with 0, 'cannot send to zero address'
                if ('cd', 196).length != ('cd', 164).length:
                    revert with 0, 'Array length must match'
                idx = 0
                while idx < ('cd', 164).length:
                    if Mask(1, 255, cd[((32 * idx) + cd[164] + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require idx < ('cd', 164).length
                        require ownerOf[cd[((32 * idx) + cd[164] + 36)]] == address(cd[100])
                        require idx < ('cd', 164).length
                        mem[0] = cd[((32 * idx) + cd[164] + 36)]
                        mem[32] = 6
                        ownerOf[cd[((32 * idx) + cd[164] + 36)]] = address(cd[132])
                    else:
                        require idx < ('cd', 196).length
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[100])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        _2198 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2198] = 30
                        mem[_2198 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + cd[196] + 36)] > stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])]:
                            _2241 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2241 + 68] = mem[idx + _2198 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2241 + 68] = mem[_2241 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2241 + -mem[64] + 100
                        require idx < ('cd', 164).length
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[100])] -= cd[((32 * idx) + cd[196] + 36)]
                        require idx < ('cd', 196).length
                        if stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] + cd[((32 * idx) + cd[196] + 36)] < cd[((32 * idx) + cd[196] + 36)]:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < ('cd', 164).length
                        mem[0] = address(cd[132])
                        mem[32] = sha3(cd[((32 * idx) + cd[164] + 36)], 4)
                        stor4[cd[((32 * idx) + cd[164] + 36)]][address(cd[132])] += cd[((32 * idx) + cd[196] + 36)]
                    idx = idx + 1
                    continue 
                _2098 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = ('cd', 164).length
                mem[mem[64] + 96 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[(32 * ('cd', 164).length) + mem[64] + 96] = 0
                mem[mem[64] + 32] = floor32(('cd', 164).length) + 96
                mem[_2098 + floor32(('cd', 164).length) + 96] = ('cd', 196).length
                mem[_2098 + floor32(('cd', 164).length) + 128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 196).length) + _2098 + floor32(('cd', 164).length) + 128] = 0
                emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                                   mem[mem[64] len _2098 + floor32(('cd', 164).length) + floor32(('cd', 196).length) + -mem[64] + 128],
                                   msg.sender,
                                   address(cd[100]),
                                   address(cd[132]),
                if ext_code.size(address(cd[132])):
                    _2133 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
                    mem[_2133] = ('cd', 164).length
                    mem[_2133 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_2133 + (32 * ('cd', 164).length) + 32] = 0
                    _2134 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
                    mem[_2134] = ('cd', 196).length
                    mem[_2134 + 32 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[_2134 + (32 * ('cd', 196).length) + 32] = 0
                    _2135 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 228).length) + 32
                    mem[_2135] = ('cd', 228).length
                    mem[_2135 + 32 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
                    mem[_2135 + ('cd', 228).length + 32] = 0
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[100])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    mem[mem[64] + 196 len floor32(('cd', 164).length)] = call.data[cd[164] + 36 len floor32(('cd', 164).length)]
                    mem[mem[64] + 100] = (32 * ('cd', 164).length) + 192
                    mem[(32 * ('cd', 164).length) + mem[64] + 196] = ('cd', 196).length
                    mem[(32 * ('cd', 164).length) + mem[64] + 228 len floor32(('cd', 196).length)] = call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    mem[mem[64] + 132] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 224
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 228] = ('cd', 228).length
                    mem[(32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260 len ceil32(('cd', 228).length)] = call.data[cd[228] + 36 len ('cd', 228).length], mem[_2135 + ('cd', 228).length + 32 len ceil32(('cd', 228).length) - ('cd', 228).length]
                    if not ('cd', 228).length % 32:
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len ('cd', 228).length + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 32]
                    else:
                        mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + 260] = mem[floor32(('cd', 228).length) + (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + mem[64] + -(('cd', 228).length % 32) + 292 len ('cd', 228).length % 32]
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[100]), mem[mem[64] + 68 len (32 * ('cd', 164).length) + 28], 0, mem[mem[64] + (32 * ('cd', 164).length) + 128 len 68], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)], mem[mem[64] + (32 * ('cd', 164).length) + floor32(('cd', 196).length) + 228 len floor32(('cd', 228).length) + (32 * ('cd', 196).length) + -floor32(('cd', 196).length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    62,
                                    0x65636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                                    uint16((32 * ('cd', 164).length) + 192)
}



}
