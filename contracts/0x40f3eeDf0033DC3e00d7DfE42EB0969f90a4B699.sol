contract main {




// =====================  Runtime code  =====================


const getVersion = 1


uint8 initialized; offset 160
address owner;
uint256 stor1;
address paymentAddress;
address recipientAddress;
uint256 offerPrice;
uint8 payToAcceptOffer;
uint8 payToMakeOffer; offset 8
uint8 locked; offset 16
uint256 stor5; offset 16
uint256 stor5; offset 8
uint256 stor5;
array of struct sub_62d08ff5;
array of struct stor7;
array of struct stor8;
array of struct stor9;

function initialized() payable {
    return bool(initialized)
}

function offerPrice() payable {
    return offerPrice
}

function recipientAddress() payable {
    return recipientAddress
}

function sub_62d08ff5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_62d08ff5[address(arg1)][arg2].field_0
}

function paymentAddress() payable {
    return paymentAddress
}

function sub_6425cb05(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    return sub_62d08ff5[address(arg1)][arg2][arg3].field_0, 
           sub_62d08ff5[address(arg1)][arg2][arg3].field_256,
           sub_62d08ff5[address(arg1)][arg2][arg3].field_512
}

function payToAcceptOffer() payable {
    return bool(payToAcceptOffer)
}

function getOwner() payable {
    return owner
}

function locked() payable {
    return bool(locked)
}

function payToMakeOffer() payable {
    return bool(payToMakeOffer)
}

function _fallback() payable {
    revert
}

function toggleLocked() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(240, 0, stor5.field_16) = Mask(240, 0, not locked)
}

function changeOfferPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    offerPrice = arg1
}

function togglePayToMakeOffer() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor5.field_8) = Mask(248, 0, not payToMakeOffer)
}

function togglePayToAcceptOffer() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor5.field_0) = not payToAcceptOffer or Mask(248, 8, uint256(stor5.field_0))
}

function changeRecipientAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    recipientAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function init(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if initialized:
        revert with 0, 'Already initialized'
    stor1 = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, stor1) or Mask(96, 160, owner)
    emit OwnerSet(0, msg.sender);
    paymentAddress = arg1
    recipientAddress = arg2
}

function sub_2ed7d3d4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[0] = arg2
    mem[32] = sha3(msg.sender, sha3(address(arg1), 8))
    mem[64] = (32 * stor8[address(arg1)][msg.sender][arg2].field_0) + 128
    mem[96] = stor8[address(arg1)][msg.sender][arg2].field_0
    s = 128
    idx = 0
    while idx < stor8[address(arg1)][msg.sender][arg2].field_0:
        mem[0] = sha3(arg2, sha3(msg.sender, sha3(address(arg1), 8)))
        _15 = mem[64]
        mem[64] = mem[64] + 96
        mem[_15] = stor8[address(arg1)][msg.sender][arg2][idx].field_0
        mem[_15 + 32] = stor8[address(arg1)][msg.sender][arg2][idx].field_256
        mem[_15 + 64] = stor8[address(arg1)][msg.sender][arg2][idx].field_512
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _17:
        _23 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_23 + 44 len 20]
        mem[s + 64] = mem[_23 + 76 len 20]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16 + (96 * _17) + -mem[64] + 64
}

function sub_9856a729(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if locked:
        revert with 0, 'Contract is locked'
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of offer NFT'
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_0 = 0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_256 = 0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_512 = 0
    stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 = 0
    idx = 0
    while 3 * stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 > idx:
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_0 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_256 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_512 = 0
        idx = idx + 3
        continue 
}

function sub_be858c52(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if locked:
        revert with 0, 'Contract is locked'
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of NFT'
    stor7[address(arg1)][arg2].field_0++
    stor7[address(arg1)][arg2][stor7[address(arg1)][arg2].field_0].field_0 = sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    stor7[address(arg1)][arg2][stor7[address(arg1)][arg2].field_0].field_256 = sub_62d08ff5[address(arg1)][arg2][arg3].field_256
    stor7[address(arg1)][arg2][stor7[address(arg1)][arg2].field_0].field_512 = sub_62d08ff5[address(arg1)][arg2][arg3].field_512
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_0 = 0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_256 = 0
    sub_62d08ff5[address(arg1)][arg2][arg3].field_512 = 0
    stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 = 0
    idx = 0
    while 3 * stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 > idx:
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_0 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_256 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_512 = 0
        idx = idx + 3
        continue 
}

