contract main {




// =====================  Runtime code  =====================


uint256 propertyId;
mapping of struct stor1;
uint256 bookingId;
mapping of struct bookings;

function bookingId() {
    return bookingId
}

function bookings(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bookings[arg1].field_0, bookings[arg1].field_256, bookings[arg1].field_512, address(bookings[arg1].field_768)
}

function propertyId() {
    return propertyId
}

function _fallback() payable {
    revert
}

function markPropertyAsInactive(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1[arg1].field_1024) != msg.sender:
        revert with 0, 'THIS IS NOT YOUR PROPERTY'
    uint8(stor1[arg1].field_512) = 0
}

function rentProperty(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(uint8(stor1[arg1].field_512)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe70726f706572747920776974682074686973204944206973206e6f74206163746976,
                    mem[199 len 29]
    idx = arg2
    while idx < arg3:
        require idx < stor1[arg1].field_1280
        mem[0] = sha3(arg1, 1) + 5
        if bool(stor((0.03125 / idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor1', 1))))[uint8(idx)]) == 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x6570726f7065727479206973206e6f7420617661696c61626c6520666f72207468652073656c65637465642064617465,
                        mem[212 len 16]
        idx = idx + 1
        continue 
    if (arg3 * stor1[arg1].field_768) - (arg2 * stor1[arg1].field_768) != msg.value:
        revert with 0, 'Sent insufficient funds'
    call address(stor1[arg1].field_1024) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bookings[stor2].field_0 = arg1
    bookings[stor2].field_256 = arg2
    bookings[stor2].field_512 = arg3
    address(bookings[stor2].field_768) = msg.sender
    idx = arg2
    while idx < arg3:
        require idx < stor1[arg1].field_1280
        mem[0] = sha3(arg1, 1) + 5
        stor[(0.03125 / idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0 = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor[(0.03125 / idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0
        idx = idx + 1
        continue 
    bookingId++
    emit 0x4f65de66: arg1, bookingId
}

function rentOutproperty(string arg1, string arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 544] = 365
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len 11680] = call.data[calldata.size len 11680]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512] = ceil32(arg1.length) + ceil32(arg2.length) + 544
    stor1[stor0][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1[stor0][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    uint8(stor1[stor0].field_512) = 1
    stor1[stor0].field_768 = arg3
    address(stor1[stor0].field_1024) = msg.sender
    stor1[stor0].field_1280 = 365
    s = 0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 576
    while ceil32(arg1.length) + ceil32(arg2.length) + 12256 > idx:
        stor1[stor0][5].field_0 = bool(mem[idx]) * 256^s or !(255 * 256^s) and stor1[stor0][5].field_0
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 365
    s = sha3(sha3(propertyId, 1) + 5)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (365 * None + 3 / 32)
    while stor1[stor0].field_1280 + 31 / 32 > idx:
        uint8(stor1[stor0][idx + 5].field_0) = 0
        idx = idx + 1
        continue 
    propertyId++
    emit 0x49b7a39e: propertyId
}

function properties(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 1
    mem[96] = stor1[arg1].length
    mem[0] = sha3(arg1, 1)
    mem[128] = stor1[arg1].field_0
    idx = 128
    s = 0
    while stor1[arg1].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 160
    mem[ceil32(stor1[arg1].length) + 128] = stor1[arg1][1].length
    mem[ceil32(stor1[arg1].length) + 160] = stor1[arg1][1].field_0
    idx = ceil32(stor1[arg1].length) + 160
    s = 0
    while ceil32(stor1[arg1].length) + stor1[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 224] = bool(uint8(stor1[arg1].field_512))
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 256] = stor1[arg1].field_768
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 288] = address(stor1[arg1].field_1024)
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 160] = 160
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 320] = stor1[arg1].length
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 352 len ceil32(stor1[arg1].length)] = mem[128 len ceil32(stor1[arg1].length)]
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 192] = stor1[arg1].length + 192
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 352] = stor1[arg1][1].length
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 384 len ceil32(stor1[arg1][1].length)] = mem[ceil32(stor1[arg1].length) + 160 len ceil32(stor1[arg1][1].length)]
    if not stor1[arg1][1].length % 32:
        return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][1].length) + 352 len stor1[arg1][1].length + stor1[arg1].length + -ceil32(stor1[arg1].length) + 32]), 
               stor1[arg1].length + 192,
               bool(uint8(stor1[arg1].field_512)),
               stor1[arg1].field_768,
               address(stor1[arg1].field_1024)
    mem[floor32(stor1[arg1][1].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + 384] = mem[floor32(stor1[arg1][1].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][1].length) + -stor1[arg1][1].length % 32 + 416 len stor1[arg1][1].length % 32]
    return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][1].length) + 352 len floor32(stor1[arg1][1].length) + stor1[arg1].length + -ceil32(stor1[arg1].length) + 64]), 
           stor1[arg1].length + 192,
           bool(uint8(stor1[arg1].field_512)),
           stor1[arg1].field_768,
           address(stor1[arg1].field_1024)
}



}
