contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
mapping of uint8 stor8;
uint256 stor9;
address stor10;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        if not return_data.size:
            if not arg4.length:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with arg4[all]
        if not return_data.size:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
            mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function sub_936e77ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 8
    if stor8[arg1[all]]:
        revert with 0, 'Item is not unique'
    mem[100] = msg.sender
    require ext_code.size(stor10)
    staticcall stor10.0xbd153fcc with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96 len arg1.length] = arg1[all]
        mem[ceil32(return_data.size) + arg1.length + 96] = 8
        stor8[arg1[all]] = 1
        mem[ceil32(return_data.size) + 96] = 0
        if not address(arg2):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor9]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg2)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg2)]++
        ownerOf[stor9] = address(arg2)
        emit Transfer(0, address(arg2), stor9);
        if ext_code.size(address(arg2)) <= 0:
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 'NH{q', 34
                if arg1.length:
                    stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 'NH{q', 34
                if arg1.length:
                    stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            if stor9 == -1:
                revert with 'NH{q', 17
            stor9++
            mem[ceil32(return_data.size) + ceil32(arg1.length) + 160] = stor9
            return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
                   mem[ceil32(return_data.size) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor9
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(address(arg2))
        call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor9, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if not ownerOf[stor9]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor6[stor9].field_0:
            if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6[stor9].field_0 = 0
                idx = 0
                while stor6[stor9].field_1 + 31 / 32 > idx:
                    stor6[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6[stor9].field_0 = 0
                idx = 0
                while stor6[stor9].field_1 + 31 / 32 > idx:
                    stor6[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor9 == -1:
            revert with 'NH{q', 17
        stor9++
        mem[(2 * ceil32(return_data.size)) + ceil32(arg1.length) + 160] = stor9
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
               mem[(2 * ceil32(return_data.size)) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only bet contract can use this functionality.'
    mem[(2 * ceil32(return_data.size)) + 96 len arg1.length] = arg1[all]
    mem[(2 * ceil32(return_data.size)) + arg1.length + 96] = 8
    stor8[arg1[all]] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    if not address(arg2):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[stor9] = address(arg2)
    emit Transfer(0, address(arg2), stor9);
    if ext_code.size(address(arg2)) <= 0:
        if not ownerOf[stor9]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor6[stor9].field_0:
            if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6[stor9].field_0 = 0
                idx = 0
                while stor6[stor9].field_1 + 31 / 32 > idx:
                    stor6[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6[stor9].field_0 = 0
                idx = 0
                while stor6[stor9].field_1 + 31 / 32 > idx:
                    stor6[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor9 == -1:
            revert with 'NH{q', 17
        stor9++
        mem[(2 * ceil32(return_data.size)) + ceil32(arg1.length) + 160] = stor9
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
               mem[(2 * ceil32(return_data.size)) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = 0
    mem[(2 * ceil32(return_data.size)) + 196] = stor9
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
    require ext_code.size(address(arg2))
    call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, 0, stor9, 128, 0
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        if not return_data.size:
            if not ext_call.return_data[0]:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with memory
              from 128
               len ext_call.return_data[0]
        if not return_data.size:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not ownerOf[stor9]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor6[stor9].field_0:
        if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor9].field_0 = 0
            idx = 0
            while stor6[stor9].field_1 + 31 / 32 > idx:
                stor6[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor9].field_0 = 0
            idx = 0
            while stor6[stor9].field_1 + 31 / 32 > idx:
                stor6[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor9 == -1:
        revert with 'NH{q', 17
    stor9++
    mem[(4 * ceil32(return_data.size)) + ceil32(arg1.length) + 160] = stor9
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[(4 * ceil32(return_data.size)) + arg1.length + 192 len -arg1.length + ceil32(arg1.length)]
}



}
