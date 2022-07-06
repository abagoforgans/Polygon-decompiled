contract main {




// =====================  Runtime code  =====================


const sub_09d59fec(?) = 0x57dd1bb5c4806a29b9000bb9fc5c954e20d3a0efbd35f06d266719982d19fa2b

const sub_49b9def9(?) = 0x7911b549663a2a6ad6da9918e7191eab4e1054a9de8f1fafc89811ccfdb6c5f0

const sub_64d2516c(?) = 0xcb3f97266ce485869e6010a94e677c9b591964def7f8eba7a041ceb3fadbc076


mapping of uint256 sub_cc718f76;

function sub_cc718f76(?) payable {
    require calldata.size - 4 >= 32
    return sub_cc718f76[arg1]
}

function _fallback() payable {
    revert
}

function sub_1a725ec3(?) payable {
    require calldata.size - 4 >= 64
    sub_cc718f76[arg1] = arg2
}

function stringToBytes(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) - 1
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}



}
