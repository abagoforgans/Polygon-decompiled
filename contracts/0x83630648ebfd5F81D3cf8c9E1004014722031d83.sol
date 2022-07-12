contract main {




// =====================  Runtime code  =====================


address owner;
array of struct signatureSalt;

function getSignatureSalt() {
    return signatureSalt[0 len signatureSalt.length].field_0
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSignatureSalt(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signatureSalt.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        signatureSalt[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while signatureSalt.length + 31 / 32 > idx:
        signatureSalt[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_ef1efbec(?) payable {
    require calldata.size - 4 >= 320
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg3:
        revert with 0, 'Owner information is incorrect.'
    if ext_call.return_data[12 len 20] == arg4:
        revert with 0, 'Transfer is incorrect.'
    if msg.value > 0:
        if msg.value <= arg6 + arg8 + arg10:
            revert with 0, 'The value is not enough.'
        if arg6 <= 0:
            if arg8 <= 0:
                if arg10 <= 0:
                    call arg3 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 0 == arg9:
                        call arg3 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg10 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg9 with:
                           value arg10 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg3 with:
                           value msg.value - arg10 wei
                             gas 2300 * is_zero(value) wei
            else:
                if 0 == arg7:
                    if arg10 <= 0:
                        call arg3 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg3 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg3 with:
                               value msg.value - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if arg8 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg7 with:
                       value arg8 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg10 <= 0:
                        call arg3 with:
                           value msg.value - arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg3 with:
                               value msg.value - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value - arg8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg3 with:
                               value msg.value - arg8 - arg10 wei
                                 gas 2300 * is_zero(value) wei
        else:
            if 0 == arg5:
                if arg8 <= 0:
                    if arg10 <= 0:
                        call arg3 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg3 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg3 with:
                               value msg.value - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if 0 == arg7:
                        if arg10 <= 0:
                            call arg3 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg3 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg3 with:
                                   value msg.value - arg10 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if arg8 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg7 with:
                           value arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg10 <= 0:
                            call arg3 with:
                               value msg.value - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg3 with:
                                   value msg.value - arg8 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg3 with:
                                   value msg.value - arg8 - arg10 wei
                                     gas 2300 * is_zero(value) wei
            else:
                if arg6 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg5 with:
                   value arg6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg8 <= 0:
                    if arg10 <= 0:
                        call arg3 with:
                           value msg.value - arg6 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg3 with:
                               value msg.value - arg6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value - arg6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg3 with:
                               value msg.value - arg6 - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if 0 == arg7:
                        if arg10 <= 0:
                            call arg3 with:
                               value msg.value - arg6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg3 with:
                                   value msg.value - arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg3 with:
                                   value msg.value - arg6 - arg10 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if arg8 > msg.value - arg6:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg7 with:
                           value arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg10 <= 0:
                            call arg3 with:
                               value msg.value - arg6 - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg3 with:
                                   value msg.value - arg6 - arg8 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg6 - arg8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg3 with:
                                   value msg.value - arg6 - arg8 - arg10 wei
                                     gas 2300 * is_zero(value) wei
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2174175a(?) payable {
    require calldata.size - 4 >= 320
    if msg.value <= 0:
        revert with 0, 'The value is not enough.'
    mem[128] = uint256(signatureSalt.field_0)
    idx = 128
    s = 0
    while signatureSalt.length + 96 > idx:
        mem[idx + 32] = signatureSalt[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[signatureSalt.length + 128] = address(arg2)
    if sha3(mem[128 len signatureSalt.length + 20], arg3, arg4, msg.value, arg5, arg6, arg7, arg8, arg9, arg10) != arg1:
        revert with 0, 'Signature message is invalid.'
    require ext_code.size(arg2)
    staticcall arg2.0x6352211e with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg4:
        revert with 0, 'Owner information is incorrect.'
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'Transfer is incorrect.'
    if msg.value > 0:
        if msg.value <= arg6 + arg8 + arg10:
            revert with 0, 'The value is not enough.'
        if arg6 <= 0:
            if arg8 <= 0:
                if arg10 <= 0:
                    call arg4 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 0 == arg9:
                        call arg4 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg10 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg9 with:
                           value arg10 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg4 with:
                           value msg.value - arg10 wei
                             gas 2300 * is_zero(value) wei
            else:
                if 0 == arg7:
                    if arg10 <= 0:
                        call arg4 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg4 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg4 with:
                               value msg.value - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if arg8 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call arg7 with:
                       value arg8 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg10 <= 0:
                        call arg4 with:
                           value msg.value - arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg4 with:
                               value msg.value - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value - arg8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg4 with:
                               value msg.value - arg8 - arg10 wei
                                 gas 2300 * is_zero(value) wei
        else:
            if 0 == arg5:
                if arg8 <= 0:
                    if arg10 <= 0:
                        call arg4 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg4 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg4 with:
                               value msg.value - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if 0 == arg7:
                        if arg10 <= 0:
                            call arg4 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg4 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg4 with:
                                   value msg.value - arg10 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if arg8 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg7 with:
                           value arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg10 <= 0:
                            call arg4 with:
                               value msg.value - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg4 with:
                                   value msg.value - arg8 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg4 with:
                                   value msg.value - arg8 - arg10 wei
                                     gas 2300 * is_zero(value) wei
            else:
                if arg6 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg5 with:
                   value arg6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg8 <= 0:
                    if arg10 <= 0:
                        call arg4 with:
                           value msg.value - arg6 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 == arg9:
                            call arg4 with:
                               value msg.value - arg6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg10 > msg.value - arg6:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg9 with:
                               value arg10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg4 with:
                               value msg.value - arg6 - arg10 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if 0 == arg7:
                        if arg10 <= 0:
                            call arg4 with:
                               value msg.value - arg6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg4 with:
                                   value msg.value - arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg6:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg4 with:
                                   value msg.value - arg6 - arg10 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if arg8 > msg.value - arg6:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg7 with:
                           value arg8 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg10 <= 0:
                            call arg4 with:
                               value msg.value - arg6 - arg8 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 == arg9:
                                call arg4 with:
                                   value msg.value - arg6 - arg8 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg10 > msg.value - arg6 - arg8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                call arg9 with:
                                   value arg10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg4 with:
                                   value msg.value - arg6 - arg8 - arg10 wei
                                     gas 2300 * is_zero(value) wei
    require ext_code.size(arg2)
    call arg2.0x42842e0e with:
         gas gas_remaining wei
        args address(arg4), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
