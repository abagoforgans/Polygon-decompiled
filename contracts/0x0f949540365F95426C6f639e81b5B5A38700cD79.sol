contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of struct baseURI;
uint256 stor10;
mapping of uint256 mycardNumber;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getmycardNumber(address arg1) payable {
    require calldata.size - 4 >= 32
    return mycardNumber[address(arg1)]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function mint() payable {
    stor10++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor10]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor10]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor10
        tokenOfOwnerByIndex[address(msg.sender)][1][stor10] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[stor10]:
        require stor3[stor10] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor10] - 1].field_256 = msg.sender
        tokenByIndex[stor3[stor10] - 1].field_416 = 0
        emit Transfer(0, msg.sender, stor10);
        mem[128 len 88] = 0x7268747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6e616e64656d6f746f6b656e2f4e65772d59656172732d636172642f67682d70616765732f4e65775965617273436172642e6a736f
        if not stor3[stor10]:
            revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        stor8[stor10].field_0 = 177
        s = 0
        idx = 128
        while 216 > idx:
            stor8[stor10][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor10
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor10] = tokenByIndex.length
        emit Transfer(0, msg.sender, stor10);
        mem[192 len 88] = 0x7268747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6e616e64656d6f746f6b656e2f4e65772d59656172732d636172642f67682d70616765732f4e65775965617273436172642e6a736f
        if not stor3[stor10]:
            revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[400 len 20]
        stor8[stor10].field_0 = 177
        s = 0
        idx = 192
        while 280 > idx:
            stor8[stor10][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    idx = 3
    while stor8[stor10].length + 31 / 32 > idx:
        stor8[stor10][idx].field_0 = 0
        idx = idx + 1
        continue 
    mycardNumber[address(msg.sender)] = stor10
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x6e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x6e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[612 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[800 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 731 len 14]
                require return_data.size >= 32
                if Mask(32, 224, mem[644]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 731 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[676 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[864 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[836 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 795 len 14]
                require return_data.size >= 32
                if Mask(32, 224, mem[708]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 795 len 14]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[64] = ceil32(stor8[arg1].length) + 128
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var22001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length > 0:
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1077 = mem[_1006]
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        var32001 = ceil32(_1077)
        if not _1077 % 32:
            return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len _1077 + 32]
        mem[floor32(_1077) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224] = mem[floor32(_1077) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + -(_1077 % 32) + 256 len _1077 % 32]
        return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len floor32(_1077) + 64]
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + 192
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        var31001 = ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + 160
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 201 len 23],
                    mem[ceil32(arg4.length) + 247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 297 len 23],
                    mem[ceil32(arg4.length) + 343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 429 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x6e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 393 len 23],
                    mem[ceil32(arg4.length) + 439 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[ceil32(arg4.length) + 548] = 128
                mem[ceil32(arg4.length) + 580] = arg4.length
                mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[arg4.length + ceil32(arg4.length) + 612 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 644 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 284 len arg4.length + 164 % 32]
                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 416 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 612 len arg4.length + -floor32(arg4.length + 164) + 164]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length > 0:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                    else:
                        mem[arg4.length + ceil32(arg4.length) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 731 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 644]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 731 len 14]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 644 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 676 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 252 len floor32(arg4.length) + 196 % 32]
                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 416 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 644 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length > 0:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 763 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 676]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 763 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[ceil32(arg4.length) + 612] = 128
                mem[ceil32(arg4.length) + 644] = arg4.length
                mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[arg4.length + ceil32(arg4.length) + 676 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 708 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 348 len arg4.length + 164 % 32]
                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 480 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 676 len arg4.length + -floor32(arg4.length + 164) + 164]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length > 0:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                    else:
                        mem[arg4.length + ceil32(arg4.length) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 795 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 708]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 795 len 14]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 708 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 740 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 316 len floor32(arg4.length) + 196 % 32]
                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 480 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 708 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length > 0:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
}



}
