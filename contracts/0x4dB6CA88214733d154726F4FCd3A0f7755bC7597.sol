contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 sub_758b4598;
mapping of uint256 totalStake;
mapping of uint256 sub_2a55012f;
mapping of uint256 sub_7b7b7554;
address validatorRegistryAddress;
address governanceProxyAddress;
uint256 sub_84449a9d;

function sub_2a55012f(?) payable {
    require calldata.size - 4 >= 32
    return sub_2a55012f[arg1]
}

function totalStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalStake[arg1]
}

function sub_758b4598(?) payable {
    return sub_758b4598
}

function sub_7b7b7554(?) payable {
    require calldata.size - 4 >= 32
    return sub_7b7b7554[arg1]
}

function governanceProxy() payable {
    return governanceProxyAddress
}

function sub_84449a9d(?) payable {
    return sub_84449a9d
}

function sub_b750bdde(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function validatorRegistry() payable {
    return validatorRegistryAddress
}

function _fallback() payable {
    revert
}

function changeRewardPerEpoch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceProxyAddress != msg.sender:
        revert with 0, 'Only Governance can change'
    sub_84449a9d = arg1
}

function sub_2a142b0b(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Should not be an existing source'
    stor0[address(arg1)] = 1
    sub_758b4598++
}

function sub_94b1d2d2(?) payable {
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if 1 == sub_758b4598:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6443616e6e6f742072656e6f756e636520736f7572636520696620746865206e756d626572206f6620736f7572636573206973206f6e6c79206f6e,
                    mem[223 len 5]
    stor0[msg.sender] = 0
    sub_758b4598--
}

function sub_41434959(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe45706f63682073686f756c64206e6f7420626520657175616c20746f207a6572,
                    mem[197 len 31]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6f546f74616c205374616b6520696e20746865206572612073686f756c64206265206e6f6e2d7a6572,
                    mem[205 len 23]
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xd6db3bf0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6541646420546f74616c5374616b652064617461206f6e6c792061667465722076616c696461746f72206c6973742069732066726f7a65,
                    mem[219 len 9]
    totalStake[arg1] = arg2
}

