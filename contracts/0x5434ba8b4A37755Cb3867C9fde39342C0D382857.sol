contract main {




// =====================  Runtime code  =====================


#
#  - buyWithPaymentOnly(address arg1, uint256 arg2, string arg3)
#
address owner;
array of uint256 metadataBaseUri;
uint8 initialized;
address nftAddress; offset 8
address paymentAddress;
address recipientAddress;
address couponAddress;
uint256 price;
mapping of struct stor8;
array of struct stor9;
mapping of uint256 preMintCount;
mapping of struct stor11;
mapping of struct stor12;
mapping of uint256 preTransferCount;

function initialized() {
    return bool(initialized)
}

function metadataBaseUri() {
    return metadataBaseUri[0 len metadataBaseUri.length]
}

function recipientAddress() {
    return recipientAddress
}

function nftAddress() {
    return nftAddress
}

function paymentAddress() {
    return paymentAddress
}

function couponAddress() {
    return couponAddress
}

function getOwner() {
    return owner
}

function price() {
    return price
}

function getPreTransferCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return preTransferCount[arg1]
}

function getPreMintCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return preMintCount[address(arg1)]
}

function _fallback() payable {
    revert
}

function changeNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nftAddress = arg1
}

function changeCoupon(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    couponAddress = arg1
}

function changePayment(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    paymentAddress = arg1
}

function changeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    recipientAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPaymentDecimals() {
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferNftOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[320] = stor11[arg1].field_0
    idx = 320
    s = 0
    while stor11[arg1].length + 320 > idx + 32:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, stor11[arg1].field_256, stor11[arg1].field_512, stor11[arg1].length, mem[320 len ceil32(stor11[arg1].length)]
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    price = 10^ext_call.return_data[31 len 1] * arg1
}

