contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function sendFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
