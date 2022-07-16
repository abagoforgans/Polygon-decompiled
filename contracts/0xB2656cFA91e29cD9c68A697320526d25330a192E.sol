contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_85178957Address;
address sub_f70a42b8Address;
address exchangeAddress;
address tokenAddress;
array of struct stor6;

function sub_85178957(?) payable {
    return sub_85178957Address
}

function owner() payable {
    return owner
}

function exchangeAddress() payable {
    return exchangeAddress
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_bd153fcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[address(arg1)])
}

function sub_f70a42b8(?) payable {
    return sub_f70a42b8Address
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

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function setExchangeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    exchangeAddress = arg1
}

function sub_3ffd5dc8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f70a42b8Address = address(arg1)
}

function sub_746f2996(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_85178957Address = address(arg1)
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

function getBets() payable {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        idx = 0
        s = 128
        t = (32 * stor6.length) + 192
        while idx < stor6.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor6.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor6.length) + -mem[64] + 192
}

function sub_8147e0f1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    create contract with 0 wei
                    code: 0, sub_85178957Address, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[20 len 12] == 0, ext_call.return_data[20 len 12]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(address arg1, uint256 arg2, string arg3, uint256 arg4, address arg5, address arg6, address arg7) with:
         gas gas_remaining wei
        args address(0, ext_call.return_data[20 len 12]), arg1, Array(len=arg2.length, data=arg2[all]), arg3, sub_f70a42b8Address, exchangeAddress, tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6.length++
    stor6[stor6.length].field_0 = address(create.new_address)
    stor1[address(create.new_address)] = 1
    emit 0x3d62407c: address(create.new_address)
    return address(create.new_address)
}



}
