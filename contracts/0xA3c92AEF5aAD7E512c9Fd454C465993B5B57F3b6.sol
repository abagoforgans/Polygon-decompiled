contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address shardRegistryAddress;
uint256 stor0;
address shardOfferingAddress;
uint256 stor1;
address currentShotgunClauseAddress;
address offererAddress;
address sub_5738ce9eAddress;
address owner;
address stor6;
address sub_6112a8b8Address;
array of struct stor8;
array of struct stor9;
mapping of uint256 stor10;
uint256 shotgunCounter;

function shardOfferingAddress() {
    return address(shardOfferingAddress)
}

function offererAddress() {
    return offererAddress
}

function sub_5738ce9e(?) {
    return sub_5738ce9eAddress
}

function sub_6112a8b8(?) {
    return sub_6112a8b8Address
}

function getOwner() {
    return owner
}

function shardRegistryAddress() {
    return address(shardRegistryAddress)
}

function shotgunCounter() {
    return shotgunCounter
}

function currentShotgunClause() {
    return currentShotgunClauseAddress
}

function _fallback() payable {
  stop
}

function checkShotgunState() {
    if shotgunCounter != 0:
        require shotgunCounter - 1 < stor9.length
        require ext_code.size(stor9[stor11].field_0)
        staticcall stor9[stor11].field_0.shotgunEnacted() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function transferShards(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor10[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[17557 len 36], mem[200 len 28]
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '[transferShards] Transfer failed'
    emit ShardsCollected(arg1, arg2, msg.sender);
}

function sub_9383be08(?) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17980 len 38], mem[202 len 26]
    if address(shardOfferingAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17395 len 38], mem[202 len 26]
    require ext_code.size(arg7)
    call arg7.0xeec610d2 with:
         gas gas_remaining wei
        args 0, arg1, arg2, arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
}

function checkLock() {
    if not address(shardOfferingAddress):
        return 0
    if not address(shardRegistryAddress):
        return 0
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        mem[100] = stor8[idx].field_0
        require ext_code.size(sub_5738ce9eAddress)
        staticcall sub_5738ce9eAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args stor8[idx].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if this.address == address(ext_call.return_data[0]):
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_93a6871e(?) {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = uint256(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function shotgunAddressArray() {
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
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

function sub_9731892c(?) {
    require calldata.size - 4 >= 96
    if address(shardRegistryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[17593 len 43], mem[207 len 21]
    create contract with 0 wei
                    code: code.data[11033 len 6307], address(arg1), arg2, address(shardRegistryAddress), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    currentShotgunClauseAddress = address(create.new_address)
    emit NewShotgun(address(create.new_address));
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).pause() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor9.length++
    stor9[stor9.length].field_0 = currentShotgunClauseAddress
    shotgunCounter++
    stor10[stor2] = shotgunCounter + 1
    return currentShotgunClauseAddress
}

function sub_34523d03(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17980 len 38], mem[202 len 26]
    if address(shardRegistryAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17395 len 38], mem[202 len 26]
    mem[ceil32(arg2.length) + 260] = arg3.length
    mem[ceil32(arg2.length) + 292 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 292] = 0
    require ext_code.size(arg5)
    call arg5.0xd5179fb1 with:
         gas gas_remaining wei
        args 0, arg1, 128, ceil32(arg2.length) + 160, arg4, arg2.length, arg2[all], 0, mem[arg2.length + 292 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
}

function redeem() {
    require ext_code.size(address(shardRegistryAddress))
    staticcall address(shardRegistryAddress).cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardRegistryAddress))
    staticcall address(shardRegistryAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 64, code.data[17433 len 64]
    if msg.sender != tx.origin:
        revert with 0, '[redeem] Caller must be wallet'
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor8[idx].field_0
        require ext_code.size(sub_5738ce9eAddress)
        call sub_5738ce9eAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor8[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit NftRedeemed(msg.sender);
}

function pullLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[17708 len 33], mem[197 len 31]
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).unpause() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg3), arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_6112a8b8Address)
    call sub_6112a8b8Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[17944 len 36], Mask(224, 0, arg6)
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[17671 len 37], Mask(216, 0, arg6)
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).pause() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintReservedShards(address arg1) {
    require calldata.size - 4 >= 32
    if owner == arg1:
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).hasClaimedShards(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[17901 len 43], mem[207 len 21]
        require ext_code.size(address(shardOfferingAddress))
        call address(shardOfferingAddress).claimShards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).liqProviderCutInShards() with:
                gas gas_remaining wei
    else:
        if stor6 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[17778 len 45], mem[209 len 19]
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).hasClaimedShards(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[17901 len 43], mem[207 len 21]
        require ext_code.size(address(shardOfferingAddress))
        call address(shardOfferingAddress).claimShards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).artistCutInShards() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardRegistryAddress))
    call address(shardRegistryAddress).mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '[mintReservedShards] Mint failed'
    emit code.data[17823 len 32]: arg1, ext_call.return_data[0]
}

