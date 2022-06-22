contract main {




// =====================  Runtime code  =====================


mapping of struct readTransaction;

function readTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    return readTransaction[arg1].field_256
}

function _fallback() payable {
    revert
}

function payOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    call readTransaction[arg1].field_512 with:
       value readTransaction[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7090adfa(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    readTransaction[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    readTransaction[arg1].field_256 = arg3
    readTransaction[arg1].field_512 = arg4
    readTransaction[arg1].field_768 = msg.value
    readTransaction[arg1].field_1024 = arg5
}



}
