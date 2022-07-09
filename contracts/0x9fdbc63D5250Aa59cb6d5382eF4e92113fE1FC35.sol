contract main {




// =====================  Runtime code  =====================


#
#  - operatorRedeem(address arg1, uint256 arg2, bytes arg3, bytes arg4, string arg5)
#  - operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4)
#
const decimals = 18

const granularity = 1

const relayHubVersion = '1.0.0'


address hubAddr;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of struct stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 allowance;
address gsnTrustedSignerAddress;
uint64 stor11;
address gsnFeeTargetAddress;
uint256 stor11;
uint256 gsnExtraGas;
address adminOperatorAddress;
uint32 stor14;
address pNetworkAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getHubAddr() payable {
    return hubAddr
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function pNetwork() payable {
    return address(pNetworkAddress)
}

function gsnExtraGas() payable {
    return gsnExtraGas
}

function gsnFeeTarget() payable {
    return address(gsnFeeTargetAddress)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function adminOperator() payable {
    return adminOperatorAddress
}

function gsnTrustedSigner() payable {
    return gsnTrustedSignerAddress
}

function _fallback() payable {
    revert
}

function setGSNExtraGas(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(pNetworkAddress) != msg.sender:
        revert with 0, 'Caller is not the owner'
    gsnExtraGas = arg1
}

function setFeeTarget(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(pNetworkAddress) != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not arg1:
        revert with 0, 'fee target is the zero address'
    address(gsnFeeTargetAddress) = arg1
}

function isOperatorFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return True
    if stor6[address(arg1)]:
        if not stor8[address(arg2)][address(arg1)]:
            return not bool(stor8[address(arg2)][address(arg1)])
    return bool(stor7[address(arg2)][address(arg1)])
}

function setTrustedSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(pNetworkAddress) != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6574727573746564207369676e657220697320746865207a65726f20616464726573,
                    mem[198 len 30]
    gsnTrustedSignerAddress = arg1
}

function setAdminOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminOperatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x774f6e6c79207468652061637475616c2061646d696e206f70657261746f722063616e206368616e67652074686520616464726573,
                    mem[217 len 11]
    emit AdminOperatorChange(adminOperatorAddress, arg1);
    adminOperatorAddress = arg1
}

