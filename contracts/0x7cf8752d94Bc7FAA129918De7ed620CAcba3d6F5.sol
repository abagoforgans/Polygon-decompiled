contract main {




// =====================  Runtime code  =====================


const masterToken = 0x71b821aa52a49f32eed535fca6eb5aa130085978

const getLavaDomainTypehash = sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const getLavaPacketTypehash = sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365)


uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint256 burnedSignatures;
mapping of uint256 stor5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876;

function name() {
    return name[0 len name.length]
}

function getAllowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function signatureHashBurnStatus(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return burnedSignatures[arg1]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function burnedSignatures(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return burnedSignatures[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(arg2)]
    allowance[address(arg1)][address(arg2)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unmutateTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 >= 0
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, this.address);
    require ext_code.size(0x71b821aa52a49f32eed535fca6eb5aa130085978)
    call 0x71b821aa52a49f32eed535fca6eb5aa130085978.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function mutateTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 >= 0
    require ext_code.size(0x71b821aa52a49f32eed535fca6eb5aa130085978)
    call 0x71b821aa52a49f32eed535fca6eb5aa130085978.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function getLavaTypedDataHash(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg3 == 0x71b821aa52a49f32eed535fca6eb5aa130085978
    require arg2 >= 0
    require ext_code.size(0x71b821aa52a49f32eed535fca6eb5aa130085978)
    call 0x71b821aa52a49f32eed535fca6eb5aa130085978.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg2),
                  this.address,
                  arg1,
    return 0, 1
}

function getEIP712DomainHash(string arg1, string arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), Mask(8 * -arg2.length + ceil32(arg2.length) + 58, 0, 0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = sha3(arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = sha3(arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 352
       len 32
}

function getLavaPacketHash(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), Mask(8 * -arg1.length + ceil32(arg1.length) + 132, 0, 0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365))
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 224] = arg2
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 288] = arg4
    mem[ceil32(arg1.length) + 320] = arg5
    mem[ceil32(arg1.length) + 352] = arg6
    mem[ceil32(arg1.length) + 384] = arg7
    mem[ceil32(arg1.length) + 416] = arg8
    mem[ceil32(arg1.length) + 448] = arg9
    mem[ceil32(arg1.length) + 128] = 320
    mem[ceil32(arg1.length) + 480] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 480
       len 32
}

function burnSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 11
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'Lava Wallet'
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 1
    if arg10.length != 65:
        require 0 == arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) == arg3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require 0 == arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) == arg3
    require arg3 == msg.sender
    stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 2
    require not stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    return 1
}

function approveTokensWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 7
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'approve'
    require 7 == arg1.length
    idx = 0
    while idx < 7:
        require idx < arg1.length
        require idx < 7
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 11
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    return 1
}

function transferTokensWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 8
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'transfer'
    require 8 == arg1.length
    idx = 0
    while idx < 8:
        require idx < arg1.length
        require idx < 8
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 11
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    require arg6 <= balances[address(arg3)]
    balances[address(arg3)] -= arg6
    require arg6 <= allowance[address(arg3)][address(arg4)]
    allowance[address(arg3)][address(arg4)] -= arg6
    require balances[address(arg4)] + arg6 >= balances[address(arg4)]
    balances[address(arg4)] += arg6
    emit Transfer(arg6, arg3, arg4);
    return 1
}

function approveAndCallWithSignature(string arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg10.length
    mem[ceil32(arg1.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg1.length) + arg10.length + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg10.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 160] = 7
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 192] = 'approve'
    if 7 == arg1.length:
        require var18001 < 7
        require var18001 < arg1.length
        require var18001 < 7
        var18001 = var18001 + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(arg10.length) + 288
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 224] = 8
    mem[ceil32(arg1.length) + ceil32(arg10.length) + 256] = 'transfer'
    if 8 == arg1.length:
        require var23001 < 8
        require var23001 < arg1.length
        require var23001 < 8
        var23001 = var23001 + 1
        continue 
    if arg2:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.getRelayAuthority() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
        else:
            if arg2 != msg.sender:
                require ext_code.size(arg2) > 0
                require ext_code.size(arg2)
                call arg2.getRelayAuthority() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    if arg10.length != 65:
        require not arg3
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(0, sha3(sha3(0xfe454950373132446f6d61696e28737472696e6720636f6e74726163744e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Lava Wallet'), sha3('1'), stor0, this.address), sha3(sha3(0x294c6176615061636b657428737472696e67206d6574686f644e616d652c616464726573732072656c6179417574686f726974792c616464726573732066726f6d2c6164647265737320746f2c616464726573732077616c6c65742c75696e7432353620746f6b656e732c75696e743235362072656c61796572526577617264546f6b656e732c75696e7432353620657870697265732c75696e74323536206e6f6e6365), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + 192]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(signer)
    require this.address == arg5
    require block.number < arg8
    stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)] = 1
    require not stor7[0][sha3(('name', 'storFE45', 5478392522215761705780322457889217496551617131490712491173752133284728140271851263679254404659485766692323302209740852645587653368559786892524470984994137589867704489933510941837496362652256420227275606334483600597876), sha3('Lava Wallet'), sha3('1'), stor0, this.address)][sha3(('name', 'stor294C', 14422720065409924667670007356215679849537160973369440283293969197636920376761336624734648044736607504860058471528864178924609608674726462114456636968332013613532598817048996574565727829730654031289337898562218208822133202620064498495633982626385992054281284516800432302881379739293677772677019449882916924023603148130625349701484960896752587503928743281924195937659503638681564188865949556695909), sha3(arg1[all]), address(arg2), address(arg3), address(arg4), address(arg5), arg6, arg7, arg8, arg9)]
    require arg7 <= balances[address(arg3)]
    balances[address(arg3)] -= arg7
    require balances[address(msg.sender)] + arg7 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg7
    emit Transfer(arg7, arg3, msg.sender);
    allowance[address(arg3)][address(arg4)] = arg6
    emit Approval(arg6, arg3, arg4);
    require ext_code.size(arg4)
    call arg4.0x8f4ffcb1 with:
         gas gas_remaining wei
        args address(arg3), arg6, address(this.address), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
