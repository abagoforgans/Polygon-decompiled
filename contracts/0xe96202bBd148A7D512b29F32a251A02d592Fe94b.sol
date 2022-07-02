contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_5074de35(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
address trustedForwarderAddress;
address owner;
mapping of uint8 stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
array of struct stor10;
array of uint256 baseURI;
uint256 stor12;
array of uint256 versionRecipient;
uint256 stor14;
mapping of uint8 stor15;
mapping of uint256 sub_be8b3f68;
mapping of uint256 sub_87bedcfb;
address sub_b83acc53Address;
address sub_eef571a6Address;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function versionRecipient() {
    return versionRecipient[0 len versionRecipient.length]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor5[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function trustedForwarder() {
    return trustedForwarderAddress
}

function sub_87bedcfb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_87bedcfb[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b83acc53(?) {
    return sub_b83acc53Address
}

function sub_be8b3f68(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_be8b3f68[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_eef571a6(?) {
    return sub_eef571a6Address
}

function sub_fadf7ab0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == trustedForwarderAddress)
}

function renounceOwnership() {
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_11da1e54(?) {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor12 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor12 = 2
    if cd[4] > stor14:
        revert with 0, 'no such experience token'
    if stor15[cd[4]]:
        revert with 0, 'experience already expired'
    if not stor5[cd[4]]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[cd[4]] - 1 < tokenByIndex.length
    if calldata.size < 24:
        if tokenByIndex[stor5[cd[4]] - 1].field_256 != msg.sender:
            revert with 0, 'Only owner of NFT can expire it'
    else:
        if trustedForwarderAddress != msg.sender:
            if tokenByIndex[stor5[cd[4]] - 1].field_256 != msg.sender:
                revert with 0, 'Only owner of NFT can expire it'
        else:
            if tokenByIndex[stor5[cd[4]] - 1].field_256 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Only owner of NFT can expire it'
    stor15[cd[4]] = 1
    emit 0xc432839f: cd[4]
    stor12 = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if calldata.size < 24:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
    else:
        if trustedForwarderAddress != msg.sender:
            if arg1 == msg.sender:
                revert with 0, 'ERC721: approve to caller'
        else:
            if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'ERC721: approve to caller'
    if calldata.size < 24:
        stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        if trustedForwarderAddress != msg.sender:
            stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        else:
            stor7[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        if calldata.size < 24:
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            if trustedForwarderAddress != msg.sender:
                emit ApprovalForAll(arg2, msg.sender, arg1);
            else:
                emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if calldata.size < 24:
        if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
            if calldata.size < 24:
                if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                    revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                if trustedForwarderAddress != msg.sender:
                    if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if not stor7[stor4[stor5[arg2] - 1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    else:
        if trustedForwarderAddress != msg.sender:
            if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
                if calldata.size < 24:
                    if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if trustedForwarderAddress != msg.sender:
                        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                    else:
                        if not stor7[stor4[stor5[arg2] - 1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != tokenByIndex[stor5[arg2] - 1].field_256:
                if calldata.size < 24:
                    if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if trustedForwarderAddress != msg.sender:
                        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                    else:
                        if not stor7[stor4[stor5[arg2] - 1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    if calldata.size < 24:
        if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
            if not stor5[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if trustedForwarderAddress != msg.sender:
            if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
                if not stor5[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg3] != msg.sender:
                    if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != tokenByIndex[stor5[arg3] - 1].field_256:
                if not stor5[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg3] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    if not stor7[stor4[stor5[arg3] - 1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor5[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        require stor5[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_6c22f610(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if stor12 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor12 = 2
    if arg1 > stor14:
        revert with 0, 'no such experience card'
    if stor15[arg1]:
        revert with 0, 'experience expired'
    stor14++
    stor14++
    if not address(arg3):
        revert with 0, 'ERC721: mint to the zero address'
    if stor5[stor14]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg3)][1][stor14]:
        tokenOfOwnerByIndex[address(arg3)]++
        tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = stor14
        tokenOfOwnerByIndex[address(arg3)][1][stor14] = tokenOfOwnerByIndex[address(arg3)]
    if stor5[stor14]:
        require stor5[stor14] - 1 < tokenByIndex.length
        tokenByIndex[stor5[stor14] - 1].field_256 = address(arg3)
        tokenByIndex[stor5[stor14] - 1].field_416 = 0
        emit Transfer(0, address(arg3), stor14);
        if not stor5[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 201 len 23] >> 72,
                        0
        require stor5[arg1] - 1 < tokenByIndex.length
        if not tokenByIndex[stor5[arg1] - 1].field_256:
            revert with 0, 'ERC721: mint to the zero address'
        if stor5[stor14]:
            revert with 0, 'ERC721: token already minted'
        if not tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][stor14]:
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]++
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = stor14
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][stor14] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        if stor5[stor14]:
            require stor5[stor14] - 1 < tokenByIndex.length
            tokenByIndex[stor5[stor14] - 1].field_256 = tokenByIndex[stor5[arg1] - 1].field_256
            emit Transfer(0, tokenByIndex[stor5[arg1] - 1].field_256, stor14);
            sub_be8b3f68[stor14] = arg1
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[arg1]:
                revert with 0, 
                            32,
                            41,
                            0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 297 len 23] >> 72,
                            0
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = stor14
            tokenByIndex[tokenByIndex.length].field_256 = tokenByIndex[stor5[arg1] - 1].field_256
            stor5[stor14] = tokenByIndex.length
            emit Transfer(0, tokenByIndex[stor5[arg1] - 1].field_256, stor14);
            sub_be8b3f68[stor14] = arg1
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[arg1]:
                revert with 0, 
                            32,
                            41,
                            0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 361 len 23] >> 72,
                            0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor14
        tokenByIndex[tokenByIndex.length].field_256 = address(arg3)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[stor14] = tokenByIndex.length
        emit Transfer(0, address(arg3), stor14);
        if not stor5[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 265 len 23] >> 72,
                        0
        require stor5[arg1] - 1 < tokenByIndex.length
        if not tokenByIndex[stor5[arg1] - 1].field_256:
            revert with 0, 'ERC721: mint to the zero address'
        if stor5[stor14]:
            revert with 0, 'ERC721: token already minted'
        if not tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][stor14]:
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]++
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = stor14
            tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][stor14] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        if stor5[stor14]:
            require stor5[stor14] - 1 < tokenByIndex.length
            tokenByIndex[stor5[stor14] - 1].field_256 = tokenByIndex[stor5[arg1] - 1].field_256
            emit Transfer(0, tokenByIndex[stor5[arg1] - 1].field_256, stor14);
            sub_be8b3f68[stor14] = arg1
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[arg1]:
                revert with 0, 
                            32,
                            41,
                            0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 361 len 23] >> 72,
                            0
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = stor14
            tokenByIndex[tokenByIndex.length].field_256 = tokenByIndex[stor5[arg1] - 1].field_256
            stor5[stor14] = tokenByIndex.length
            emit Transfer(0, tokenByIndex[stor5[arg1] - 1].field_256, stor14);
            sub_be8b3f68[stor14] = arg1
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[stor14]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            stor10[stor14][].field_0 = Array(len=arg2.length, data=arg2[all])
            if not stor5[arg1]:
                revert with 0, 
                            32,
                            41,
                            0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 425 len 23] >> 72,
                            0
    ('bool', ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))
    require stor5[arg1] - 1 < tokenByIndex.length
    emit 0x2ddfe7b6: arg1, address(arg3), tokenByIndex[stor5[arg1] - 1].field_256, stor14, stor14
    stor12 = 1
    return 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[32] = 10
    mem[96] = stor10[arg1].length
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var39001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len ceil32(stor10[arg1].length)])
    if stor10[arg1].length > 0:
        if not bool(baseURI.length):
            mem[ceil32(stor10[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor10[arg1].length)] = mem[128 len ceil32(stor10[arg1].length)]
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 160] = 32
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 192] = mem[ceil32(stor10[arg1].length) + 128]
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]
            if ceil32(mem[ceil32(stor10[arg1].length) + 128]) > mem[ceil32(stor10[arg1].length) + 128]:
                mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + mem[ceil32(stor10[arg1].length) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor10[arg1].length) + 128], data=mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < baseURI.length.field_1:
                mem[ceil32(stor10[arg1].length) + idx + 160] = baseURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor10[arg1].length)] = mem[128 len ceil32(stor10[arg1].length)]
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 160] = 32
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 192] = mem[ceil32(stor10[arg1].length) + 128]
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]
            if ceil32(mem[ceil32(stor10[arg1].length) + 128]) > mem[ceil32(stor10[arg1].length) + 128]:
                mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + mem[ceil32(stor10[arg1].length) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor10[arg1].length) + 128], data=mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + stor10[arg1].length + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]), 
        var43001 = ceil32(stor10[arg1].length)
        mem[64] = stor10[arg1].length
        if ceil32(stor10[arg1].length) <= stor10[arg1].length:
            _848 = mem[ceil32(stor10[arg1].length) + 128]
            mem[stor10[arg1].length + 32] = mem[ceil32(stor10[arg1].length) + 128]
            mem[stor10[arg1].length + 64 len ceil32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]
            if ceil32(_848) > _848:
                mem[stor10[arg1].length + _848 + 64] = 0
            return 32, mem[stor10[arg1].length + 32 len ceil32(_848) + 32]
        _862 = mem[ceil32(stor10[arg1].length) + 128]
        mem[stor10[arg1].length + 32] = mem[ceil32(stor10[arg1].length) + 128]
        mem[stor10[arg1].length + 64 len ceil32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(mem[ceil32(stor10[arg1].length) + 128])]
        if ceil32(_862) > _862:
            mem[stor10[arg1].length + _862 + 64] = 0
        return 32, mem[stor10[arg1].length + 32 len ceil32(_862) + 32]
    if not arg1:
        mem[ceil32(stor10[arg1].length) + 128] = 1
        mem[ceil32(stor10[arg1].length) + 160] = '0'
        if not bool(baseURI.length):
            mem[ceil32(stor10[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 224] = '0'
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor10[arg1].length) + 192]
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor10[arg1].length) + 192])] = mem[ceil32(stor10[arg1].length) + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor10[arg1].length) + 192]) > mem[ceil32(stor10[arg1].length) + 192]:
                mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + mem[ceil32(stor10[arg1].length) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor10[arg1].length) + 192], data=mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor10[arg1].length) + 192])]), 
        if bool(baseURI.length) != 1:
            mem[64] = 1
            _859 = mem[ceil32(stor10[arg1].length) + 192]
            mem[33] = mem[ceil32(stor10[arg1].length) + 192]
            mem[65 len ceil32(mem[ceil32(stor10[arg1].length) + 192])] = mem[ceil32(stor10[arg1].length) + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 192])]
            if ceil32(_859) > _859:
                mem[_859 + 65] = 0
            return memory
              from mem[64]
               len ceil32(_859) + -mem[64] + 65
        idx = 0
        s = 0
        while idx < baseURI.length.field_1:
            mem[ceil32(stor10[arg1].length) + idx + 224] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 224] = '0'
        mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 225] = 32
        mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor10[arg1].length) + 192]
        mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor10[arg1].length) + 192])] = mem[ceil32(stor10[arg1].length) + 224 len ceil32(mem[ceil32(stor10[arg1].length) + 192])]
        if ceil32(mem[ceil32(stor10[arg1].length) + 192]) > mem[ceil32(stor10[arg1].length) + 192]:
            mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + mem[ceil32(stor10[arg1].length) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor10[arg1].length) + 192], data=mem[ceil32(stor10[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor10[arg1].length) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor10[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]), 
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor10[arg1].length) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1618 = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1618) > _1618:
                    mem[s + _1618 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1618) + 32]
            _1627 = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1627) > _1627:
                mem[s + _1627 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1627) + 32]
    else:
        mem[ceil32(stor10[arg1].length) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]), 
            mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor10[arg1].length) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1620 = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1620) > _1620:
                    mem[s + _1620 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1620) + 32]
            _1630 = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1630) > _1630:
                mem[s + _1630 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1630) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 11)))), 1)
    idx = 0
    t = 0
    while idx < baseURI.length.field_1:
        mem[ceil32(stor10[arg1].length) + ceil32(s) + idx + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor10[arg1].length) + 160 len ceil32(s)]
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor10[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor10[arg1].length) + ceil32(s) + 160]:
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor10[arg1].length) + ceil32(s) + 160] + 256] = 0
    return Array(len=mem[ceil32(stor10[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor10[arg1].length) + ceil32(s) + 160])]), 
}



}
