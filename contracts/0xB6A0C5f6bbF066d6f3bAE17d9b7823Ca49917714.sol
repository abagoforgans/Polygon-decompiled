contract main {




// =====================  Runtime code  =====================


#
#  - sub_ec3ad635(?)
#
const sub_0fecc3c4(?) = 600000 * 10^18

const sub_31634c2a(?) = (75 * 10^17 * 24 * 3600)

const sub_40e8783b(?) = 1140000 * 10^18


address govAddress;
address sub_14eaf33cAddress;
address sub_ebe25402Address;
address sub_c076c99cAddress;
address sub_bea08b10Address;
address sub_99b18643Address;
address sub_0606eb3eAddress;
address sub_8c03f508Address;
address sub_6e94bdcaAddress;
address sub_8d6d69c6Address;
address sub_63e99f62Address;
address sub_a307f845Address;
address sub_40c47440Address;
address sub_6dcfdb67Address;

function sub_0606eb3e(?) payable {
    return sub_0606eb3eAddress
}

function gov() payable {
    return govAddress
}

function sub_14eaf33c(?) payable {
    return sub_14eaf33cAddress
}

function sub_40c47440(?) payable {
    return sub_40c47440Address
}

function sub_63e99f62(?) payable {
    return sub_63e99f62Address
}

function sub_6dcfdb67(?) payable {
    return sub_6dcfdb67Address
}

function sub_6e94bdca(?) payable {
    return sub_6e94bdcaAddress
}

function sub_8c03f508(?) payable {
    return sub_8c03f508Address
}

function sub_8d6d69c6(?) payable {
    return sub_8d6d69c6Address
}

function sub_99b18643(?) payable {
    return sub_99b18643Address
}

function sub_a307f845(?) payable {
    return sub_a307f845Address
}

function sub_bea08b10(?) payable {
    return sub_bea08b10Address
}

function sub_c076c99c(?) payable {
    return sub_c076c99cAddress
}

function sub_ebe25402(?) payable {
    return sub_ebe25402Address
}

function _fallback() payable {
    revert
}

function sub_0dadd6f7(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}

function sub_3ec3dc1e(?) payable {
    require ext_code.size(sub_c076c99cAddress)
    staticcall sub_c076c99cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[50 len 14]
}

function sub_54d1b272(?) payable {
    require ext_code.size(sub_8d6d69c6Address)
    staticcall sub_8d6d69c6Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[50 len 14]
}

function sub_7f809608(?) payable {
    require ext_code.size(sub_bea08b10Address)
    staticcall sub_bea08b10Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}

function sub_8d0dd757(?) payable {
    require ext_code.size(sub_63e99f62Address)
    staticcall sub_63e99f62Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}

function sub_c9a9a3d8(?) payable {
    require ext_code.size(sub_6e94bdcaAddress)
    staticcall sub_6e94bdcaAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[50 len 14]
}

function sub_a50b3220(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[0]))
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
}

function sub_f4258ccc(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]))
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    if 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
}

function sub_9da67708(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 12:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]))
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    if 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 12:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
}

