contract main {




// =====================  Runtime code  =====================


const GENERIC_PARAMS = 32, 74, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, 0

const EIP712_DOMAIN_TYPE = 32, 82, 0x61454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374, mem[210 len 14] >> 400, 0


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 nonce;
mapping of uint8 stor113610640412262277512897818078847387263695401449139851741757246343495229364556544476191216270452879030960107830342754297526932853579201521467504474361665238557662413017466066971377591997596600198004;

function typeHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function domains(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function registerDomainSeparator(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    stor1[('name', 'stor6145', 113610640412262277512897818078847387263695401449139851741757246343495229364556544476191216270452879030960107830342754297526932853579201521467504474361665238557662413017466066971377591997596600198004)][sha3(arg1[all])][sha3(arg2[all])][chainid][this.address] = 1
    emit DomainRegistered(bytes32 arg1, bytes arg2):
                          32,
                          160,
                          sha3(0x61454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374),
                          sha3(arg1[all]),
                          sha3(arg2[all]),
                          chainid,
                          this.address,
                          sha3(sha3(0x61454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), chainid, this.address),
}

function registerRequestType(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if 0 == '(':
            revert with 0, 'invalid typename'
        if 0 == ')':
            revert with 0, 'invalid typename'
        idx = idx + 1
        continue 
    stor0[arg1[all]]['('][0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336][','][arg2[all]] = 1
    mem[arg1.length + arg2.length + 396 len floor32(arg1.length + arg2.length + 107)] = arg1[all], '(', 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, ',', arg2[all], Mask(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76, -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256, 32) >> -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256
    if floor32(arg1.length + arg2.length + 107) <= arg1.length + arg2.length + 76:
        emit RequestTypeRegistered(Array(len=arg1.length + arg2.length + 76, data=arg1[all], '(', 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, ',', arg2[all], Mask(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76, -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256, 32) >> -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256), sha3(arg1[all], '(', 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, ',', arg2[all]));
    else:
        mem[(2 * arg1.length) + (2 * arg2.length) + 472] = 0
        emit RequestTypeRegistered(Array(len=arg1.length + arg2.length + 76, data=Mask(8 * arg1.length + arg2.length + 76, -(8 * arg1.length + arg2.length + 76) + 256, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, ',', arg2[all], Mask(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76, -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256, 32) >> -(8 * floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76) + 256) << (8 * arg1.length + arg2.length + 76) - 256, mem[(2 * arg1.length) + (2 * arg2.length) + 472 len floor32(arg1.length + arg2.length + 107) + -arg1.length + -arg2.length - 76]), sha3(arg1[all], '(', 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174, mem[202 len 22] >> 336, ',', arg2[all]));
}

function sub_992d82c3(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == ('cd', 4)[1]
    require ('cd', 4)[2] == ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    if nonce[address(('cd', 4).length)] != ('cd', 4)[3]:
        revert with 0, 'nonce mismatch'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = ('cd', 100).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 100).length + 352] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 352] = ('cd', 132).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 384 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 384] = 0
    if not stor1[cd[36]]:
        revert with 0, 'unregistered domain separator'
    if not stor0[cd[68]]:
        revert with 0, 'unregistered request typehash'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 416] = address(('cd', 4).length)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 448] = address(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 480] = ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 512] = ('cd', 4)[2]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 544] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 576] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 384] = 192
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 640] = cd[68]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 672 len ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 416 len ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)])]
    if ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)]) <= Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)]:
        _106 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
        if ceil32(_106) > _106:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + _106 + 672] = 0
    else:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672] = 0
        _107 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
        if ceil32(_107) > _107:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + _107 + 672] = 0
    if Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 100).length + 384 len -('cd', 100).length + ceil32(('cd', 100).length)] != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_cdf5735a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == ('cd', 4)[1]
    require ('cd', 4)[2] == ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    if nonce[address(('cd', 4).length)] != ('cd', 4)[3]:
        revert with 0, 'nonce mismatch'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = ('cd', 100).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 100).length + 352] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 352] = ('cd', 132).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 384 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 384] = 0
    if not stor1[cd[36]]:
        revert with 0, 'unregistered domain separator'
    if not stor0[cd[68]]:
        revert with 0, 'unregistered request typehash'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 416] = address(('cd', 4).length)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 448] = address(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 480] = ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 512] = ('cd', 4)[2]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 544] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 576] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 384] = 192
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 640] = cd[68]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 672 len ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 416 len ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)])]
    if ceil32(Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)]) <= Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)]:
        _106 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
        if ceil32(_106) > _106:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + _106 + 672] = 0
    else:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672] = 0
        _107 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + 672 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
        if ceil32(_107) > _107:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + ('cd', 132).length + 416 len -('cd', 132).length + ceil32(('cd', 132).length)] + _107 + 672] = 0
    if Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 100).length + 384 len -('cd', 100).length + ceil32(('cd', 100).length)] != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 100).length) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_c45c2674(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == ('cd', 4)[1]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == ('cd', 4)[2]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288
    mem[288] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    mem[256] = 288
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 352 <= test266151307() and ceil32(('cd', 68).length) + 352 >= 320
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 352] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 384] = address(('cd', 4).length)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 416] = address(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 448] = ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 480] = ('cd', 4)[2]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 512] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 544] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 352] = 192
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 608] = cd[36]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 640 len ceil32(Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 384 len ceil32(Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)])]
    if ceil32(Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)]) <= Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)]:
        _46 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + 640 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
        if ceil32(_46) <= _46:
            mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640
            _78 = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640] = 32
            _84 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 672] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 704 len ceil32(_84)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 608 len ceil32(_84)]
            if ceil32(_84) > _84:
                mem[_78 + _84 + 64] = 0
            return memory
              from mem[64]
               len _78 + ceil32(_84) + -mem[64] + 64
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640] = 0
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640
        _82 = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 640] = 32
        _86 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 672] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _46 + 704 len ceil32(_86)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 608 len ceil32(_86)]
        if ceil32(_86) > _86:
            mem[_82 + _86 + 64] = 0
        return memory
          from mem[64]
           len _82 + ceil32(_86) + -mem[64] + 64
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + 640] = 0
    _47 = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + 640 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])])]
    if ceil32(_47) <= _47:
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640
        _80 = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640] = 32
        _85 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 672] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 704 len ceil32(_85)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 608 len ceil32(_85)]
        if ceil32(_85) > _85:
            mem[_80 + _85 + 64] = 0
        return memory
          from mem[64]
           len _80 + ceil32(_85) + -mem[64] + 64
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640] = 0
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640
    _83 = ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 640] = 32
    _87 = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 672] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 576]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)] + _47 + 704 len ceil32(_87)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 68).length) + 608 len ceil32(_87)]
    if ceil32(_87) > _87:
        mem[_83 + _87 + 64] = 0
    return memory
      from mem[64]
       len _83 + ceil32(_87) + -mem[64] + 64
}



}
