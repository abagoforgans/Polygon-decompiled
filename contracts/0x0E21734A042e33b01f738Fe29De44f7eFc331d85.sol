contract main {




// =====================  Runtime code  =====================


uint256 test;

function test() payable {
    return test
}

function _fallback() payable {
    revert
}

function setTest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    test = arg1
}



}