function sub_61ecf491(?) payable {
    require ext_code.size(sub_8d6d69c6Address)
    staticcall sub_8d6d69c6Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        require ext_code.size(sub_8d6d69c6Address)
        staticcall sub_8d6d69c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_40c47440Address)
        staticcall sub_40c47440Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_8d6d69c6Address)
    staticcall sub_8d6d69c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_40c47440Address)
    staticcall sub_40c47440Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_e5fbaed2(?) payable {
    require ext_code.size(sub_8d6d69c6Address)
    staticcall sub_8d6d69c6Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        require ext_code.size(sub_8d6d69c6Address)
        staticcall sub_8d6d69c6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_40c47440Address)
        staticcall sub_40c47440Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (600000000000 * 10^18 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_8d6d69c6Address)
    staticcall sub_8d6d69c6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_40c47440Address)
    staticcall sub_40c47440Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (600000000000 * 10^18 / ext_call.return_data[0] * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_4fade917(?) payable {
    require ext_code.size(sub_63e99f62Address)
    staticcall sub_63e99f62Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        require ext_code.size(sub_63e99f62Address)
        staticcall sub_63e99f62Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_6dcfdb67Address)
        staticcall sub_6dcfdb67Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_63e99f62Address)
        staticcall sub_63e99f62Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_6dcfdb67Address)
        staticcall sub_6dcfdb67Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_63e99f62Address)
    staticcall sub_63e99f62Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_6dcfdb67Address)
    staticcall sub_6dcfdb67Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] * 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_bf79951f(?) payable {
    require ext_code.size(sub_6e94bdcaAddress)
    staticcall sub_6e94bdcaAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        require ext_code.size(sub_6e94bdcaAddress)
        staticcall sub_6e94bdcaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_a307f845Address)
        staticcall sub_a307f845Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_6e94bdcaAddress)
        staticcall sub_6e94bdcaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_a307f845Address)
        staticcall sub_a307f845Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / 2 * Mask(112, 0, ext_call.return_data[32]) != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_6e94bdcaAddress)
    staticcall sub_6e94bdcaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_a307f845Address)
    staticcall sub_a307f845Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] * 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_9505c70f(?) payable {
    require ext_code.size(sub_63e99f62Address)
    staticcall sub_63e99f62Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        require ext_code.size(sub_63e99f62Address)
        staticcall sub_63e99f62Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_6dcfdb67Address)
        staticcall sub_6dcfdb67Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (1140000000000 * 10^18 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_63e99f62Address)
        staticcall sub_63e99f62Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_6dcfdb67Address)
        staticcall sub_6dcfdb67Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (1140000000000 * 10^18 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_63e99f62Address)
    staticcall sub_63e99f62Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_6dcfdb67Address)
    staticcall sub_6dcfdb67Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (1140000000000 * 10^18 / ext_call.return_data[0] * 10^12 * 2 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_cd52f642(?) payable {
    require ext_code.size(sub_6e94bdcaAddress)
    staticcall sub_6e94bdcaAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        require ext_code.size(sub_6e94bdcaAddress)
        staticcall sub_6e94bdcaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_a307f845Address)
        staticcall sub_a307f845Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (7500000 * 10^18 * 24 * 3600 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 2 * Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_6e94bdcaAddress)
        staticcall sub_6e94bdcaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_a307f845Address)
        staticcall sub_a307f845Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (7500000 * 10^18 * 24 * 3600 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / 2 * Mask(112, 0, ext_call.return_data[32]) != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_6e94bdcaAddress)
    staticcall sub_6e94bdcaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_a307f845Address)
    staticcall sub_a307f845Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (7500000 * 10^18 * 24 * 3600 / ext_call.return_data[0] * 10^9 * 2 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_353b88a6(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_99b18643Address)
    staticcall sub_99b18643Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_5acde65d(?) payable {
    require ext_code.size(sub_bea08b10Address)
    staticcall sub_bea08b10Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_bea08b10Address)
    staticcall sub_bea08b10Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_8c03f508Address)
    staticcall sub_8c03f508Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_d728bdc7(?) payable {
    require ext_code.size(sub_c076c99cAddress)
    staticcall sub_c076c99cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_c076c99cAddress)
    staticcall sub_c076c99cAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_0606eb3eAddress)
    staticcall sub_0606eb3eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_2c753df8(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_ebe25402Address)
                    staticcall sub_ebe25402Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_99b18643Address)
                    staticcall sub_99b18643Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_ebe25402Address)
                    staticcall sub_ebe25402Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_99b18643Address)
                    staticcall sub_99b18643Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_ebe25402Address)
                    staticcall sub_ebe25402Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_99b18643Address)
                    staticcall sub_99b18643Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_ebe25402Address)
                    staticcall sub_ebe25402Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_99b18643Address)
                    staticcall sub_99b18643Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_ebe25402Address)
                staticcall sub_ebe25402Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_99b18643Address)
                staticcall sub_99b18643Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_99b18643Address)
            staticcall sub_99b18643Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_99b18643Address)
        staticcall sub_99b18643Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_99b18643Address)
    staticcall sub_99b18643Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_eab2322b(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_bea08b10Address)
                    staticcall sub_bea08b10Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_8c03f508Address)
                    staticcall sub_8c03f508Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_bea08b10Address)
                    staticcall sub_bea08b10Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_8c03f508Address)
                    staticcall sub_8c03f508Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_bea08b10Address)
                    staticcall sub_bea08b10Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_8c03f508Address)
                    staticcall sub_8c03f508Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(sub_bea08b10Address)
                    staticcall sub_bea08b10Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_8c03f508Address)
                    staticcall sub_8c03f508Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 12:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (6000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(sub_bea08b10Address)
                staticcall sub_bea08b10Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_8c03f508Address)
                staticcall sub_8c03f508Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 12:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_bea08b10Address)
    staticcall sub_bea08b10Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_bea08b10Address)
            staticcall sub_bea08b10Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_8c03f508Address)
            staticcall sub_8c03f508Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
        if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_bea08b10Address)
        staticcall sub_bea08b10Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_8c03f508Address)
        staticcall sub_8c03f508Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    require ext_code.size(sub_bea08b10Address)
    staticcall sub_bea08b10Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_8c03f508Address)
    staticcall sub_8c03f508Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        if 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    if 6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 6000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (6000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_a8edd269(?) payable {
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[32]):
                    require ext_code.size(sub_c076c99cAddress)
                    staticcall sub_c076c99cAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_0606eb3eAddress)
                    staticcall sub_0606eb3eAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                    require ext_code.size(sub_c076c99cAddress)
                    staticcall sub_c076c99cAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_0606eb3eAddress)
                    staticcall sub_0606eb3eAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_ebe25402Address)
            staticcall sub_ebe25402Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[50 len 14]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, ext_call.return_data[32]):
                    require ext_code.size(sub_c076c99cAddress)
                    staticcall sub_c076c99cAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_0606eb3eAddress)
                    staticcall sub_0606eb3eAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                    require ext_code.size(sub_c076c99cAddress)
                    staticcall sub_c076c99cAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_0606eb3eAddress)
                    staticcall sub_0606eb3eAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
            if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            if 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 500 * 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_ebe25402Address)
        staticcall sub_ebe25402Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(sub_c076c99cAddress)
                staticcall sub_c076c99cAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(sub_0606eb3eAddress)
                staticcall sub_0606eb3eAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 500 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(sub_c076c99cAddress)
    staticcall sub_c076c99cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ebe25402Address)
    staticcall sub_ebe25402Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            require ext_code.size(sub_c076c99cAddress)
            staticcall sub_c076c99cAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(sub_0606eb3eAddress)
            staticcall sub_0606eb3eAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 0 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 10^6 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
        require ext_code.size(sub_c076c99cAddress)
        staticcall sub_c076c99cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_0606eb3eAddress)
        staticcall sub_0606eb3eAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0])
        if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 0 / ext_call.return_data[0])
    if 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    require ext_code.size(sub_c076c99cAddress)
    staticcall sub_c076c99cAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_0606eb3eAddress)
    staticcall sub_0606eb3eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        if 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] / 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 3000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 10^6:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (3000000000 * 10^18 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * 2 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
}



}