function sub_ccb6db99(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 7)
    mem[64] = (32 * stor7[address(arg1)][arg2].field_0) + 128
    mem[96] = stor7[address(arg1)][arg2].field_0
    if not stor7[address(arg1)][arg2].field_0:
        mem[(32 * stor7[address(arg1)][arg2].field_0) + 128] = 32
        mem[(32 * stor7[address(arg1)][arg2].field_0) + 160] = stor7[address(arg1)][arg2].field_0
        idx = 0
        s = (32 * stor7[address(arg1)][arg2].field_0) + 192
        t = 128
        while idx < stor7[address(arg1)][arg2].field_0:
            _22 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_22 + 44 len 20]
            mem[s + 64] = mem[_22 + 76 len 20]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from (32 * stor7[address(arg1)][arg2].field_0) + 128
           len (160 * stor7[address(arg1)][arg2].field_0) + 64
    mem[0] = sha3(arg2, sha3(address(arg1), 7))
    mem[64] = (32 * stor7[address(arg1)][arg2].field_0) + 224
    mem[(32 * stor7[address(arg1)][arg2].field_0) + 128] = stor7[address(arg1)][arg2].field_0
    mem[(32 * stor7[address(arg1)][arg2].field_0) + 160] = stor7[address(arg1)][arg2].field_256
    mem[(32 * stor7[address(arg1)][arg2].field_0) + 192] = stor7[address(arg1)][arg2].field_512
    mem[128] = (32 * stor7[address(arg1)][arg2].field_0) + 128
    s = 160
    idx = 1
    while idx < stor7[address(arg1)][arg2].field_0:
        mem[0] = sha3(arg2, sha3(address(arg1), 7))
        _24 = mem[64]
        mem[64] = mem[64] + 96
        mem[_24] = stor7[address(arg1)][arg2][idx].field_0
        mem[_24 + 32] = stor7[address(arg1)][arg2][idx].field_256
        mem[_24 + 64] = stor7[address(arg1)][arg2][idx].field_512
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    _29 = mem[64]
    mem[mem[64]] = 32
    _30 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _30:
        _36 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_36 + 44 len 20]
        mem[s + 64] = mem[_36 + 76 len 20]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _29 + (96 * _30) + -mem[64] + 64
}

function sub_ed0de7c7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 9)
    mem[64] = (32 * stor9[address(arg1)][arg2].field_0) + 128
    mem[96] = stor9[address(arg1)][arg2].field_0
    if not stor9[address(arg1)][arg2].field_0:
        mem[(32 * stor9[address(arg1)][arg2].field_0) + 128] = 32
        mem[(32 * stor9[address(arg1)][arg2].field_0) + 160] = stor9[address(arg1)][arg2].field_0
        idx = 0
        s = (32 * stor9[address(arg1)][arg2].field_0) + 192
        t = 128
        while idx < stor9[address(arg1)][arg2].field_0:
            _22 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_22 + 44 len 20]
            mem[s + 64] = mem[_22 + 76 len 20]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from (32 * stor9[address(arg1)][arg2].field_0) + 128
           len (160 * stor9[address(arg1)][arg2].field_0) + 64
    mem[0] = sha3(arg2, sha3(address(arg1), 9))
    mem[64] = (32 * stor9[address(arg1)][arg2].field_0) + 224
    mem[(32 * stor9[address(arg1)][arg2].field_0) + 128] = stor9[address(arg1)][arg2].field_0
    mem[(32 * stor9[address(arg1)][arg2].field_0) + 160] = stor9[address(arg1)][arg2].field_256
    mem[(32 * stor9[address(arg1)][arg2].field_0) + 192] = stor9[address(arg1)][arg2].field_512
    mem[128] = (32 * stor9[address(arg1)][arg2].field_0) + 128
    s = 160
    idx = 1
    while idx < stor9[address(arg1)][arg2].field_0:
        mem[0] = sha3(arg2, sha3(address(arg1), 9))
        _24 = mem[64]
        mem[64] = mem[64] + 96
        mem[_24] = stor9[address(arg1)][arg2][idx].field_0
        mem[_24 + 32] = stor9[address(arg1)][arg2][idx].field_256
        mem[_24 + 64] = stor9[address(arg1)][arg2][idx].field_512
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    _29 = mem[64]
    mem[mem[64]] = 32
    _30 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _30:
        _36 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_36 + 44 len 20]
        mem[s + 64] = mem[_36 + 76 len 20]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _29 + (96 * _30) + -mem[64] + 64
}

