contract main {




// =====================  Runtime code  =====================


address owner;
array of struct userName;
mapping of uint256 userId;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalAddresses;

function getUserId(address arg1) payable {
    require calldata.size - 4 >= 32
    return userId[address(arg1)]
}

function allowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_5a8e6661(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function totalAddresses() payable {
    return totalAddresses
}

function getUserName(address arg1) payable {
    return userName[address(arg1)][0 len userName[address(arg1)].length].field_0
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73557365724164647265737365733a20417070726f766520746865207a65726f20616464726573,
                    mem[203 len 25]
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x64557365724164647265737365733a204164647265737320616c726561647920617070726f7665,
                    mem[203 len 25]
    stor4[address(arg1)] = 1
    emit Approval(arg1);
    return 1
}

function revokeApproval(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73557365724164647265737365733a20417070726f766520746865207a65726f20616464726573,
                    mem[203 len 25]
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73557365724164647265737365733a2041646472657373206973206e6f7420617070726f7665,
                    mem[202 len 26]
    stor4[address(arg1)] = 0
    emit 0xdddeac66: arg1
    return 1
}

function sub_103cb47c(?) payable {
    require calldata.size - 4 >= 64
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64557365724164647265737365733a2063616c6c6572206973206e6f7420617070726f7665,
                    mem[201 len 27]
    if bool(stor3[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64557365724164647265737365733a204163636f756e7420646f6573206e6f7420686176652076616c75,
                    mem[206 len 22]
    if arg2 == userId[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73557365724164647265737365733a20557365724964206368616e67656420746f2063757272656e74205573657249,
                    mem[211 len 17]
    userId[address(arg1)] = arg2
    emit 0x735cddee: address(arg1), arg2
    return 1
}

function sub_bca3fd8c(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    37,
                    0x64557365724164647265737365733a2063616c6c6572206973206e6f7420617070726f7665,
                    mem[ceil32(arg3.length) + 233 len 27]
    if not arg1:
        revert with 0, 
                    32,
                    42,
                    0x65557365724164647265737365733a204163636f756e7420746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 238 len 22]
    if stor3[address(arg1)]:
        revert with 0, 
                    32,
                    40,
                    0x65557365724164647265737365733a204163636f756e7420616c7265616479206861732076616c75,
                    mem[ceil32(arg3.length) + 236 len 24]
    userId[address(arg1)] = arg2
    userName[address(arg1)][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor3[address(arg1)] = 1
    totalAddresses++
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    emit 0x74e72b95: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function sub_fd1c2501(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    37,
                    0x64557365724164647265737365733a2063616c6c6572206973206e6f7420617070726f7665,
                    mem[ceil32(arg2.length) + 233 len 27]
    if bool(stor3[address(arg1)]) != 1:
        revert with 0, 
                    32,
                    42,
                    0x64557365724164647265737365733a204163636f756e7420646f6573206e6f7420686176652076616c75,
                    mem[ceil32(arg2.length) + 238 len 22]
    mem[ceil32(arg2.length) + 160] = userName[address(arg1)].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + userName[address(arg1)].length + 128 > idx:
        mem[idx + 32] = userName[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + 128] = userName[address(arg1)].length
    _207 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    mem[ceil32(arg2.length) + userName[address(arg1)].length + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + userName[address(arg1)].length + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + userName[address(arg1)].length + floor32(arg2.length) + 192 len arg2.length % 32]) == _207:
        revert with 0, 
                    32,
                    51,
                    0xfe557365724164647265737365733a20557365724e616d65206368616e67656420746f2063757272656e7420557365724e616d,
                    mem[arg2.length + ceil32(arg2.length) + userName[address(arg1)].length + 311 len 13]
    userName[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0x9ab235b8: address(arg1), Array(len=arg2.length, data=arg2[all])
    return 1
}



}
