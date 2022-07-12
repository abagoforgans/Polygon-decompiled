contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_1cea013a(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(arg1)].field_0:
        mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
        mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
        return memory
          from (32 * stor0[address(arg1)].field_0) + 128
           len (96 * stor0[address(arg1)].field_0) + 64
    mem[128] = stor0[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor0[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
    return Array(len=stor0[address(arg1)].field_0, data=mem[128 len floor32(stor0[address(arg1)].field_0)], mem[(32 * stor0[address(arg1)].field_0) + floor32(stor0[address(arg1)].field_0) + 192 len (32 * stor0[address(arg1)].field_0) - floor32(stor0[address(arg1)].field_0)]), 
}

function createContract(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96 len 13185] = code.data[1596 len 13185]
    mem[13281] = 64
    mem[13345] = arg1.length
    mem[13377 len arg1.length] = arg1[all]
    mem[arg1.length + 13377] = 0
    mem[13313] = ceil32(arg1.length) + 96
    mem[ceil32(arg1.length) + 13377] = arg2.length
    mem[ceil32(arg1.length) + 13409 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 13409] = 0
    create contract with 0 wei
                    code: code.data[1596 len 13185], 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 13409 len ceil32(arg1.length) - arg1.length], arg2[all], mem[ceil32(arg1.length) + arg2.length + 13409 len ceil32(arg2.length) - arg2.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwnership(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(msg.sender)].field_0++
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = address(create.new_address)
    if not stor0[address(msg.sender)].field_0:
        idx = 0
        while stor0[address(msg.sender)].field_0 > idx:
            stor0[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor0[address(msg.sender)].field_0 > idx:
            stor0[address(msg.sender)][s].field_0 = stor0[address(msg.sender)][idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor0[address(msg.sender)].field_0
        while stor0[address(msg.sender)].field_0 > idx:
            stor0[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 256] = arg2.length
    mem[ceil32(arg1.length) + 288 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 288] = 0
    emit 0xe0154c28: address(create.new_address), 128, ceil32(arg1.length) + 160, msg.sender, arg1.length, arg1[all], 0, mem[arg1.length + 288 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
}



}