function sub_1864b871(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if locked:
        revert with 0, 'Contract is locked'
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender not owner of NFT'
    require ext_code.size(address(arg1))
    call address(arg1).getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer NFT'
    if offerPrice > 0:
        if payToMakeOffer:
            require ext_code.size(paymentAddress)
            staticcall paymentAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Handler unable take payment for offer'
            require ext_code.size(paymentAddress)
            staticcall paymentAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Insufficient Balance for payment'
            require ext_code.size(paymentAddress)
            call paymentAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, recipientAddress, offerPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Payment error'
    sub_62d08ff5[address(arg3)][arg4].field_0++
    sub_62d08ff5[address(arg3)][arg4][sub_62d08ff5[address(arg3)][arg4].field_0].field_0 = arg2
    sub_62d08ff5[address(arg3)][arg4][sub_62d08ff5[address(arg3)][arg4].field_0].field_256 = msg.sender
    sub_62d08ff5[address(arg3)][arg4][sub_62d08ff5[address(arg3)][arg4].field_0].field_512 = address(arg1)
    stor8[address(arg1)][msg.sender][arg2].field_0++
    stor8[address(arg1)][msg.sender][arg2][stor8[address(arg1)][msg.sender][arg2].field_0].field_0 = arg4
    stor8[address(arg1)][msg.sender][arg2][stor8[address(arg1)][msg.sender][arg2].field_0].field_256 = msg.sender
    stor8[address(arg1)][msg.sender][arg2][stor8[address(arg1)][msg.sender][arg2].field_0].field_512 = address(arg3)
}

function acceptOffer(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if locked:
        revert with 0, 'Contract is locked'
    require arg3 < sub_62d08ff5[address(arg1)][arg2].field_0
    require ext_code.size(arg1)
    call arg1.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of NFT'
    require ext_code.size(sub_62d08ff5[address(arg1)][arg2][arg3].field_512)
    call sub_62d08ff5[address(arg1)][arg2][arg3].field_512.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_62d08ff5[address(arg1)][arg2][arg3].field_256:
        revert with 0, 'NFT not owned by offerer'
    require ext_code.size(sub_62d08ff5[address(arg1)][arg2][arg3].field_512)
    call sub_62d08ff5[address(arg1)][arg2][arg3].field_512.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer offer NFT'
    require ext_code.size(arg1)
    call arg1.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer NFT'
    if offerPrice > 0:
        if payToAcceptOffer:
            require ext_code.size(paymentAddress)
            staticcall paymentAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Handler unable take payment for offer'
            require ext_code.size(paymentAddress)
            staticcall paymentAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Insufficient Balance for payment'
            require ext_code.size(paymentAddress)
            call paymentAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, recipientAddress, offerPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Payment error'
    require ext_code.size(sub_62d08ff5[address(arg1)][arg2][arg3].field_512)
    call sub_62d08ff5[address(arg1)][arg2][arg3].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_62d08ff5[address(arg1)][arg2][arg3].field_256, msg.sender, sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, sub_62d08ff5[address(arg1)][arg2][arg3].field_256, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_62d08ff5[address(arg1)][arg2].field_0 = 0
    idx = 0
    while 3 * sub_62d08ff5[address(arg1)][arg2].field_0 > idx:
        sub_62d08ff5[address(arg1)][arg2][idx].field_0 = 0
        sub_62d08ff5[address(arg1)][arg2][idx].field_256 = 0
        sub_62d08ff5[address(arg1)][arg2][idx].field_512 = 0
        idx = idx + 3
        continue 
    stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 = 0
    idx = 0
    while 3 * stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0].field_0 > idx:
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_0 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_256 = 0
        stor8[stor6[address(arg1)][arg2][arg3].field_512][stor6[address(arg1)][arg2][arg3].field_256][stor6[address(arg1)][arg2][arg3].field_0][idx].field_512 = 0
        idx = idx + 3
        continue 
    stor9[address(arg1)][arg2].field_0++
    stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_0 = sub_62d08ff5[address(arg1)][arg2][arg3].field_0
    stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_256 = sub_62d08ff5[address(arg1)][arg2][arg3].field_256
    stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_512 = sub_62d08ff5[address(arg1)][arg2][arg3].field_512
}



}
