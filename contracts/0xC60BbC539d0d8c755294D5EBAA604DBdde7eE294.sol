contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
array of struct stor12;
address owner;
uint256 stor14;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
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
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mintToken(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor14++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor14]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[stor14] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, stor14);
    stor6[stor14] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor14
    stor8[stor14] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor14
    if not ownerOf[stor14]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + 240 len 20]
    stor12[stor14][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = stor14
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 12
    mem[64] = ceil32(stor12[arg1].length) + 128
    mem[96] = stor12[arg1].length
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor12[arg1].length:
        return ''
    mem[0] = 11
    mem[ceil32(stor12[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = mem[64] + 32
    s = 0
    while ceil32(stor12[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor12[arg1].length) + baseURI.length + 160 len floor32(stor12[arg1].length)] = mem[128 len floor32(stor12[arg1].length)]
    mem[ceil32(stor12[arg1].length) + baseURI.length + floor32(stor12[arg1].length) + 160] = mem[floor32(stor12[arg1].length) + -stor12[arg1].length % 32 + 160 len stor12[arg1].length % 32] or Mask(8 * -stor12[arg1].length % 32 + 32, -(8 * -stor12[arg1].length % 32 + 32) + 256, mem[ceil32(stor12[arg1].length) + baseURI.length + floor32(stor12[arg1].length) + 160])
    _310 = mem[64]
    mem[64] = stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 160
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 160] = 32
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192] = mem[_310]
    _320 = mem[_310]
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 224 len ceil32(mem[_310])] = mem[_310 + 32 len ceil32(mem[_310])]
    if not _320 % 32:
        return 32, mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192 len _320 + 32]
    mem[floor32(_320) + stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 224] = mem[floor32(_320) + stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + -(_320 % 32) + 256 len _320 % 32]
    return 32, mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192 len floor32(_320) + 64]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
        if ownerOf[arg3] != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
        if not approved[arg3]:
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
        else:
            approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
    else:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
        else:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
            if not ownerOf[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 237 len 23]
        if ownerOf[arg3] != arg1:
            revert with 0, 
                        32,
                        41,
                        0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                        mem[ceil32(arg4.length) + 237 len 23]
        if not arg2:
            revert with 0, 
                        32,
                        36,
                        0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + 232 len 28]
        if not approved[arg3]:
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
        else:
            approved[arg3] = 0
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
    else:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg4.length) + 237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 
                            32,
                            41,
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
        else:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
            if not ownerOf[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg4.length) + 237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 
                            32,
                            41,
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)] - 1:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
}



}
