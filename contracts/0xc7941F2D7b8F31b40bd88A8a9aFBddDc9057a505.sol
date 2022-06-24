contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor0[arg1].field_1024
    require not stor0[arg1].field_1032
    require stor0[arg1].field_512 == msg.sender
    stor0[arg1].field_1024 = 1
}

function release(uint256 arg1) {
    require calldata.size - 4 >= 32
    require bool(stor0[arg1].field_1024) == 1
    require not stor0[arg1].field_1032
    require stor0[arg1].field_256 == msg.sender
    call stor0[arg1].field_512 with:
       value stor0[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_1032 = 1
}

function sub_7c357825(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not stor0[arg1].field_1040
    stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1].field_256 = msg.sender
    stor0[arg1].field_512 = arg3
    stor0[arg1].field_768 = msg.value
    stor0[arg1].field_1040 = 1
}

function read(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor0[arg1].field_0
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[128 len stor0[arg1].length]), 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           bool(stor0[arg1].field_1024),
           bool(stor0[arg1].field_1032)
}



}