function preRelayedCall(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function defaultOperators() payable {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function changePNetwork(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if address(pNetworkAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x734f6e6c792074686520704e6574776f726b2063616e206368616e6765207468652060704e6574776f726b60206163636f756e74,
                        mem[216 len 12]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0xfe704e6574776f726b2063616e6e6f7420626520746865207a65726f2061646472657373,
                        mem[200 len 28]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != address(pNetworkAddress):
            revert with 0, 
                        32,
                        52,
                        0x734f6e6c792074686520704e6574776f726b2063616e206368616e6765207468652060704e6574776f726b60206163636f756e74,
                        mem[ceil32(calldata.size) + 248 len 12]
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0xfe704e6574776f726b2063616e6e6f7420626520746865207a65726f2061646472657373,
                        mem[ceil32(calldata.size) + 232 len 28]
    ('bool', ('param', 'arg1'))
    address(pNetworkAddress) = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x214552433737373a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x654552433737373a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x214552433737373a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 233 len 27]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x654552433737373a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 231 len 29]
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if arg1 == msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x214552433737373a207265766f6b696e672073656c66206173206f70657261746f,
                        mem[197 len 31]
        if not stor6[address(arg1)]:
            if hubAddr != msg.sender:
                stor7[address(msg.sender)][address(arg1)] = 0
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor7[mem[calldata.size + 108 len 20]][address(arg1)] = 0
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
        else:
            if hubAddr != msg.sender:
                stor8[address(msg.sender)][address(arg1)] = 1
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor8[mem[calldata.size + 108 len 20]][address(arg1)] = 1
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        33,
                        0x214552433737373a207265766f6b696e672073656c66206173206f70657261746f,
                        mem[ceil32(calldata.size) + 229 len 31]
        if not stor6[address(arg1)]:
            if hubAddr != msg.sender:
                stor7[address(msg.sender)][address(arg1)] = 0
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor7[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = 0
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]);
        else:
            if hubAddr != msg.sender:
                stor8[address(msg.sender)][address(arg1)] = 1
                emit RevokedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor8[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = 1
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit RevokedOperator(arg1, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]);
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if hubAddr != msg.sender:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x734552433737373a20617574686f72697a696e672073656c66206173206f70657261746f,
                        mem[200 len 28]
        if not stor6[address(arg1)]:
            if hubAddr != msg.sender:
                stor7[address(msg.sender)][address(arg1)] = 1
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor7[mem[calldata.size + 108 len 20]][address(arg1)] = 1
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
        else:
            if hubAddr != msg.sender:
                stor8[address(msg.sender)][address(arg1)] = 0
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                stor8[mem[calldata.size + 108 len 20]][address(arg1)] = 0
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[ceil32(calldata.size) + calldata.size + 140 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 
                        32,
                        36,
                        0x734552433737373a20617574686f72697a696e672073656c66206173206f70657261746f,
                        mem[ceil32(calldata.size) + 232 len 28]
        if not stor6[address(arg1)]:
            if hubAddr != msg.sender:
                stor7[address(msg.sender)][address(arg1)] = 1
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor7[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = 1
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]);
        else:
            if hubAddr != msg.sender:
                stor8[address(msg.sender)][address(arg1)] = 0
                emit AuthorizedOperator(arg1, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                stor8[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = 0
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                emit AuthorizedOperator(arg1, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]);
}

function acceptRelayedCall(address arg1, address arg2, bytes arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg8.length) + 160
    mem[ceil32(arg3.length) + 128] = arg8.length
    mem[ceil32(arg3.length) + 160 len arg8.length] = arg8[all]
    mem[ceil32(arg3.length) + arg8.length + 160] = 0
    require arg8.length >= 64
    _4 = mem[ceil32(arg3.length) + 160]
    _5 = mem[ceil32(arg3.length) + 192]
    require mem[ceil32(arg3.length) + 192] <= 4294967296
    require mem[ceil32(arg3.length) + 192] + 64 <= arg8.length + 32
    require mem[mem[ceil32(arg3.length) + 192] + ceil32(arg3.length) + 160] <= 4294967296 and mem[ceil32(arg3.length) + 192] + mem[mem[ceil32(arg3.length) + 192] + ceil32(arg3.length) + 160] + 64 <= arg8.length + 32
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 160] = mem[mem[ceil32(arg3.length) + 192] + ceil32(arg3.length) + 160]
    _8 = mem[_5 + ceil32(arg3.length) + 160]
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 192 len ceil32(mem[_5 + ceil32(arg3.length) + 160])] = mem[_5 + ceil32(arg3.length) + 192 len ceil32(mem[_5 + ceil32(arg3.length) + 160])]
    if not _8 % 32:
        mem[_8 + ceil32(arg3.length) + ceil32(arg8.length) + 224] = _4
        mem[_8 + ceil32(arg3.length) + ceil32(arg8.length) + 192] = arg3.length + 240
        if Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg3.length) + arg8.length + 192 len -arg8.length + ceil32(arg8.length)] == 65:
            if mem[ceil32(arg3.length) + ceil32(arg8.length) + 224] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                if gsnTrustedSignerAddress != 0:
                    return 11, 64, 0
                else:
                    return 0, 64, 128, _4, address(arg2), arg4, arg5
            else:
                if gsnTrustedSignerAddress != 0:
                    return 11, 64, 0
                else:
                    return 0, 64, 128, _4, address(arg2), arg4, arg5
        else:
            if gsnTrustedSignerAddress != 0:
                return 11, 64, 0
            else:
                return 0, 64, 128, _4, address(arg2), arg4, arg5
    else:
        mem[floor32(_8) + ceil32(arg3.length) + ceil32(arg8.length) + 192] = mem[floor32(_8) + ceil32(arg3.length) + ceil32(arg8.length) + -(_8 % 32) + 224 len _8 % 32]
        mem[floor32(_8) + ceil32(arg3.length) + ceil32(arg8.length) + 224] = arg3.length + 240
        if Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg3.length) + arg8.length + 192 len -arg8.length + ceil32(arg8.length)] == 65:
            if mem[ceil32(arg3.length) + ceil32(arg8.length) + 224] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                if gsnTrustedSignerAddress != 0:
                    return 11, 64, 0
                else:
                    return 0, 64, 128, _4, address(arg2), arg4, arg5
            else:
                if gsnTrustedSignerAddress != 0:
                    return 11, 64, 0
                else:
                    return 0, 64, 128, _4, address(arg2), arg4, arg5
        else:
            if gsnTrustedSignerAddress != 0:
                return 11, 64, 0
            else:
                return 0, 64, 128, _4, address(arg2), arg4, arg5
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if hubAddr != msg.sender:
        if address(pNetworkAddress) != msg.sender:
            revert with 0, 32, 34, 0x214f6e6c792074686520704e6574776f726b2063616e206d696e7420746f6b656e73, mem[262 len 30]
        if not arg1:
            revert with 0, 32, 40, 0x7270546f6b656e3a2043616e6e6f74206d696e7420746f20746865207a65726f2061646472657373, mem[268 len 24]
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args 0, uint32(stor14), 0, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[160] = calldata.size
        mem[192 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 172 len 20] != address(pNetworkAddress):
            revert with 0, 
                        32,
                        34,
                        0x214f6e6c792074686520704e6574776f726b2063616e206d696e7420746f6b656e73,
                        mem[ceil32(calldata.size) + 294 len 30]
        if not arg1:
            revert with 0, 
                        32,
                        40,
                        0x7270546f6b656e3a2043616e6e6f74206d696e7420746f20746865207a65726f2061646472657373,
                        mem[ceil32(calldata.size) + 300 len 24]
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args address(pNetworkAddress), 0, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                arg2,
                96,
                128,
                0,
                0,
                address(pNetworkAddress),
                arg1,
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x744552433737373a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if hubAddr != msg.sender:
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[295 len 25],
                            mem[345 len 7]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), msg.sender, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            'sERC777: transfer amount exceeds balanc',
                            Mask(56, -256, 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, '', 'SafeMath: addition overflow'
        ('ge', ('add', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))), ('param', 'arg2')), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
        balanceOf[address(arg1)] += arg2
        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                  arg2,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  msg.sender,
                  arg1,
        emit Transfer(arg2, msg.sender, arg1);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args mem[calldata.size + 108 len 20], 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if arg2 > balanceOf[address(mem[calldata.size + 96])]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 327 len 25],
                            mem[ceil32(calldata.size) + 377 len 7]
            balanceOf[address(mem[calldata.size + 96])] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                      arg2,
                      96,
                      128,
                      0,
                      0,
                      mem[calldata.size + 108 len 20],
                      mem[calldata.size + 108 len 20],
                      arg1,
            emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                mem[ceil32(calldata.size) + 420] = mem[calldata.size + 108 len 20]
                mem[ceil32(calldata.size) + 452] = mem[calldata.size + 108 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(calldata.size) + 420 len 64], address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(calldata.size) + 196] = mem[calldata.size + 108 len 20]
            mem[ceil32(calldata.size) + 228] = mem[calldata.size + 108 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args mem[ceil32(calldata.size) + 196 len 64], address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 > balanceOf[address(mem[calldata.size + 96])]:
                revert with 0, 
                            'sERC777: transfer amount exceeds balanc',
                            Mask(56, -256, 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
            balanceOf[address(mem[calldata.size + 96])] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, '', 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                      arg2,
                      96,
                      128,
                      0,
                      0,
                      mem[calldata.size + 108 len 20],
                      mem[calldata.size + 108 len 20],
                      arg1,
            emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[calldata.size + 108 len 20], 0, mem[calldata.size + 108 len 20], address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x744552433737373a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654552433737373a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if hubAddr != msg.sender:
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[295 len 25],
                            mem[345 len 7]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), address(arg2), arg3, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            'sERC777: transfer amount exceeds balanc',
                            Mask(56, -256, 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, '', 'SafeMath: addition overflow'
        ('ge', ('add', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 1))), ('param', 'arg3')), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 1))))
        balanceOf[address(arg2)] += arg3
        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                  arg3,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  arg1,
                  arg2,
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        'rERC777: transfer amount exceeds allowanc',
                        Mask(72, -256, 0x724552433737373a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
        if not arg1:
            revert with 0, 32, 37, 0x214552433737373a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[521 len 27]
        if not msg.sender:
            revert with 0, 32, 35, 0x654552433737373a20617070726f766520746f20746865207a65726f20616464726573, mem[519 len 29]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 327 len 25],
                            mem[ceil32(calldata.size) + 377 len 7]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20], address(arg1), address(arg2), arg3, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            'sERC777: transfer amount exceeds balanc',
                            Mask(56, -256, 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, '', 'SafeMath: addition overflow'
        ('ge', ('add', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 1))), ('param', 'arg3')), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOf', 1))))
        balanceOf[address(arg2)] += arg3
        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                  arg3,
                  96,
                  128,
                  0,
                  0,
                  mem[calldata.size + 108 len 20],
                  arg1,
                  arg2,
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(mem[calldata.size + 96])]:
            revert with 0, 
                        'rERC777: transfer amount exceeds allowanc',
                        Mask(72, -256, 0x724552433737373a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
        if not arg1:
            revert with 0, 
                        32,
                        37,
                        0x214552433737373a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 553 len 27]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x654552433737373a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 551 len 29]
        allowance[address(arg1)][address(mem[calldata.size + 96])] -= arg3
        emit Approval((allowance[address(arg1)][address(mem[calldata.size + 96])] - arg3), arg1, mem[calldata.size + 108 len 20]);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args mem[calldata.size + 108 len 20], address(arg1), address(arg2), arg3, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function redeem(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = arg2.length
    mem[160 len arg2.length] = arg2[all]
    mem[arg2.length + 160] = 0
    if msg.sender == hubAddr:
        mem[ceil32(arg2.length) + 160] = calldata.size
        mem[ceil32(arg2.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 192] = calldata.size
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
        if not mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 358 len 30]
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256] = 0xaabbb8ca00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 292] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256] = 35
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 192])]:
                revert with 0, 
                            'sERC777: burn amount exceeds balanc',
                            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 324 len 28],
                            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 381 len 3]
        else:
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg2.length) + calldata.size + 172 len 20]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 292] = mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 324] = 0
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 356] = arg1
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 388] = 192
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 452] = 0
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 484 len 0] = None
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 420] = 224
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 484] = 0
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 516 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 260 len 64], 0, arg1, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256] = 35
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 288 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 192])]:
                revert with 0, 
                            32,
                            35,
                            0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 323 len 1],
                            0,
                            Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 323 len 1], 0) << 256
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), 'calldatasize'), 32))), ('name', 'balanceOf', 1))))
        balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 192])] -= arg1
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 352] = 30
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 384] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 416] = arg1
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = 96
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = 0
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544 len 0] = None
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480] = 128
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544] = 0
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
        emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    arg1,
                    96,
                    128,
                    0,
                    0,
                    mem[ceil32(arg2.length) + calldata.size + 172 len 20],
                    mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 416] = arg1
        emit Transfer(arg1, mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0);
    else:
        mem[64] = ceil32(arg2.length) + 192
        mem[ceil32(arg2.length) + 160] = 0
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + 294 len 30]
        mem[ceil32(arg2.length) + 228] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + 192] = 35
            mem[ceil32(arg2.length) + 224 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'sERC777: burn amount exceeds balanc', mem[ceil32(arg2.length) + 260 len 28], mem[ceil32(arg2.length) + 317 len 3]
        else:
            mem[ceil32(arg2.length) + 192] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 196] = msg.sender
            mem[ceil32(arg2.length) + 228] = msg.sender
            mem[ceil32(arg2.length) + 260] = 0
            mem[ceil32(arg2.length) + 292] = arg1
            mem[ceil32(arg2.length) + 324] = 192
            mem[ceil32(arg2.length) + 388] = 0
            mem[ceil32(arg2.length) + 420 len 0] = None
            mem[ceil32(arg2.length) + 356] = 224
            mem[ceil32(arg2.length) + 420] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + 452 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 484 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 196 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 192] = 35
            mem[ceil32(arg2.length) + 224 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            'sERC777: burn amount exceeds balancsg.sende',
                            0,
                            Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, uint8(msg.sender), 0) << 256
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
        mem[0] = msg.sender
        mem[32] = 1
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = ceil32(arg2.length) + 352
        mem[ceil32(arg2.length) + 288] = 30
        mem[ceil32(arg2.length) + 320] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        mem[ceil32(arg2.length) + 352] = arg1
        mem[ceil32(arg2.length) + 384] = 96
        mem[ceil32(arg2.length) + 448] = 0
        mem[ceil32(arg2.length) + 480 len 0] = None
        mem[ceil32(arg2.length) + 416] = 128
        mem[ceil32(arg2.length) + 480] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 512 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 160],
                        msg.sender,
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 352 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 192],
                        msg.sender,
                        msg.sender,
        emit Transfer(arg1, msg.sender, 0);
    emit Redeem(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
    return 1
}

