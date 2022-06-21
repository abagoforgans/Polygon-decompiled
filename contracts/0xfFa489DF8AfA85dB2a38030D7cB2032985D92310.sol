contract main {




// =====================  Runtime code  =====================


#
#  - sub_220fa717(?)
#  - verify(bytes arg1, bytes arg2, bytes arg3, bytes32 arg4)
#
function _fallback() payable {
    revert
}

function sub_e453d0f3(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not arg2.length:
        return sha3(arg1, arg3)
    require 0 < arg2.length
    mem[ceil32(arg2.length) + 160] = (2 * arg2.length) - 2
    if (2 * arg2.length) - 2:
        mem[ceil32(arg2.length) + 192 len (2 * arg2.length) - 2] = code.data[4748 len (2 * arg2.length) - 2]
    idx = 0
    while idx < (2 * arg2.length) - 2:
        require idx + 2 / 2 < arg2.length
        require idx < (2 * arg2.length) - 2
        mem[idx + ceil32(arg2.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + 224] = arg1
    mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + 256 len floor32((2 * arg2.length) - 2)] = mem[ceil32(arg2.length) + 192 len floor32((2 * arg2.length) - 2)]
    mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + floor32((2 * arg2.length) - 2) + 256] = 256^(-((2 * arg2.length) - 2 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + floor32((2 * arg2.length) - 2) + 256] or mem[ceil32(arg2.length) + floor32((2 * arg2.length) - 2) + 192] and !(256^(-((2 * arg2.length) - 2 % 32) + 32) - 1)
    mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + (2 * arg2.length) + 254] = arg3
    return sha3(arg1, mem[ceil32(arg2.length) + floor32((2 * arg2.length) + 29) + 256 len (2 * arg2.length) + 30])
}

function sub_0c0d286d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not arg1.length:
        return ''
    require 0 < arg1.length
    if (2 * arg1.length) - 2:
        mem[ceil32(arg1.length) + 192 len (2 * arg1.length) - 2] = code.data[4748 len (2 * arg1.length) - 2]
    idx = 0
    while idx < (2 * arg1.length) - 2:
        require idx + 2 / 2 < arg1.length
        require idx < (2 * arg1.length) - 2
        mem[idx + ceil32(arg1.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + floor32((2 * arg1.length) + 29) + 224] = (2 * arg1.length) - 2
    mem[ceil32(arg1.length) + floor32((2 * arg1.length) + 29) + 256 len floor32((2 * arg1.length) + 29)] = mem[ceil32(arg1.length) + 192 len floor32((2 * arg1.length) + 29)]
    if not (2 * arg1.length) - 2 % 32:
        return 32, mem[ceil32(arg1.length) + floor32((2 * arg1.length) + 29) + 224 len (2 * arg1.length) + 30]
    mem[floor32((2 * arg1.length) - 2) + ceil32(arg1.length) + floor32((2 * arg1.length) + 29) + 256] = mem[floor32((2 * arg1.length) - 2) + ceil32(arg1.length) + floor32((2 * arg1.length) + 29) + -((2 * arg1.length) - 2 % 32) + 288 len (2 * arg1.length) - 2 % 32]
    return Array(len=(2 * arg1.length) - 2, data=mem[ceil32(arg1.length) + 192 len floor32((2 * arg1.length) + 29)], mem[ceil32(arg1.length) + (2 * floor32((2 * arg1.length) + 29)) + 256 len floor32((2 * arg1.length) - 2) + -floor32((2 * arg1.length) + 29) + 32]), 
}



}
