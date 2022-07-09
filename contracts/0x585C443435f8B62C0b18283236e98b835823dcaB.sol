contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function create() payable {
    if owner != msg.sender:
        revert with 0, 'NOT OWNER'
    create contract with 0 wei
                    code: code.data[257 len 9084]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
