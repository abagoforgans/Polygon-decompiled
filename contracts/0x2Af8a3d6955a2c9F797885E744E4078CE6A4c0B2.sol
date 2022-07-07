contract main {




// =====================  Runtime code  =====================


uint256 get;
array of uint256 s;

function num() payable {
    return get
}

function get() payable {
    return get
}

function s() payable {
    return s[0 len s.length]
}

function _fallback() payable {
    revert
}

function set(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    get = arg1
}

function setString(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length:
        s[] = Array(len=arg1.length, data=arg1[all])
    else:
        s.length = 0
        idx = 0
        while s.length + 31 / 32 > idx:
            s[idx] = 0
            idx = idx + 1
            continue 
}



}
