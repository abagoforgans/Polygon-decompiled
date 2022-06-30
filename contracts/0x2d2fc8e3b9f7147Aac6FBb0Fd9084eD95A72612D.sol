contract main {




// =====================  Runtime code  =====================


#
#  - redeemStream(uint256 arg1)
#  - confirmUpdate(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
address beaconContractAddress;
mapping of struct stream;
uint256 stor2;
mapping of uint8 stor3;

function BeaconContractAddress() payable {
    return beaconContractAddress
}

function getUpdate(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stream[arg1].field_0:
        revert with 0, 'stream doesn't exist'
    return bool(stor3[arg1][address(arg2)])
}

function getStream(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stream[arg1].field_0:
        revert with 0, 'stream doesn't exist'
    return stream[arg1].field_0, 
           stream[arg1].field_256,
           stream[arg1].field_512,
           stream[arg1].field_1792,
           stream[arg1].field_768,
           stream[arg1].field_1024,
           stream[arg1].field_1280,
           stream[arg1].field_1536
}

function _fallback() payable {
    revert
}

function setBeaconContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    beaconContractAddress = arg1
}

function generateRandomNumber() payable {
    require ext_code.size(beaconContractAddress)
    staticcall beaconContractAddress.0xf4bebd7a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
}

function revokeUpdate(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if bool(stor3[arg1][address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe6d73672e73656e64657220686173206e6f7420636f6e6669726d656420746865207570646174,
                    mem[203 len 25]
    emit 0x652aa7df: address(arg2), arg3, arg4, arg5, arg1, msg.sender
    stor3[arg1][address(msg.sender)] = 0
}

function createStream(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x77746f6b656e20636f6e74726163742061646472657373206e6565647320746f2062652070726f76696465,
                    mem[207 len 21]
    if arg4 < block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x6b74686520737461727420626c6f636b206e6565647320746f20626520686967686572207468616e207468652063757272656e7420626c6f636b206e756d6265
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x657468652073746f7020626c6f636b206e6565647320746f20626520686967686572207468616e2074686520737461727420626c6f63,
                    mem[218 len 10]
    if arg5 - arg4 < arg7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x6474686520626c6f636b20646966666572656e6365206e6565647320746f20626520686967686572207468616e20746865207061796d656e7420696e7465727661,
                    mem[229 len 31]
    if not arg7:
        revert with 0, 'SafeMath: modulo by zero'
    require arg7
    if arg5 - arg4 % arg7:
        revert with 0, 
                    32,
                    67,
                    0x6c74686520626c6f636b20646966666572656e6365206e6565647320746f2062652061206d756c7469706c65206f6620746865207061796d656e7420696e7465727661,
                    mem[295 len 29]
    if arg4 > arg5:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg7 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg7
    if not arg5 - arg4 / arg7:
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x86ed7c7f7783153896f77b7092928051de38264, 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 
                        32,
                        46,
                        0x6e636f6e7472616374206e6f7420616c6c6f77656420746f207472616e7366657220656e6f75676820746f6b656e,
                        mem[402 len 18]
        stream[stor2].field_0 = arg1
        stream[stor2].field_256 = arg2
        stream[stor2].field_512 = arg3
        stream[stor2].field_768 = arg4
        stream[stor2].field_1024 = arg5
        stream[stor2].field_1280 = arg6
        stream[stor2].field_1536 = arg7
        stream[stor2].field_1792 = 0
        emit 0xb3ec17fd: address(arg3), arg4, arg5, arg6, arg7, 0, stor2, arg1, arg2
        require ext_code.size(beaconContractAddress)
        staticcall beaconContractAddress.0xf4bebd7a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if block.number > ext_call.return_data[32]:
            if stor2 + 1 < stor2:
                revert with 0, 'SafeMath: addition overflow'
            stor2++
        require ext_code.size(arg3)
        call arg3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 0
    else:
        require arg5 - arg4 / arg7
        if arg5 - arg4 / arg7 * arg6 / arg5 - arg4 / arg7 != arg6:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x86ed7c7f7783153896f77b7092928051de38264, 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5 - arg4 / arg7 * arg6:
            revert with 0, 
                        32,
                        46,
                        0x6e636f6e7472616374206e6f7420616c6c6f77656420746f207472616e7366657220656e6f75676820746f6b656e,
                        mem[402 len 18]
        stream[stor2].field_0 = arg1
        stream[stor2].field_256 = arg2
        stream[stor2].field_512 = arg3
        stream[stor2].field_768 = arg4
        stream[stor2].field_1024 = arg5
        stream[stor2].field_1280 = arg6
        stream[stor2].field_1536 = arg7
        stream[stor2].field_1792 = arg5 - arg4 / arg7 * arg6
        emit 0xb3ec17fd: address(arg3), arg4, arg5, arg6, arg7, arg5 - arg4 / arg7 * arg6, stor2, arg1, arg2
        require ext_code.size(beaconContractAddress)
        staticcall beaconContractAddress.0xf4bebd7a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if block.number > ext_call.return_data[32]:
            if stor2 + 1 < stor2:
                revert with 0, 'SafeMath: addition overflow'
            stor2++
        require ext_code.size(arg3)
        call arg3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg5 - arg4 / arg7 * arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'initial deposit failed'
}

function balanceOf(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stream[arg1].field_0:
        revert with 0, 'stream doesn't exist'
    if stream[arg1].field_768 > stream[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    if stream[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stream[arg1].field_1536
    if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
        if stream[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stream[arg1].field_1536
        if block.number <= stream[arg1].field_768:
            if not 0 / stream[arg1].field_1536:
                if not stream[arg1].field_1792:
                    if arg2 == stream[arg1].field_256:
                        return 0
                    if arg2 != stream[arg1].field_0:
                        return 0
                    if 0 > stream[arg1].field_1792:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return stream[arg1].field_1792
                if stream[arg1].field_1792 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stream[arg1].field_1792 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 == stream[arg1].field_256:
                    return stream[arg1].field_1792
                if arg2 == stream[arg1].field_0:
                    if stream[arg1].field_1792 > stream[arg1].field_1792:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require 0 / stream[arg1].field_1536
            if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 / 0 / stream[arg1].field_1536 != stream[arg1].field_1280:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
            if not stream[arg1].field_1792:
                if arg2 == stream[arg1].field_256:
                    return (0 / stream[arg1].field_1536 * stream[arg1].field_1280)
                if arg2 != stream[arg1].field_0:
                    return 0
                if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stream[arg1].field_1792 - (0 / stream[arg1].field_1536 * stream[arg1].field_1280))
            if stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -stream[arg1].field_1792 > 0 / stream[arg1].field_1536 * stream[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 == stream[arg1].field_256:
                return ((0 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
            if arg2 != stream[arg1].field_0:
                return 0
            if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 0 / stream[arg1].field_1536 * stream[arg1].field_1280)
        if block.number > stream[arg1].field_1024:
            if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
                if not stream[arg1].field_1792:
                    if arg2 == stream[arg1].field_256:
                        return 0
                    if arg2 != stream[arg1].field_0:
                        return 0
                    if 0 > stream[arg1].field_1792:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return stream[arg1].field_1792
                if stream[arg1].field_1792 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stream[arg1].field_1792 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 == stream[arg1].field_256:
                    return stream[arg1].field_1792
                if arg2 == stream[arg1].field_0:
                    if stream[arg1].field_1792 > stream[arg1].field_1792:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
            if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
            if not stream[arg1].field_1792:
                if arg2 == stream[arg1].field_256:
                    return (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
                if arg2 != stream[arg1].field_0:
                    return 0
                if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stream[arg1].field_1792 - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
            if stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 == stream[arg1].field_256:
                return ((stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
            if arg2 != stream[arg1].field_0:
                return 0
            if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
        if not block.number - stream[arg1].field_768 / stream[arg1].field_1536:
            if not stream[arg1].field_1792:
                if arg2 == stream[arg1].field_256:
                    return 0
                if arg2 != stream[arg1].field_0:
                    return 0
                if 0 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                return stream[arg1].field_1792
            if stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 == stream[arg1].field_256:
                return stream[arg1].field_1792
            if arg2 == stream[arg1].field_0:
                if stream[arg1].field_1792 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require block.number - stream[arg1].field_768 / stream[arg1].field_1536
        if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / block.number - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
        if not stream[arg1].field_1792:
            if arg2 == stream[arg1].field_256:
                return (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
            if arg2 != stream[arg1].field_0:
                return 0
            if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stream[arg1].field_1792 - (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
        if stream[arg1].field_1792 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -stream[arg1].field_1792 > block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 == stream[arg1].field_256:
            return ((block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
        if arg2 != stream[arg1].field_0:
            return 0
        if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-1 * block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
    require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
    if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1605 len 31]
    if stream[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stream[arg1].field_1536
    if block.number <= stream[arg1].field_768:
        if not 0 / stream[arg1].field_1536:
            if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                if arg2 == stream[arg1].field_256:
                    return 0
                if arg2 != stream[arg1].field_0:
                    return 0
                if 0 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                return stream[arg1].field_1792
            if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 == stream[arg1].field_256:
                return ((-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
            if arg2 != stream[arg1].field_0:
                return 0
            if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
        require 0 / stream[arg1].field_1536
        if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 / 0 / stream[arg1].field_1536 != stream[arg1].field_1280:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
        if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            if arg2 == stream[arg1].field_256:
                return (0 / stream[arg1].field_1536 * stream[arg1].field_1280)
            if arg2 != stream[arg1].field_0:
                return 0
            if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stream[arg1].field_1792 - (0 / stream[arg1].field_1536 * stream[arg1].field_1280))
        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 == stream[arg1].field_256:
            return ((0 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
        if arg2 != stream[arg1].field_0:
            return 0
        if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((-1 * 0 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
    if block.number > stream[arg1].field_1024:
        if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
            if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                if arg2 == stream[arg1].field_256:
                    return 0
                if arg2 != stream[arg1].field_0:
                    return 0
                if 0 > stream[arg1].field_1792:
                    revert with 0, 'SafeMath: subtraction overflow'
                return stream[arg1].field_1792
            if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 == stream[arg1].field_256:
                return ((-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
            if arg2 != stream[arg1].field_0:
                return 0
            if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
        require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
        if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
        if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            if arg2 == stream[arg1].field_256:
                return (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
            if arg2 != stream[arg1].field_0:
                return 0
            if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stream[arg1].field_1792 - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 == stream[arg1].field_256:
            return ((stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
        if arg2 != stream[arg1].field_0:
            return 0
        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
    if not block.number - stream[arg1].field_768 / stream[arg1].field_1536:
        if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            if arg2 == stream[arg1].field_256:
                return 0
            if arg2 != stream[arg1].field_0:
                return 0
            if 0 > stream[arg1].field_1792:
                revert with 0, 'SafeMath: subtraction overflow'
            return stream[arg1].field_1792
        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 == stream[arg1].field_256:
            return ((-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
        if arg2 != stream[arg1].field_0:
            return 0
        if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
    require block.number - stream[arg1].field_768 / stream[arg1].field_1536
    if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / block.number - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2309 len 31]
    if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
        if arg2 == stream[arg1].field_256:
            return (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280)
        if arg2 != stream[arg1].field_0:
            return 0
        if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stream[arg1].field_1792 - (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
    if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 == stream[arg1].field_256:
        return ((block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792)
    if arg2 != stream[arg1].field_0:
        return 0
    if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((-1 * block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280))
}

function withdrawFromStream(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stream[arg1].field_0:
        revert with 0, 'stream doesn't exist'
    if stream[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6e6f6e6c79207468652073747265616d20726563697069656e7420697320616c6c6f77656420746f20706572666f726d207468697320616374696f,
                    mem[223 len 5]
    if not stream[arg1].field_0:
        revert with 0, 'stream doesn't exist'
    if stream[arg1].field_768 > stream[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    if stream[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stream[arg1].field_1536
    if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
        if stream[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stream[arg1].field_1536
        if block.number <= stream[arg1].field_768:
            if not 0 / stream[arg1].field_1536:
                if not stream[arg1].field_1792:
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if 0 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if 0 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                else:
                    if stream[arg1].field_1792 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -stream[arg1].field_1792 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if stream[arg1].field_1792 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 == stream[arg1].field_0:
                            if stream[arg1].field_1792 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < arg2:
                            revert with 0, 'not enough funds'
            else:
                require 0 / stream[arg1].field_1536
                if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 / 0 / stream[arg1].field_1536 != stream[arg1].field_1280:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                if not stream[arg1].field_1792:
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stream[arg1].field_1792 - (0 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                revert with 0, 'not enough funds'
                else:
                    if stream[arg1].field_1792 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -stream[arg1].field_1792 > 0 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -1 * 0 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
        else:
            if block.number > stream[arg1].field_1024:
                if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
                    if not stream[arg1].field_1792:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if 0 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 == stream[arg1].field_0:
                                if stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                else:
                    require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
                    if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                    if not stream[arg1].field_1792:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                    revert with 0, 'not enough funds'
            else:
                if not block.number - stream[arg1].field_768 / stream[arg1].field_1536:
                    if not stream[arg1].field_1792:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if 0 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 == stream[arg1].field_0:
                                if stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                else:
                    require block.number - stream[arg1].field_768 / stream[arg1].field_1536
                    if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / block.number - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                    if not stream[arg1].field_1792:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 - (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -stream[arg1].field_1792 > block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -1 * block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                    revert with 0, 'not enough funds'
    else:
        require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
        if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2245 len 31]
        if stream[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stream[arg1].field_1536
        if block.number <= stream[arg1].field_768:
            if not 0 / stream[arg1].field_1536:
                if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if 0 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if 0 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                else:
                    if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
            else:
                require 0 / stream[arg1].field_1536
                if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 / 0 / stream[arg1].field_1536 != stream[arg1].field_1280:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if 0 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stream[arg1].field_1792 - (0 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                revert with 0, 'not enough funds'
                else:
                    if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stream[arg1].field_256 == stream[arg1].field_256:
                        if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                            revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_256 != stream[arg1].field_0:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if (0 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (-1 * 0 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                revert with 0, 'not enough funds'
        else:
            if block.number > stream[arg1].field_1024:
                if not stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536:
                    if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if 0 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                    revert with 0, 'not enough funds'
                else:
                    require stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536
                    if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                    if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
            else:
                if not block.number - stream[arg1].field_768 / stream[arg1].field_1536:
                    if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if 0 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if 0 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (-1 * stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                    revert with 0, 'not enough funds'
                else:
                    require block.number - stream[arg1].field_768 / stream[arg1].field_1536
                    if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 / block.number - stream[arg1].field_768 / stream[arg1].field_1536 != stream[arg1].field_1280:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[2949 len 31]
                    if stream[arg1].field_1792 == stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stream[arg1].field_1792 - (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
                    else:
                        if stream[arg1].field_1792 > stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - stream[arg1].field_1792 > block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stream[arg1].field_256 == stream[arg1].field_256:
                            if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 < arg2:
                                revert with 0, 'not enough funds'
                        else:
                            if stream[arg1].field_256 != stream[arg1].field_0:
                                if 0 < arg2:
                                    revert with 0, 'not enough funds'
                            else:
                                if (block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) - (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + stream[arg1].field_1792 > stream[arg1].field_1792:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (-1 * block.number - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) + (stream[arg1].field_1024 - stream[arg1].field_768 / stream[arg1].field_1536 * stream[arg1].field_1280) < arg2:
                                    revert with 0, 'not enough funds'
    if arg2 > stream[arg1].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    stream[arg1].field_1792 -= arg2
    emit WithdrawFromStream(arg2, arg1, stream[arg1].field_256);
    if not stream[arg1].field_1792:
        stream[arg1].field_0 = 0
        stream[arg1].field_256 = 0
        stream[arg1].field_512 = 0
        stream[arg1].field_768 = 0
        stream[arg1].field_1024 = 0
        stream[arg1].field_1280 = 0
        stream[arg1].field_1536 = 0
        stream[arg1].field_1792 = 0
        stor3[arg1][stor1[arg1].field_0] = 0
        stor3[arg1][stor1[arg1].field_256] = 0
    if arg2 > 0:
        require ext_code.size(stream[arg1].field_512)
        call stream[arg1].field_512.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stream[arg1].field_256, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'erc20 transfer failed'
}



}