function sub_e5321861(?) payable {
    require calldata.size - 4 >= 128
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[198 len 30]
    if not arg4:
        revert with 0, 'Amount should be non-zero'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f45706f63682073686f756c642062652067726561746572207468616e207a6572,
                    mem[197 len 31]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6c5374616b696e67204164647265737320486173682073686f756c64206265206e6f6e2d7a6572,
                    mem[203 len 25]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6456616c696461746f72204164647265737320486173682073686f756c64206265206e6f6e2d7a6572,
                    mem[205 len 23]
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0xd6db3bf0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6f416464205374616b652064617461206f6e6c792061667465722076616c696461746f72206c6973742069732066726f7a65,
                    mem[214 len 14]
    if not totalStake[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6e5374616b652073686f7564206265206164646564206f6e6c7920616674657220746f74616c5374616b6520697320757064617465,
                    mem[217 len 11]
    require ext_code.size(validatorRegistryAddress)
    staticcall validatorRegistryAddress.0x4f113d3 with:
            gas gas_remaining wei
           args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6f5374616b652064656c65676174656420746f206f6e6c792077686974656c69737465642076616c696461746f722063616e2062652061646465,
                    mem[222 len 6]
    if arg4 + sub_2a55012f[arg1] < sub_2a55012f[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_2a55012f[arg1] += arg4
    if arg4 + sub_2a55012f[arg1] > totalStake[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x655374616b652073686f756c6420626520726577617264656420666f7220746f6b656e73206c657373207468616e206f7220657175616c20746f2074686520746f7461,
                    mem[231 len 29]
    if not sub_84449a9d:
        if not totalStake[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalStake[arg1]) + sub_7b7b7554[arg2] < sub_7b7b7554[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        sub_7b7b7554[arg2] += 0 / totalStake[arg1]
    else:
        if arg4 * sub_84449a9d / sub_84449a9d != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalStake[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if (arg4 * sub_84449a9d / totalStake[arg1]) + sub_7b7b7554[arg2] < sub_7b7b7554[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        sub_7b7b7554[arg2] += arg4 * sub_84449a9d / totalStake[arg1]
    emit 0x92f6e769: arg4, arg1, arg2, arg3
}

function sub_e032c363(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 
                    32,
                    34,
                    0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263,
                    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 294 len 30]
    if arg2.length != arg4.length:
        revert with 0, 'Arity mismatch'
    if arg2.length != arg3.length:
        revert with 0, 'Arity mismatch'
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _88 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _90 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _92 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        if not stor0[msg.sender]:
            revert with 0, 32, 34, 0x774f6e6c7920736f757263652063616e2061646420616e6f7468657220736f757263, mem[mem[64] + 102 len 30]
        if not mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            revert with 0, 'Amount should be non-zero'
        if not arg1:
            revert with 0, 32, 33, 0x6f45706f63682073686f756c642062652067726561746572207468616e207a6572, mem[mem[64] + 101 len 31]
        if not mem[(32 * idx) + 128]:
            revert with 0, 32, 39, 0x6c5374616b696e67204164647265737320486173682073686f756c64206265206e6f6e2d7a6572, mem[mem[64] + 107 len 25]
        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
            revert with 0, 
                        32,
                        41,
                        0x6456616c696461746f72204164647265737320486173682073686f756c64206265206e6f6e2d7a6572,
                        mem[mem[64] + 109 len 23]
        require ext_code.size(validatorRegistryAddress)
        staticcall validatorRegistryAddress.0xd6db3bf0 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        50,
                        0x6f416464205374616b652064617461206f6e6c792061667465722076616c696461746f72206c6973742069732066726f7a65,
                        mem[mem[64] + 118 len 14]
        if not totalStake[arg1]:
            revert with 0, 
                        32,
                        53,
                        0x6e5374616b652073686f7564206265206164646564206f6e6c7920616674657220746f74616c5374616b6520697320757064617465,
                        mem[mem[64] + 121 len 11]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = _90
        require ext_code.size(validatorRegistryAddress)
        staticcall validatorRegistryAddress.0x4f113d3 with:
                gas gas_remaining wei
               args arg1, _90
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        58,
                        0x6f5374616b652064656c65676174656420746f206f6e6c792077686974656c69737465642076616c696461746f722063616e2062652061646465,
                        mem[mem[64] + 126 len 6]
        if _92 + sub_2a55012f[arg1] < sub_2a55012f[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        sub_2a55012f[arg1] += _92
        if _92 + sub_2a55012f[arg1] > totalStake[arg1]:
            revert with 0, 
                        32,
                        67,
                        0x655374616b652073686f756c6420626520726577617264656420666f7220746f6b656e73206c657373207468616e206f7220657175616c20746f2074686520746f7461,
                        mem[mem[64] + 135 len 29]
        mem[0] = arg1
        mem[32] = 2
        if not sub_84449a9d:
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 26
            mem[_129 + 32] = 'SafeMath: division by zero'
            if totalStake[arg1]:
                if (0 / totalStake[arg1]) + sub_7b7b7554[_88] < sub_7b7b7554[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = _88
                mem[32] = 4
                sub_7b7b7554[_88] += 0 / totalStake[arg1]
                mem[mem[64]] = _92
                emit 0x92f6e769: _92, arg1, _88, _90
                idx = idx + 1
                continue 
            _130 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _130 + 68] = mem[idx + _129 + 32]
                idx = idx + 32
                continue 
            mem[_130 + 68] = mem[_130 + 74 len 26]
            revert with memory
              from mem[64]
               len _130 + -mem[64] + 100
        if _92 * sub_84449a9d / sub_84449a9d != _92:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _133 = mem[64]
        mem[64] = mem[64] + 64
        mem[_133] = 26
        mem[_133 + 32] = 'SafeMath: division by zero'
        if totalStake[arg1]:
            if (_92 * sub_84449a9d / totalStake[arg1]) + sub_7b7b7554[_88] < sub_7b7b7554[_88]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = _88
            mem[32] = 4
            sub_7b7b7554[_88] += _92 * sub_84449a9d / totalStake[arg1]
            mem[mem[64]] = _92
            emit 0x92f6e769: _92, arg1, _88, _90
            idx = idx + 1
            continue 
        _134 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _134 + 68] = mem[idx + _133 + 32]
            idx = idx + 32
            continue 
        mem[_134 + 68] = mem[_134 + 74 len 26]
        revert with memory
          from mem[64]
           len _134 + -mem[64] + 100
}



}
