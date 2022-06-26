contract main {




// =====================  Runtime code  =====================


#
#  - sub_08a8d7aa(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of uint256 baseURI;
mapping of uint256 hash;
mapping of uint256 sub_72f87cae;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function getHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return hash[arg1]
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_72f87cae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_72f87cae[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_b23b1dfe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 10
        if hash[stor1[address(arg1)][idx]] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getTokenIdsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 1
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = sha3(address(arg1), 1)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function sub_59f9f50f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
        if tokenOfOwnerByIndex[address(msg.sender)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        require idx < tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 10
        if hash[stor1[address(msg.sender)][idx]] != hash[arg1]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s == sub_72f87cae[stor10[arg1]]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(arg1, 12)
    stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
}

function getMetadata(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[32] = 12
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 12)
    if ceil32(arg2.length) <= arg2.length:
        _46 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
        mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length) + 160
        mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length
        mem[0] = _46
        mem[ceil32(arg2.length) + 160] = stor[sha3(_46)]
        idx = ceil32(arg2.length) + 160
        s = 0
        while ceil32(arg2.length) + stor[_46].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_46) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_46].length
        mem[mem[64] + 64 len ceil32(stor[_46].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_46].length)]
        if ceil32(stor[_46].length) > stor[_46].length:
            mem[mem[64] + stor[_46].length + 64] = 0
        return Array(len=stor[_46].length, data=mem[mem[64] + 64 len ceil32(stor[_46].length)])
    _49 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
    mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length
    mem[0] = _49
    mem[ceil32(arg2.length) + 160] = stor[sha3(_49)]
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[_49].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_49) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _88 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor[_49].length
    mem[mem[64] + 64 len ceil32(stor[_49].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_49].length)]
    if ceil32(stor[_49].length) <= stor[_49].length:
        return Array(len=stor[_49].length, data=mem[mem[64] + 64 len ceil32(stor[_49].length)])
    mem[mem[64] + stor[_49].length + 64] = 0
    return memory
      from mem[64]
       len _88 + ceil32(stor[_49].length) + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 38
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 808] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 38
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 872] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[32] = 8
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
        var38001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length > 0:
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + stor8[arg1].length + 160] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + stor8[arg1].length + 192] = mem[ceil32(stor8[arg1].length) + 128]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 128]) > mem[ceil32(stor8[arg1].length) + 128]:
                mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + stor8[arg1].length + mem[ceil32(stor8[arg1].length) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < uint255(baseURI.length.field_1):
                mem[ceil32(stor8[arg1].length) + idx + 160] = baseURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + stor8[arg1].length + 160] = 32
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + stor8[arg1].length + 192] = mem[ceil32(stor8[arg1].length) + 128]
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 128]) > mem[ceil32(stor8[arg1].length) + 128]:
                mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + stor8[arg1].length + mem[ceil32(stor8[arg1].length) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
        var42001 = ceil32(stor8[arg1].length)
        mem[64] = stor8[arg1].length
        if ceil32(stor8[arg1].length) <= stor8[arg1].length:
            _848 = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(_848) > _848:
                mem[stor8[arg1].length + _848 + 64] = 0
            return 32, mem[stor8[arg1].length + 32 len ceil32(_848) + 32]
        _862 = mem[ceil32(stor8[arg1].length) + 128]
        mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
        mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
        if ceil32(_862) > _862:
            mem[stor8[arg1].length + _862 + 64] = 0
        return 32, mem[stor8[arg1].length + 32 len ceil32(_862) + 32]
    if not arg1:
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + mem[ceil32(stor8[arg1].length) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        if bool(baseURI.length) != 1:
            mem[64] = 1
            _859 = mem[ceil32(stor8[arg1].length) + 192]
            mem[33] = mem[ceil32(stor8[arg1].length) + 192]
            mem[65 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(_859) > _859:
                mem[_859 + 65] = 0
            return memory
              from mem[64]
               len ceil32(_859) + -mem[64] + 65
        idx = 0
        s = 0
        while idx < uint255(baseURI.length.field_1):
            mem[ceil32(stor8[arg1].length) + idx + 224] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 224] = '0'
        mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 225] = 32
        mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 257] = mem[ceil32(stor8[arg1].length) + 192]
        mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
        if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + mem[ceil32(stor8[arg1].length) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 192] = 32
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1618 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1618) > _1618:
                    mem[s + _1618 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1618) + 32]
            _1627 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1627) > _1627:
                mem[s + _1627 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1627) + 32]
    else:
        mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 192] = 32
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + s + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1620 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1620) > _1620:
                    mem[s + _1620 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1620) + 32]
            _1630 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1630) > _1630:
                mem[s + _1630 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1630) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 9)))), 1)
    idx = 0
    t = 0
    while idx < uint255(baseURI.length.field_1):
        mem[ceil32(stor8[arg1].length) + ceil32(s) + idx + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + 192] = 32
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
    return 32, mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + s + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
}



}