function postRelayedCall(bytes arg1, bool arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7347534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 128
    if gsnExtraGas > 100000:
        revert with 0, 'SafeMath: subtraction overflow'
    if (10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100):
        require arg3 - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100)
        if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / arg3 - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100) != mem[128]:
            revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg1.length) + 357 len 31]
        if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18 > 0:
            if hubAddr != msg.sender:
                if not msg.sender:
                    revert with 0, 
                                32,
                                36,
                                0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                                mem[ceil32(arg1.length) + 488 len 28]
                if not mem[172 len 20]:
                    revert with 0, 
                                32,
                                34,
                                0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg1.length) + 486 len 30]
                if not address(gsnFeeTargetAddress):
                    revert with 0, 'ERC777: send to the zero address'
                require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                        gas gas_remaining wei
                       args address(mem[160]), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18 > balanceOf[address(mem[160])]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[ceil32(arg1.length) + 455 len 25],
                                    mem[ceil32(arg1.length) + 505 len 7]
                    balanceOf[address(mem[160])] -= (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    if balanceOf[address(stor11)] + ((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18) < balanceOf[address(stor11)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(stor11)] += (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18,
                              96,
                              128,
                              0,
                              0,
                              msg.sender,
                              mem[172 len 20],
                              address(gsnFeeTargetAddress),
                    emit Transfer(((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18), mem[172 len 20], address(gsnFeeTargetAddress));
                    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                            gas gas_remaining wei
                           args address(gsnFeeTargetAddress), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 224, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 224, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18 > balanceOf[address(mem[160])]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    Mask(200, 0, stor11),
                                    stor11 % 72057594037927936
                    balanceOf[address(mem[160])] -= (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    if balanceOf[address(stor11)] + ((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18) < balanceOf[address(stor11)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(stor11)] += (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18,
                              96,
                              128,
                              0,
                              0,
                              msg.sender,
                              mem[172 len 20],
                              address(gsnFeeTargetAddress),
                    emit Transfer(((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18), mem[172 len 20], address(gsnFeeTargetAddress));
                    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                            gas gas_remaining wei
                           args address(gsnFeeTargetAddress), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 0, 224, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(arg1.length) + 320] = calldata.size
                mem[ceil32(arg1.length) + 352 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(arg1.length) + calldata.size + 332 len 20]:
                    revert with 0, 
                                32,
                                36,
                                0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                                mem[ceil32(arg1.length) + ceil32(calldata.size) + 520 len 28]
                if not mem[172 len 20]:
                    revert with 0, 
                                32,
                                34,
                                0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(arg1.length) + ceil32(calldata.size) + 518 len 30]
                if not address(gsnFeeTargetAddress):
                    revert with 0, 'ERC777: send to the zero address'
                require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                        gas gas_remaining wei
                       args address(mem[160]), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18 > balanceOf[address(mem[160])]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[ceil32(arg1.length) + ceil32(calldata.size) + 487 len 25],
                                    mem[ceil32(arg1.length) + ceil32(calldata.size) + 537 len 7]
                    balanceOf[address(mem[160])] -= (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    if balanceOf[address(stor11)] + ((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18) < balanceOf[address(stor11)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(stor11)] += (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18,
                              96,
                              128,
                              0,
                              0,
                              mem[ceil32(arg1.length) + calldata.size + 332 len 20],
                              mem[172 len 20],
                              address(gsnFeeTargetAddress),
                    emit Transfer(((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18), mem[172 len 20], address(gsnFeeTargetAddress));
                    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                            gas gas_remaining wei
                           args address(gsnFeeTargetAddress), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg1.length) + calldata.size + 332 len 20], address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 224, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg1.length) + calldata.size + 332 len 20], address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 224, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18 > balanceOf[address(mem[160])]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    Mask(200, 0, stor11),
                                    stor11 % 72057594037927936
                    balanceOf[address(mem[160])] -= (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    if balanceOf[address(stor11)] + ((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18) < balanceOf[address(stor11)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(stor11)] += (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18,
                              96,
                              128,
                              0,
                              0,
                              mem[ceil32(arg1.length) + calldata.size + 332 len 20],
                              mem[172 len 20],
                              address(gsnFeeTargetAddress),
                    emit Transfer(((arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18), mem[172 len 20], address(gsnFeeTargetAddress));
                    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
                    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                            gas gas_remaining wei
                           args address(gsnFeeTargetAddress), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg1.length) + calldata.size + 332 len 20], address(mem[160]), address(gsnFeeTargetAddress), (arg3 * mem[128]) - ((10 * 10^6 * mem[224]) + (100000 * mem[192] * mem[224]) - (100 * gsnExtraGas * mem[224]) - (mem[192] * gsnExtraGas * mem[224]) / 100 * mem[128]) / 10^18, 192, 0, 224, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2, bytes arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if hubAddr != msg.sender:
        if address(pNetworkAddress) != msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x214f6e6c792074686520704e6574776f726b2063616e206d696e7420746f6b656e73,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 262 len 30]
        if not arg1:
            revert with 0, 
                        32,
                        40,
                        0x7270546f6b656e3a2043616e6e6f74206d696e7420746f20746865207a65726f2061646472657373,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 268 len 24]
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 1
        balanceOf[address(arg1)] += arg2
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0x23de2900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = address(pNetworkAddress)
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = 0
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg1
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = 192
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg3.length + 224
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 452 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = floor32(arg3.length) + 256
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 484 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                            address(pNetworkAddress),
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                            address(pNetworkAddress),
                            arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                            address(pNetworkAddress),
                            arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                            address(pNetworkAddress),
                            arg1,
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      0,
                      Mask(224, 0, arg2),
                      0,
                      arg1,
        return 0, 1
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + calldata.size + 192] = 0
    if mem[ceil32(arg3.length) + ceil32(arg4.length) + calldata.size + 172 len 20] != address(pNetworkAddress):
        revert with 0, 
                    32,
                    34,
                    0x214f6e6c792074686520704e6574776f726b2063616e206d696e7420746f6b656e73,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 294 len 30]
    if not arg1:
        revert with 0, 
                    32,
                    40,
                    0x7270546f6b656e3a2043616e6e6f74206d696e7420746f20746865207a65726f2061646472657373,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 300 len 24]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = arg1
    mem[32] = 1
    balanceOf[address(arg1)] += arg2
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192] = 0x23de2900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 196] = address(pNetworkAddress)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 228] = 0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 260] = arg1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 292] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 324] = 192
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 388] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 420 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 356] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 420] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 452 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 452] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 484 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 420] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(arg3.length % 32) + 452 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 356] = floor32(arg3.length) + 256
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 484] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 516 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 224] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 288] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 256] = arg3.length + 128
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 320] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 352 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                        address(pNetworkAddress),
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 352] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                        address(pNetworkAddress),
                        arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 320] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(arg3.length % 32) + 352 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 256] = floor32(arg3.length) + 160
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 352] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 384 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                        address(pNetworkAddress),
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 384] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(calldata.size) + 192 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                        address(pNetworkAddress),
                        arg1,
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burn(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == hubAddr:
        mem[ceil32(arg2.length) + 128] = calldata.size
        mem[ceil32(arg2.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 160] = calldata.size
        mem[ceil32(arg2.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        if not mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 326 len 30]
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = 0xaabbb8ca00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 228] = mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 260] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20], 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = 35
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])]:
                revert with 0, 
                            'sERC777: burn amount exceeds balanc',
                            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 292 len 28],
                            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 349 len 3]
            balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg1
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 320] = 30
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 352] = 'SafeMath: subtraction overflow'
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 384] = arg1
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 416] = 96
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = arg2.length + 128
            mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = 0
            mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544 len 0] = None
            emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + (2 * ceil32(calldata.size)) + 512 len arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, mem[ceil32(arg2.length) + calldata.size + 140 len 20], mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20]);
        else:
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 228] = mem[ceil32(arg2.length) + calldata.size + 140 len 20]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 292] = 0
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 324] = arg1
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 356] = 192
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 420] = arg2.length
            mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 452 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 388] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 452] = 0
                mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 484 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 228 len 64], 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + (2 * ceil32(calldata.size)) + 452 len arg2.length + -ceil32(arg2.length) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = 35
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                35,
                                0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 291 len 1],
                                0,
                                Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 291 len 1], 0) << 256
                balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 320] = 30
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 352] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 384] = arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 416] = 96
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = arg2.length + 128
                    mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = 0
                    mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448 len arg2.length + 4],
                                0,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + arg2.length + 484 len 28],
                                0,
                                mem[ceil32(arg2.length) + calldata.size + 140 len 20],
                                mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 544 len arg2.length % 32]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = floor32(arg2.length) + 160
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544] = 0
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448 len arg2.length + 4],
                                0,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + arg2.length + 484 len -(arg2.length % 32) + 60],
                                0,
                                mem[ceil32(arg2.length) + calldata.size + 140 len 20],
                                mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20],
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 452] = mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 484 len arg2.length % 32]
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 388] = floor32(arg2.length) + 256
                mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 484] = 0
                mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 516 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 228 len 64], 0, arg1, 192, floor32(arg2.length) + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + (2 * ceil32(calldata.size)) + 452 len floor32(arg2.length) + -ceil32(arg2.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 224] = 35
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 256 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                35,
                                0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 291 len 1],
                                0,
                                Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 291 len 1], 0) << 256
                balanceOf[address(mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 320] = 30
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 352] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 384] = arg1
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 416] = 96
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length
                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = arg2.length + 128
                    mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = 0
                    mem[arg2.length + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                arg2.length + 128,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480 len floor32(arg2.length) + 4],
                                0,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 516 len (arg2.length % 32) + 28],
                                mem[ceil32(arg2.length) + calldata.size + 140 len 20],
                                mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 544 len arg2.length % 32]
                    mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 448] = floor32(arg2.length) + 160
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 544] = 0
                    mem[floor32(arg2.length) + ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                floor32(arg2.length) + 160,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 480 len floor32(arg2.length) + 4],
                                0,
                                mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 512],
                                0,
                                mem[ceil32(arg2.length) + calldata.size + 140 len 20],
                                mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20],
        mem[ceil32(arg2.length) + (2 * ceil32(calldata.size)) + 384] = arg1
        emit Transfer(arg1, mem[ceil32(arg2.length) + ceil32(calldata.size) + calldata.size + 172 len 20], 0);
    else:
        mem[64] = ceil32(arg2.length) + 160
        mem[ceil32(arg2.length) + 128] = 0
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + 262 len 30]
        mem[ceil32(arg2.length) + 196] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + 160] = 35
            mem[ceil32(arg2.length) + 192 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'sERC777: burn amount exceeds balanc', mem[ceil32(arg2.length) + 228 len 28], mem[ceil32(arg2.length) + 285 len 3]
        else:
            mem[ceil32(arg2.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg2.length) + 196] = msg.sender
            mem[ceil32(arg2.length) + 228] = 0
            mem[ceil32(arg2.length) + 260] = arg1
            mem[ceil32(arg2.length) + 292] = 192
            mem[ceil32(arg2.length) + 356] = arg2.length
            mem[ceil32(arg2.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + 324] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + 388] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                mem[arg2.length + ceil32(arg2.length) + 420 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 452 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
                mem[ceil32(arg2.length) + 324] = floor32(arg2.length) + 256
                mem[floor32(arg2.length) + ceil32(arg2.length) + 420] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                mem[floor32(arg2.length) + ceil32(arg2.length) + 452 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 484 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 160] = 35
            mem[ceil32(arg2.length) + 192 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            'sERC777: burn amount exceeds balancsg.sende',
                            0,
                            Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, uint8(msg.sender), 0) << 256
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
        mem[0] = msg.sender
        mem[32] = 1
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = ceil32(arg2.length) + 320
        mem[ceil32(arg2.length) + 256] = 30
        mem[ceil32(arg2.length) + 288] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        mem[ceil32(arg2.length) + 320] = arg1
        mem[ceil32(arg2.length) + 352] = 96
        mem[ceil32(arg2.length) + 416] = arg2.length
        mem[ceil32(arg2.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + 384] = arg2.length + 128
            mem[arg2.length + ceil32(arg2.length) + 448] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[arg2.length + ceil32(arg2.length) + 480 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + 320 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 512 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + 320 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                            msg.sender,
                            msg.sender,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            mem[ceil32(arg2.length) + 384] = floor32(arg2.length) + 160
            mem[floor32(arg2.length) + ceil32(arg2.length) + 480] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(arg2.length) + ceil32(arg2.length) + 512 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + 320 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + 320 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                            msg.sender,
                            msg.sender,
        emit Transfer(arg1, msg.sender, 0);
}

function send(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if msg.sender == hubAddr:
        mem[ceil32(arg3.length) + 128] = calldata.size
        mem[ceil32(arg3.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg3.length) + ceil32(calldata.size) + 160] = calldata.size
        mem[ceil32(arg3.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        if not mem[ceil32(arg3.length) + calldata.size + 140 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 328 len 28]
        if not mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 326 len 30]
        if not arg1:
            revert with 0, 'ERC777: send to the zero address'
        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224] = 0xaabbb8ca00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 228] = mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224] = 39
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 295 len 25],
                            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 345 len 7]
            balanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 352] = 96
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg3.length
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 384] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 0
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480 len 0] = None
            emit Sent(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + (2 * ceil32(calldata.size)) + 448 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, mem[ceil32(arg3.length) + calldata.size + 140 len 20], mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = arg2
            emit Transfer(arg2, mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = arg1
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 465 len 19]
            else:
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = mem[ceil32(arg3.length) + calldata.size + 140 len 20]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 452] = 192
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 516] = arg3.length
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = arg3.length + 224
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324 len 64], address(arg1), mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420 len arg3.length + 28], 0, mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg3.length + 480 len 68], 0
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 548] = mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(arg3.length % 32) + 580 len arg3.length % 32]
                    mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = floor32(arg3.length) + 256
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324 len 64], address(arg1), mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420 len arg3.length + 28], 0, mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg3.length + 480 len -(arg3.length % 32) + 100], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 228] = mem[ceil32(arg3.length) + calldata.size + 140 len 20]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 292] = arg1
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = 192
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420] = arg3.length
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 452 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 388] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 452] = 0
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 228 len 64], address(arg1), arg2, Array(len=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, data=mem[(2 * ceil32(arg3.length)) + (2 * ceil32(calldata.size)) + 452 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 224, arg3.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224] = 39
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            Mask(136, 0, arg1) << 64,
                            0
            balanceOf[address(mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 160])] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = arg2
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 352] = 96
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg3.length
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 384] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 0
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480 len 0] = None
            emit Sent(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448 len 4], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + (2 * ceil32(calldata.size)) + 452 len arg3.length + -ceil32(arg3.length) + 28]), arg3.length + 128, mem[ceil32(arg3.length) + calldata.size + 140 len 20], mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = arg2
            emit Transfer(arg2, mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1);
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = arg1
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]:
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 465 len 19]
            else:
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 320] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = mem[ceil32(arg3.length) + calldata.size + 140 len 20]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = mem[ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420] = arg2
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 452] = 192
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 516] = arg3.length
                mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = arg3.length + 224
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324 len 64], address(arg1), mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420 len arg3.length + 28], 0, 0, mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg3.length + 484 len 64], 0
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 548] = mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(arg3.length % 32) + 580 len arg3.length % 32]
                    mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = floor32(arg3.length) + 256
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324 len 64], address(arg1), mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420 len arg3.length + 28], 0, 0, mem[ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg3.length + 484 len -(arg3.length % 32) + 96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[64] = ceil32(arg3.length) + 160
        mem[ceil32(arg3.length) + 128] = 0
        if not msg.sender:
            revert with 0, 
                        32,
                        36,
                        0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                        mem[ceil32(arg3.length) + 264 len 28]
        if not arg1:
            revert with 0, 'ERC777: send to the zero address'
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[64] = ceil32(arg3.length) + 256
            mem[ceil32(arg3.length) + 160] = 39
            mem[ceil32(arg3.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg3.length) + 231 len 25],
                            mem[ceil32(arg3.length) + 281 len 7]
        else:
            mem[ceil32(arg3.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 164] = msg.sender
            mem[ceil32(arg3.length) + 196] = msg.sender
            mem[ceil32(arg3.length) + 228] = arg1
            mem[ceil32(arg3.length) + 260] = arg2
            mem[ceil32(arg3.length) + 292] = 192
            mem[ceil32(arg3.length) + 356] = arg3.length
            mem[ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 324] = arg3.length + 224
                mem[arg3.length + ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + 420 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 452 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                mem[ceil32(arg3.length) + 324] = floor32(arg3.length) + 256
                mem[floor32(arg3.length) + ceil32(arg3.length) + 420] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + 452 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 484 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg3.length) + 256
            mem[ceil32(arg3.length) + 160] = 39
            mem[ceil32(arg3.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            Mask(136, 0, arg1) << 64,
                            0
        ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 1
        balanceOf[address(arg1)] += arg2
        mem[ceil32(arg3.length) + 256] = arg2
        mem[ceil32(arg3.length) + 288] = 96
        mem[ceil32(arg3.length) + 352] = arg3.length
        mem[ceil32(arg3.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + 320] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg3.length) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                          msg.sender,
                          msg.sender,
                          arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg3.length) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                          msg.sender,
                          msg.sender,
                          arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
            mem[ceil32(arg3.length) + 320] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(arg3.length) + 416] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 448 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg3.length) + 256 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                          msg.sender,
                          msg.sender,
                          arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg3.length) + 256 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                          msg.sender,
                          msg.sender,
                          arg1,
        emit Transfer(arg2, msg.sender, arg1);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if msg.sender:
                if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg1):
                        revert with 0, 
                                    32,
                                    77,
                                    0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                    mem[ceil32(arg3.length) + 401 len 19]
        else:
            mem[ceil32(arg3.length) + 256] = 0x23de2900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 260] = msg.sender
            mem[ceil32(arg3.length) + 292] = msg.sender
            mem[ceil32(arg3.length) + 324] = arg1
            mem[ceil32(arg3.length) + 356] = arg2
            mem[ceil32(arg3.length) + 388] = 192
            mem[ceil32(arg3.length) + 452] = arg3.length
            mem[ceil32(arg3.length) + 484 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 420] = arg3.length + 224
                mem[arg3.length + ceil32(arg3.length) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + 516 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 260 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 548 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
                mem[ceil32(arg3.length) + 420] = floor32(arg3.length) + 256
                mem[floor32(arg3.length) + ceil32(arg3.length) + 516] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + 548 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 260 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 580 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function redeem(uint256 arg1, bytes arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if hubAddr != msg.sender:
        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 294 len 30]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 35
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            'sERC777: burn amount exceeds balanc',
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 260 len 28],
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 317 len 3]
        else:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 260] = 0
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 324] = 192
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 388] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + ceil32(arg3.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg2.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 484 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + ceil32(arg3.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + 288]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 356] = floor32(arg2.length) + 256
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + ceil32(arg3.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + floor32(arg2.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 516 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + ceil32(arg3.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 35
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            'sERC777: burn amount exceeds balancsg.sende',
                            0,
                            Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, uint8(msg.sender), 0) << 256
        ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
        mem[0] = msg.sender
        mem[32] = 1
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 352
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = 30
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = 96
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg2.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length + 128
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg2.length + 160],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 544 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg2.length + 192],
                            msg.sender,
                            msg.sender,
            emit Transfer(arg1, msg.sender, 0);
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = 64
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Redeem(address arg1, uint256 arg2, string arg3):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 96],
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 480 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Redeem(address arg1, uint256 arg2, string arg3):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128],
                            msg.sender,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = floor32(arg2.length) + 160
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + floor32(arg2.length) + 192],
                            msg.sender,
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 576 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg2.length) + 224],
                            msg.sender,
                            msg.sender,
            emit Transfer(arg1, msg.sender, 0);
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = 64
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                emit Redeem(address arg1, uint256 arg2, string arg3):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 96],
                            msg.sender,
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 480 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                emit Redeem(address arg1, uint256 arg2, string arg3):
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128],
                            msg.sender,
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = calldata.size
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 192] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + 192] = calldata.size
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 224] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 224] = 0
        if not mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 358 len 30]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256] = 0xaabbb8ca00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 292] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256] = 35
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 288 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])]:
                revert with 0, 
                            'sERC777: burn amount exceeds balanc',
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324 len 28],
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 381 len 3]
            mem[0] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
            mem[32] = 1
            balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])] -= arg1
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 352] = 30
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 384] = 'SafeMath: subtraction overflow'
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 96
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length + 128
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544] = 0
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
            emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544 len arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]);
        else:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260] = mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 292] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 324] = 0
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 356] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 388] = 192
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 452] = arg2.length
            mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = 0
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 516 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260 len 64], 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484 len arg2.length + -ceil32(arg2.length) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256] = 35
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 288 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])]:
                    revert with 0, 
                                32,
                                35,
                                0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 323 len 1],
                                0,
                                Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 323 len 1], 0) << 256
                mem[0] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                mem[32] = 1
                balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])] -= arg1
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 352] = 30
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 384] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 96
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length + 128
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544] = 0
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480 len arg2.length + 4],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg2.length + 516 len 28],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20],
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 576 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = floor32(arg2.length) + 160
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 576] = 0
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 608 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480 len arg2.length + 4],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + arg2.length + 516 len -(arg2.length % 32) + 60],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20],
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 516 len arg2.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 420] = floor32(arg2.length) + 256
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 516] = 0
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 548 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 260 len 64], 0, arg1, 192, floor32(arg2.length) + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 484 len floor32(arg2.length) + -ceil32(arg2.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 256] = 35
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 288 len 35] = 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg1 > balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])]:
                    revert with 0, 
                                32,
                                35,
                                0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 323 len 1],
                                0,
                                Mask(24, -256, 0x734552433737373a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 323 len 1], 0) << 256
                mem[0] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                mem[32] = 1
                balanceOf[address(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 192])] -= arg1
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 352] = 30
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 384] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 96
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = arg2.length + 128
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544] = 0
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 576 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                arg2.length + 128,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512 len floor32(arg2.length) + 4],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 548 len (arg2.length % 32) + 28],
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20],
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 544] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(arg2.length % 32) + 576 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = floor32(arg2.length) + 160
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 576] = 0
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 608 len 0] = None
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg1,
                                96,
                                floor32(arg2.length) + 160,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512 len floor32(arg2.length) + 4],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + floor32(arg2.length) + 544],
                                0,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + calldata.size + 172 len 20],
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg1
        emit Transfer(arg1, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(calldata.size) + calldata.size + 204 len 20], 0);
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416] = arg1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 448] = 64
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 480] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Redeem(address arg1, uint256 arg2, string arg3):
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 96],
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 512] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Redeem(address arg1, uint256 arg2, string arg3):
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + (2 * ceil32(calldata.size)) + 416 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128],
                        msg.sender,
}