function enactShotgun() {
    if not stor10[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[17741 len 37], mem[201 len 27]
    require ext_code.size(msg.sender)
    staticcall msg.sender.initialClaimantAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.claimWinner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        require ext_code.size(msg.sender)
        staticcall msg.sender.claimWinner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] == 2:
            require ext_code.size(address(shardRegistryAddress))
            call address(shardRegistryAddress).unpause() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit ShotgunEnacted(msg.sender);
    else:
        require ext_code.size(address(shardRegistryAddress))
        staticcall address(shardRegistryAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shardRegistryAddress))
        call address(shardRegistryAddress).burn(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = address(ext_call.return_data[0])
            mem[164] = stor8[idx].field_0
            require ext_code.size(sub_5738ce9eAddress)
            call sub_5738ce9eAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0]), stor8[idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require ext_code.size(address(shardRegistryAddress))
        call address(shardRegistryAddress).unpause() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ShotgunEnacted(msg.sender);
}

function checkOfferingAndIssue() {
    require ext_code.size(address(shardRegistryAddress))
    staticcall address(shardRegistryAddress).cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardRegistryAddress))
    staticcall address(shardRegistryAddress).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[17340 len 55], mem[219 len 9]
    require ext_code.size(address(shardOfferingAddress))
    staticcall address(shardOfferingAddress).hasClaimedShards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 60, code.data[17497 len 60], mem[224 len 4]
    require ext_code.size(address(shardOfferingAddress))
    staticcall address(shardOfferingAddress).offeringCompleted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardOfferingAddress))
    if not ext_call.return_data[0]:
        staticcall address(shardOfferingAddress).offeringDeadline() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp <= ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[17855 len 46], mem[210 len 18]
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).offeringCompleted() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[17855 len 46], mem[210 len 18]
    staticcall address(shardOfferingAddress).offeringCompleted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(shardOfferingAddress))
    if ext_call.return_data[0]:
        staticcall address(shardOfferingAddress).getSubEther(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(shardOfferingAddress))
            call address(shardOfferingAddress).claimShards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(shardOfferingAddress))
            staticcall address(shardOfferingAddress).getSubShards(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(shardRegistryAddress))
            call address(shardRegistryAddress).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[17636 len 35], mem[199 len 29]
            emit code.data[17823 len 32]: msg.sender, ext_call.return_data[0]
        else:
            if msg.sender == offererAddress:
                require ext_code.size(address(shardOfferingAddress))
                call address(shardOfferingAddress).claimShards(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(shardOfferingAddress))
                staticcall address(shardOfferingAddress).offererShardAmount() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(shardRegistryAddress))
                call address(shardRegistryAddress).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[17636 len 35], mem[199 len 29]
                emit code.data[17823 len 32]: msg.sender, ext_call.return_data[0]
    else:
        call address(shardOfferingAddress).wrapUpOffering() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).totalShardsClaimed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shardRegistryAddress))
        staticcall address(shardRegistryAddress).cap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).artistCutInShards() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(shardOfferingAddress))
        staticcall address(shardOfferingAddress).liqProviderCutInShards() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > -ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(shardRegistryAddress))
        call address(shardRegistryAddress).mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args offererAddress, -2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 35, code.data[17636 len 35], mem[391 len 29]
        emit code.data[17823 len 32]: msg.sender, -2 * ext_call.return_data[0]
}



}
