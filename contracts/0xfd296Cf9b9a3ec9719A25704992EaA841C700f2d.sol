contract main {




// =====================  Runtime code  =====================


array of struct stor-1;

function _fallback() payable {
    delegate stor-1[sha3('eip1967.proxy.implementation')].field_0 with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function updateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor-1[sha3('eip1967.proxy.admin')].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x734f6e6c79207468652063757272656e742061646d696e2073686f756c642062652061626c6520746f206e65772061646d69,
                    mem[214 len 14]
    stor-1[sha3('eip1967.proxy.admin')].field_0 = arg1
    stor-1[sha3('eip1967.proxy.admin')].field_160 = 0
}

function updateLogic(address arg1) {
    require calldata.size - 4 >= 32
    if stor-1[sha3('eip1967.proxy.admin')].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4f6e6c792041646d696e2073686f756c642062652061626c6520746f207570646174652074686520636f6e7472616374,
                    mem[213 len 15]
    stor-1[sha3('eip1967.proxy.implementation')].field_0 = arg1
    stor-1[sha3('eip1967.proxy.implementation')].field_160 = 0
}



}