function adminTransfer(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if hubAddr != msg.sender:
        if adminOperatorAddress != msg.sender:
            revert with 0, 'caller is not the admin operator'
        if not adminOperatorAddress:
            revert with 0, 
                        32,
                        36,
                        0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 264 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
        if not arg2:
            revert with 0, 'ERC777: send to the zero address'
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 256
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 39
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 231 len 25],
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 281 len 7]
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = adminOperatorAddress
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 196] = arg1
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 228] = arg2
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = 192
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 452 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 256
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 39
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            Mask(136, 0, arg2) << 64,
                            0
        ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg2
        mem[32] = 1
        balanceOf[address(arg2)] += arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 96
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 352] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg4.length + 128
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                          adminOperatorAddress,
                          arg1,
                          arg2,
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 448 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                          adminOperatorAddress,
                          arg1,
                          arg2,
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = floor32(arg4.length) + 160
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                          adminOperatorAddress,
                          arg1,
                          arg2,
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                          adminOperatorAddress,
                          arg1,
                          arg2,
        emit Transfer(arg3, arg1, arg2);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = 0x23de2900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = adminOperatorAddress
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = arg1
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg2
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = 192
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 548 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
        if mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20] != adminOperatorAddress:
            revert with 0, 'caller is not the admin operator'
        if not adminOperatorAddress:
            revert with 0, 
                        32,
                        36,
                        0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 296 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 294 len 30]
        if not arg2:
            revert with 0, 'ERC777: send to the zero address'
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 263 len 25],
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 313 len 7]
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 0x75ab978200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196] = adminOperatorAddress
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 228] = arg1
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 260] = arg2
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = 192
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 452 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 516 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            39,
                            0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            Mask(136, 0, arg2) << 64,
                            0
        ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg2
        mem[32] = 1
        balanceOf[address(arg2)] += arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 96
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 384] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = arg4.length + 128
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                          adminOperatorAddress,
                          arg1,
                          arg2,
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                          adminOperatorAddress,
                          arg1,
                          arg2,
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 448 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = floor32(arg4.length) + 160
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                          adminOperatorAddress,
                          arg1,
                          arg2,
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 512 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                          adminOperatorAddress,
                          arg1,
                          arg2,
        emit Transfer(arg3, arg1, arg2);
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = 0x23de2900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = adminOperatorAddress
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = arg1
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg2
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = 192
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 548 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 612 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit AdminTransferInvoked(adminOperatorAddress);
}

function operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if hubAddr != msg.sender:
        if arg1 != msg.sender:
            mem[0] = msg.sender
            if not stor6[address(msg.sender)]:
                mem[32] = sha3(address(arg1), 7)
                if not stor7[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                44,
                                0x624552433737373a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 272 len 20]
            else:
                mem[32] = sha3(address(arg1), 8)
                if stor8[address(arg1)][address(msg.sender)]:
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 7)
                    if not stor7[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x624552433737373a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 272 len 20]
        if hubAddr != msg.sender:
            if not msg.sender:
                revert with 0, 
                            32,
                            36,
                            0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 264 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
            if not arg2:
                revert with 0, 'ERC777: send to the zero address'
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 256
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 231 len 25],
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 281 len 7]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0x75ab978200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = msg.sender
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 196] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 228] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 452 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 256
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                Mask(136, 0, arg2) << 64,
                                0
            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            balanceOf[address(arg2)] += arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 96
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 352] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg4.length + 128
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                              msg.sender,
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 448 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                              msg.sender,
                              arg1,
                              arg2,
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = floor32(arg4.length) + 160
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                              msg.sender,
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                              msg.sender,
                              arg1,
                              arg2,
            emit Transfer(arg3, arg1, arg2);
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if arg1:
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 401 len 19]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = msg.sender
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 548 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + 260 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
            if not mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 296 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 294 len 30]
            if not arg2:
                revert with 0, 'ERC777: send to the zero address'
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 263 len 25],
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 313 len 7]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 0x75ab978200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 228] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 260] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 452 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 516 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                Mask(136, 0, arg2) << 64,
                                0
            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            balanceOf[address(arg2)] += arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 96
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 384] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = arg4.length + 128
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20],
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20],
                              arg1,
                              arg2,
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 448 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = floor32(arg4.length) + 160
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20],
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 512 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20],
                              arg1,
                              arg2,
            emit Transfer(arg3, arg1, arg2);
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if arg1:
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 433 len 19]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 548 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 612 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = calldata.size
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 192] = 0
        if mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20] != arg1:
            mem[0] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
            if not stor6[mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]]:
                mem[32] = sha3(address(arg1), 7)
                if not stor7[address(arg1)][address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160])]:
                    revert with 0, 
                                32,
                                44,
                                0x624552433737373a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 304 len 20]
            else:
                mem[32] = sha3(address(arg1), 8)
                if stor8[address(arg1)][address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160])]:
                    mem[0] = mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 172 len 20]
                    mem[32] = sha3(address(arg1), 7)
                    if not stor7[address(arg1)][address(mem[ceil32(arg4.length) + ceil32(arg5.length) + calldata.size + 160])]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x624552433737373a2063616c6c6572206973206e6f7420616e206f70657261746f7220666f7220686f6c6465,
                                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 304 len 20]
        if hubAddr != msg.sender:
            if not msg.sender:
                revert with 0, 
                            32,
                            36,
                            0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 296 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 294 len 30]
            if not arg2:
                revert with 0, 'ERC777: send to the zero address'
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 263 len 25],
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 313 len 7]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 0x75ab978200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196] = msg.sender
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 228] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 260] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 484 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 452 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 516 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                Mask(136, 0, arg2) << 64,
                                0
            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            balanceOf[address(arg2)] += arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 320] = 96
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 384] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = arg4.length + 128
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                              msg.sender,
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                              msg.sender,
                              arg1,
                              arg2,
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 416] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 448 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 352] = floor32(arg4.length) + 160
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 448] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                              msg.sender,
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 480] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 512 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                              msg.sender,
                              arg1,
                              arg2,
            emit Transfer(arg3, arg1, arg2);
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if arg1:
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 433 len 19]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 288] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292] = msg.sender
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 324] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 356] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 388] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 420] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 484] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 516] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(arg4.length % 32) + 548 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 452] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 580] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 612 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 192] = calldata.size
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 224] = 0
            if not mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x724552433737373a206f70657261746f7220697320746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 328 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x734552433737373a2073656e642066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 326 len 30]
            if not arg2:
                revert with 0, 'ERC777: send to the zero address'
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 260] = 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 295 len 25],
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 345 len 7]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 0x75ab978200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 228] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 260] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 292] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 516 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 228 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(arg4.length % 32) + 484 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 548 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 228 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = 39
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256 len 39] = 0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                39,
                                0x734552433737373a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                Mask(136, 0, arg2) << 64,
                                0
            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 1))))
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            balanceOf[address(arg2)] += arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352] = 96
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 384] = arg4.length + 128
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 480 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 160],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 480] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 512 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 192],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                              arg1,
                              arg2,
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(arg4.length % 32) + 480 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 384] = floor32(arg4.length) + 160
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 480] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 512 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 192],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                              arg1,
                              arg2,
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 512] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 544 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 224],
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20],
                              arg1,
                              arg2,
            emit Transfer(arg3, arg1, arg2);
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324] = arg2
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
            staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                if arg1:
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            revert with 0, 
                                        32,
                                        77,
                                        0x734552433737373a20746f6b656e20726563697069656e7420636f6e747261637420686173206e6f20696d706c656d656e74657220666f7220455243373737546f6b656e73526563697069656e,
                                        mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 465 len 19]
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 0x23de2900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324] = mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 204 len 20]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 356] = arg1
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 388] = arg2
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 452] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 516] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 580 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 580] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 612 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 548] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(arg4.length % 32) + 580 len arg4.length % 32]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 484] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 580] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288]
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 644 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