function getPreTransferByIndex(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[320] = stor12[arg1][arg2].field_0
    idx = 320
    s = 0
    while stor12[arg1][arg2].length + 320 > idx + 32:
        mem[idx + 32] = stor12[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, 
           stor12[arg1][arg2].field_256,
           stor12[arg1][arg2].field_512,
           stor12[arg1][arg2].length,
           mem[320 len ceil32(stor12[arg1][arg2].length)]
}

function getPreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor8[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor8[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor8[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor8[address(arg1)][arg2].field_256,
           stor8[address(arg1)][arg2].length,
           mem[256 len ceil32(stor8[address(arg1)][arg2].length)]
}

function getPreMintByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor9[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor9[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor9[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor9[address(arg1)][arg2].field_256,
           stor9[address(arg1)][arg2].length,
           mem[256 len ceil32(stor9[address(arg1)][arg2].length)]
}

function bytes32ToStr(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = call.data[calldata.size]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
}

function stringToBytes32(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length:
        mem[ceil32(arg1.length) + 128] = mem[128]
    else:
        mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function updateTokenUri(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeMetadataBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    metadataBaseUri.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataBaseUri[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataBaseUri.length + 31 / 32 > idx:
        metadataBaseUri[idx] = 0
        idx = idx + 1
        continue 
}

function deletePreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor12[arg1][stor13[arg1]].field_0 = 0
    if 31 < stor12[arg1][stor13[arg1]].length:
        idx = 0
        while stor12[arg1][stor13[arg1]].length + 31 / 32 > idx:
            stor12[arg1][stor13[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg1][stor13[arg1]].field_256 = 0
    stor12[arg1][stor13[arg1]].field_512 = 0
    if 1 > preTransferCount[arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preTransferCount[arg1]--
    stor11[arg1].field_0 = 0
    if 31 < stor11[arg1].length:
        idx = 0
        while stor11[arg1].length + 31 / 32 > idx:
            stor11[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg1].field_256 = 0
    stor11[arg1].field_512 = 0
}

function deletePreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor9[address(arg1)][stor10[address(arg1)]].field_0 = 0
    if 31 < stor9[address(arg1)][stor10[address(arg1)]].length:
        idx = 0
        while stor9[address(arg1)][stor10[address(arg1)]].length + 31 / 32 > idx:
            stor9[address(arg1)][stor10[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[address(arg1)][stor10[address(arg1)]].field_256 = 0
    if 1 > preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preMintCount[address(arg1)]--
    stor8[address(arg1)][arg2].field_0 = 0
    if 31 < stor8[address(arg1)][arg2].length:
        idx = 0
        while stor8[address(arg1)][arg2].length + 31 / 32 > idx:
            stor8[address(arg1)][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[address(arg1)][arg2].field_256 = 0
}

function mint(address arg1, uint256 arg2, string arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg3.length) + 260] = arg4.length
    mem[ceil32(arg3.length) + 292 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 292] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x2fb102cf with:
         gas gas_remaining wei
        args 0, 0, arg2, 128, ceil32(arg3.length) + 160, arg3.length, arg3[all], 0, mem[arg3.length + 292 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeName(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg1.length) + 196] = arg2.length
    mem[ceil32(arg1.length) + 228 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 228] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x86575e40 with:
         gas gas_remaining wei
        args 0, 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length], arg2[all], mem[ceil32(arg1.length) + arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkPreMintImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function checkPreTransferImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function sub_5f6d3ac3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 320
    s = 0
    while stor11[arg1].length + 320 > idx + 32:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor11[arg1].length) + 352 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(stor11[arg1].length) + 352] = 0
    mem[arg2.length + ceil32(stor11[arg1].length) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor11[arg1].length) + arg2.length + 352 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[(2 * arg2.length) + ceil32(stor11[arg1].length) + 352] = 0
    hash = sha256hash(mem[arg2.length + ceil32(stor11[arg1].length) + 352 len arg2.length]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor11[arg1].field_256 != hash:
        revert with 0, 'Code does not match'
    require ext_code.size(nftAddress)
    call nftAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor11[arg1].field_512, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor11[arg1].field_0 = 0
    if 31 < stor11[arg1].length:
        idx = 0
        while stor11[arg1].length + 31 / 32 > idx:
            stor11[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg1].field_256 = 0
    stor11[arg1].field_512 = 0
    stor12[arg1][stor13[arg1]].field_0 = 0
    if 31 < stor12[arg1][stor13[arg1]].length:
        idx = 0
        while stor12[arg1][stor13[arg1]].length + 31 / 32 > idx:
            stor12[arg1][stor13[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[arg1][stor13[arg1]].field_256 = 0
    stor12[arg1][stor13[arg1]].field_512 = 0
    if 1 > preTransferCount[arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preTransferCount[arg1]--
}

function addPreTransfer(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    mem[128] = stor11[arg1].field_0
    idx = 128
    s = 0
    while stor11[arg1].length + 96 > idx:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor11[arg1].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreTransfer'
    if preTransferCount[arg1] + 1 < preTransferCount[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    preTransferCount[arg1]++
    stor11[arg1].field_0 = 0
    stor11[arg1].field_1 = 7
    stor11[arg1].field_8 = 0x7061796c6f6164000000000000000000000000000000000000000000000000
    idx = 0
    while stor11[arg1].length + 31 / 32 > idx:
        stor11[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11[arg1].field_256 = arg2
    stor11[arg1].field_512 = msg.sender
    if 31 >= stor11[arg1].length:
        stor12[arg1][stor13[arg1]].field_0 = stor11[arg1].field_0
        idx = 0
        while stor12[arg1][stor13[arg1]].length + 31 / 32 > idx:
            stor12[arg1][stor13[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor12[arg1][stor13[arg1]].field_0 = Mask(255, 1, stor11[arg1].field_0 and (256 * not stor11[arg1].field_0) - 1) + 1
        if not Mask(255, 1, stor11[arg1].field_0 and (256 * not stor11[arg1].field_0) - 1):
            idx = 0
            while stor12[arg1][stor13[arg1]].length + 31 / 32 > idx:
                stor12[arg1][stor13[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                stor12[arg1][stor13[arg1]][s].field_0 = stor11[arg1][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor11[arg1].length + 31 / 32
            while stor12[arg1][stor13[arg1]].length + 31 / 32 > idx:
                stor12[arg1][stor13[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor12[arg1][stor13[arg1]].field_256 = stor11[arg1].field_256
    stor12[arg1][stor13[arg1]].field_512 = stor11[arg1].field_512
}

function addPreMint(address arg1, string arg2, uint256 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0x9ad9523200000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    require ext_code.size(nftAddress)
    staticcall nftAddress.tokenPayload(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if ext_call.success:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg3) >> 32 + 127
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
        require ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] + 32 <= return_data.size
        revert with 0, 'NFT Exists with this ID'
    mem[128] = stor8[address(arg1)][arg3].field_0
    idx = 128
    s = 0
    while stor8[address(arg1)][arg3].length + 96 > idx:
        mem[idx + 32] = stor8[address(arg1)][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor8[address(arg1)][arg3].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreMint'
    if preMintCount[address(arg1)] + 1 < preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    preMintCount[address(arg1)]++
    stor8[address(arg1)][arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor8[address(arg1)][arg3].field_256 = arg4
    if 31 >= stor8[address(arg1)][arg3].length:
        stor9[address(arg1)][stor10[address(arg1)]].field_0 = stor8[address(arg1)][arg3].field_0
        idx = 0
        while stor9[address(arg1)][stor10[address(arg1)]].length + 31 / 32 > idx:
            stor9[address(arg1)][stor10[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor9[address(arg1)][stor10[address(arg1)]].field_0 = Mask(255, 1, (256 * not stor8[address(arg1)][arg3].field_0) - 1 and stor8[address(arg1)][arg3].field_0) + 1
        if not Mask(255, 1, (256 * not stor8[address(arg1)][arg3].field_0) - 1 and stor8[address(arg1)][arg3].field_0):
            idx = 0
            while stor9[address(arg1)][stor10[address(arg1)]].length + 31 / 32 > idx:
                stor9[address(arg1)][stor10[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor8[address(arg1)][arg3].length + 31 / 32 > idx:
                stor9[address(arg1)][stor10[address(arg1)]][s].field_0 = stor8[address(arg1)][arg3][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor8[address(arg1)][arg3].length + 31 / 32
            while stor9[address(arg1)][stor10[address(arg1)]].length + 31 / 32 > idx:
                stor9[address(arg1)][stor10[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor9[address(arg1)][stor10[address(arg1)]].field_256 = stor8[address(arg1)][arg3].field_256
}



}
